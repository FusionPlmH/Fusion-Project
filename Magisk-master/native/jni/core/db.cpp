#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>

#include <magisk.h>
#include <db.h>
#include <daemon.h>
#include <utils.h>

#define DB_VERSION 9

using namespace std;

static sqlite3 *mDB = nullptr;

int db_strings::getKeyIdx(string_view key) const {
	int idx = DB_STRING_NUM;
	for (int i = 0; i < DB_STRING_NUM; ++i) {
		if (key == DB_STRING_KEYS[i])
			idx = i;
	}
	return idx;
}

db_settings::db_settings() {
	// Default settings
	data[ROOT_ACCESS] = ROOT_ACCESS_APPS_AND_ADB;
	data[SU_MULTIUSER_MODE] = MULTIUSER_MODE_OWNER_ONLY;
	data[SU_MNT_NS] = NAMESPACE_MODE_REQUESTER;
	data[HIDE_CONFIG] = true;
}

int db_settings::getKeyIdx(string_view key) const {
	int idx = DB_SETTINGS_NUM;
	for (int i = 0; i < DB_SETTINGS_NUM; ++i) {
		if (key == DB_SETTING_KEYS[i])
			idx = i;
	}
	return idx;
}

static int ver_cb(void *ver, int, char **data, char **) {
	*((int *) ver) = parse_int(data[0]);
	return 0;
}

#define err_ret(e) if (e) return e;

static char *open_and_init_db(sqlite3 *&db) {
	int ret = sqlite3_open_v2(MAGISKDB, &db,
			SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE | SQLITE_OPEN_FULLMUTEX, nullptr);
	if (ret)
		return strdup(sqlite3_errmsg(db));
	int ver;
	bool upgrade = false;
	char *err;
	sqlite3_exec(db, "PRAGMA user_version", ver_cb, &ver, &err);
	err_ret(err);
	if (ver > DB_VERSION) {
		// Don't support downgrading database
		sqlite3_close(db);
		return nullptr;
	}
	if (ver < 3) {
		// Policies
		sqlite3_exec(db,
				"CREATE TABLE IF NOT EXISTS policies "
				"(uid INT, package_name TEXT, policy INT, until INT, "
				"logging INT, notification INT, PRIMARY KEY(uid))",
				nullptr, nullptr, &err);
		err_ret(err);
		// Logs
		sqlite3_exec(db,
				"CREATE TABLE IF NOT EXISTS logs "
				"(from_uid INT, package_name TEXT, app_name TEXT, from_pid INT, "
				"to_uid INT, action INT, time INT, command TEXT)",
				nullptr, nullptr, &err);
		err_ret(err);
		// Settings
		sqlite3_exec(db,
				"CREATE TABLE IF NOT EXISTS settings "
				"(key TEXT, value INT, PRIMARY KEY(key))",
				nullptr, nullptr, &err);
		err_ret(err);
		ver = 3;
		upgrade = true;
	}
	if (ver < 4) {
		// Strings
		sqlite3_exec(db,
				"CREATE TABLE IF NOT EXISTS strings "
				"(key TEXT, value TEXT, PRIMARY KEY(key))",
				nullptr, nullptr, &err);
		err_ret(err);
		ver = 4;
		upgrade = true;
	}
	if (ver < 5) {
		sqlite3_exec(db, "UPDATE policies SET uid=uid%100000", nullptr, nullptr, &err);
		err_ret(err);
		/* Directly jump to version 6 */
		ver = 6;
		upgrade = true;
	}
	if (ver < 7) {
		sqlite3_exec(db,
				"CREATE TABLE IF NOT EXISTS hidelist "
				"(package_name TEXT, process TEXT, PRIMARY KEY(package_name, process));",
				nullptr, nullptr, &err);
		err_ret(err);
		/* Directly jump to version 9 */
		ver = 9;
		upgrade = true;
	}
	if (ver < 8) {
		sqlite3_exec(db,
				"BEGIN TRANSACTION;"
				"ALTER TABLE hidelist RENAME TO hidelist_tmp;"
				"CREATE TABLE IF NOT EXISTS hidelist "
				"(package_name TEXT, process TEXT, PRIMARY KEY(package_name, process));"
				"INSERT INTO hidelist SELECT process as package_name, process FROM hidelist_tmp;"
				"DROP TABLE hidelist_tmp;"
				"COMMIT;",
				nullptr, nullptr, &err);
		err_ret(err);
		/* Directly jump to version 9 */
		ver = 9;
		upgrade = true;
	}
	if (ver < 9) {
		sqlite3_exec(db,
				"BEGIN TRANSACTION;"
				"ALTER TABLE hidelist RENAME TO hidelist_tmp;"
				"CREATE TABLE IF NOT EXISTS hidelist "
				"(package_name TEXT, process TEXT, PRIMARY KEY(package_name, process));"
				"INSERT INTO hidelist SELECT * FROM hidelist_tmp;"
				"DROP TABLE hidelist_tmp;"
				"COMMIT;",
				nullptr, nullptr, &err);
		err_ret(err);
		ver = 9;
		upgrade = true;
	}

	if (upgrade) {
		// Set version
		char query[32];
		sprintf(query, "PRAGMA user_version=%d", ver);
		sqlite3_exec(db, query, nullptr, nullptr, &err);
		err_ret(err);
	}
	return nullptr;
}

char *db_exec(const char *sql) {
	char *err;
	if (mDB == nullptr) {
		err = open_and_init_db(mDB);
		db_err_cmd(err,
			// Open fails, remove and reconstruct
			unlink(MAGISKDB);
			err = open_and_init_db(mDB);
			err_ret(err);
		);
	}
	if (mDB) {
		sqlite3_exec(mDB, sql, nullptr, nullptr, &err);
		return err;
	}
	return nullptr;
}

char *db_exec(const char *sql, const db_row_cb &fn) {
	char *err;
	if (mDB == nullptr) {
		err = open_and_init_db(mDB);
		db_err_cmd(err,
			// Open fails, remove and reconstruct
			unlink(MAGISKDB);
			err = open_and_init_db(mDB);
			err_ret(err);
		);
	}
	if (mDB) {
		sqlite3_exec(mDB, sql, [](void *cb, int col_num, char **data, char **col_name) -> int {
			auto &func = *reinterpret_cast<const db_row_cb*>(cb);
			db_row row;
			for (int i = 0; i < col_num; ++i)
				row[col_name[i]] = data[i];
			return func(row) ? 0 : 1;
		}, (void *) &fn, &err);
		return err;
	}
	return nullptr;
}

int get_db_settings(db_settings &cfg, int key) {
	char *err;
	auto settings_cb = [&](db_row &row) -> bool {
		cfg[row["key"]] = parse_int(row["value"]);
		LOGD("magiskdb: query %s=[%s]\n", row["key"].data(), row["value"].data());
		return true;
	};
	if (key >= 0) {
		char query[128];
		sprintf(query, "SELECT key, value FROM settings WHERE key='%s'", DB_SETTING_KEYS[key]);
		err = db_exec(query, settings_cb);
	} else {
		err = db_exec("SELECT key, value FROM settings", settings_cb);
	}
	db_err_cmd(err, return 1);
	return 0;
}

int get_db_strings(db_strings &str, int key) {
	char *err;
	auto string_cb = [&](db_row &row) -> bool {
		str[row["key"]] = row["value"];
		LOGD("magiskdb: query %s=[%s]\n", row["key"].data(), row["value"].data());
		return true;
	};
	if (key >= 0) {
		char query[128];
		sprintf(query, "SELECT key, value FROM strings WHERE key='%s'", DB_STRING_KEYS[key]);
		err = db_exec(query, string_cb);
	} else {
		err = db_exec("SELECT key, value FROM strings", string_cb);
	}
	db_err_cmd(err, return 1);
	return 0;
}

int get_uid_policy(su_access &su, int uid) {
	char query[256], *err;
	sprintf(query, "SELECT policy, logging, notification FROM policies "
			"WHERE uid=%d AND (until=0 OR until>%li)", uid, time(nullptr));
	err = db_exec(query, [&](db_row &row) -> bool {
		su.policy = (policy_t) parse_int(row["policy"]);
		su.log = parse_int(row["logging"]);
		su.notify = parse_int(row["notification"]);
		LOGD("magiskdb: query policy=[%d] log=[%d] notify=[%d]\n", su.policy, su.log, su.notify);
		return true;
	});
	db_err_cmd(err, return 1);
	return 0;
}

int validate_manager(string &alt_pkg, int userid, struct stat *st) {
	struct stat tmp_st;
	if (st == nullptr)
		st = &tmp_st;

	// Prefer DE storage
	char app_path[128];
	sprintf(app_path, "%s/%d/%s", APP_DATA_DIR, userid, alt_pkg.empty() ? "xxx" : alt_pkg.data());
	if (stat(app_path, st)) {
		// Check the official package name
		sprintf(app_path, "%s/%d/" JAVA_PACKAGE_NAME, APP_DATA_DIR, userid);
		if (stat(app_path, st)) {
			LOGE("su: cannot find manager");
			memset(st, 0, sizeof(*st));
			alt_pkg.clear();
			return 1;
		} else {
			// Switch to official package if exists
			alt_pkg = JAVA_PACKAGE_NAME;
		}
	}
	return 0;
}

void exec_sql(int client) {
	char *sql = read_string(client);
	char *err = db_exec(sql, [&](db_row &row) -> bool {
		string out;
		bool first = true;
		for (auto it : row) {
			if (first) first = false;
			else out += '|';
			out += it.first;
			out += '=';
			out += it.second;
		}
		write_int(client, out.length());
		xwrite(client, out.data(), out.length());
		return true;
	});
	free(sql);
	db_err_cmd(err,
		write_int(client, 0);
		return;
	);
	close(client);
}
