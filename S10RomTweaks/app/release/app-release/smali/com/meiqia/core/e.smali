.class Lcom/meiqia/core/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "meiqia.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/meiqia/core/e;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS mq_message(id_ INTEGER PRIMARY KEY AUTOINCREMENT,id INTEGER,agent_id INTEGER,content TEXT,content_type TEXT,conversation_id INTEGER,created_on INTEGER,enterprise_id INTEGER,from_type TEXT,track_id TEXT,avatar TEXT,status TEXT,agent_nickname TEXT,media_url TEXT,isRead INTEGER,type TEXT,extra TEXT,is_already_feedback INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS mq_conversation(id INTEGER PRIMARY KEY,agent_id INTEGER,created_on TEXT,ended_by TEXT,ended_on TEXT,enterprise_id INTEGER,last_msg_content TEXT,last_updated TEXT,track_id TEXT,visit_id TEXT,last_msg_created_on TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS mq_client(id_ INTEGER PRIMARY KEY AUTOINCREMENT,appkey TEXT,track_id TEXT,customized_id TEXT,aeskey TEXT,enterprise_id TEXT,browser_id TEXT,visit_page_id TEXT,visit_id TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "alter table mq_message rename to mq_message_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "INSERT INTO mq_message(id,agent_id,content,content_type,conversation_id,created_on,enterprise_id,from_type,track_id,avatar,status,agent_nickname,media_url,isRead,type,extra,is_already_feedback) SELECT id,agent_id,content,content_type,conversation_id,created_on,enterprise_id,from_type,track_id,avatar,status,agent_nickname,media_url,isRead,type,extra,is_already_feedback FROM mq_message_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists mq_message_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/e;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade \u5347\u7ea7\u6570\u636e\u5e93   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_2

    const/4 p3, 0x7

    if-eq p2, p3, :cond_3

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p2, "\u5347\u7ea7\u6570\u636e\u5e93   4 => 5"

    invoke-static {p2}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE mq_message ADD COLUMN extra"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const-string p2, "\u5347\u7ea7\u6570\u636e\u5e93   5 => 6"

    invoke-static {p2}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE mq_message ADD COLUMN is_already_feedback INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string p2, "\u5347\u7ea7\u6570\u636e\u5e93   6 => 7"

    invoke-static {p2}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/e;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const-string p2, "\u5347\u7ea7\u6570\u636e\u5e93   7 => 8"

    invoke-static {p2}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/e;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    const-string p2, "\u5347\u7ea7\u6570\u636e\u5e93\u6210\u529f"

    invoke-static {p2}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5347\u7ea7\u6570\u636e\u5e93\u51fa\u9519"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method
