package com.tweaks.leo.fragment;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;

import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.preference.MyPreference;
import com.tweaks.leo.utils.SuShell;
import com.tweaks.leo.utils.root.Helpers;
import com.tweaks.leo.utils.root.RootUtils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import static com.tweaks.leo.utils.AndroidUtils.getBasicsSystemVersion;

import static com.tweaks.leo.utils.AndroidUtils.getDevice;

import static com.tweaks.leo.utils.root.Helpers.WipeLOG;


public class LogThatShitFragment extends PreferenceFragment
        implements Preference.OnPreferenceChangeListener {

    private static final String TAG = LogThatShitFragment.class.getSimpleName();

    private static final String PREF_LOGCAT = "leo_tweaks_logcat";
    private static final String PREF_KMSG = "leo_tweaks_kmseg";
    private static final String PREF_DMESG = "leo_tweaks_dmesg";
    private static final String PREF_AICP_LOG_IT = "leo_tweaks_log_it";
    private static final String PREF_SHARE_TYPE = "leo_tweaks_log_share_type";
    private static final String PREF_CLEAN = "leo_tweaks_log_clean";
    private static final String FILEURL="/sdcard/LeoTweaks/Log";
    private static final String LOGCAT_FILE = new File(FILEURL, "leo_logcat.txt").getAbsolutePath();
    private static final String KMSG_FILE = new File(FILEURL, "leo_kernel.txt").getAbsolutePath();
    private static final String DMESG_FILE = new File(FILEURL, "leo_boot.txt").getAbsolutePath();
    private static final File sdCardDirectory = new File(FILEURL);
    private static final File logcatFile = new File(sdCardDirectory, "leo_logcat.txt");
    private static final File dmesgFile = new File(sdCardDirectory, "leo_boot.txt");
    private static final File kmsgFile = new File(sdCardDirectory, "leo_kernel.txt");
    private static final File shareZipFile = new File(sdCardDirectory, getDevice()+"_"+getBasicsSystemVersion()+"_log.zip");
    private static final int HASTE_MAX_LOG_SIZE = 800000;
    private MyPreference mLeoCleanLog;
    private CheckBoxPreference mLogcat;
    private CheckBoxPreference mKmsg;
    private CheckBoxPreference mDmesg;
    private MyPreference mLeoLogIt;
    private ListPreference mShareType;
    private boolean shareHaste = false;
    private boolean shareZip = true;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Load the preferences from an XML resource
        addPreferencesFromResource(R.xml.log_layout);

        PreferenceScreen prefSet = getPreferenceScreen();
        ContentResolver resolver = getActivity().getContentResolver();

        mLogcat = (CheckBoxPreference) prefSet.findPreference(PREF_LOGCAT);
        mLogcat.setOnPreferenceChangeListener(this);
        mKmsg = (CheckBoxPreference) prefSet.findPreference(PREF_KMSG);
        mKmsg.setOnPreferenceChangeListener(this);
        mDmesg = (CheckBoxPreference) prefSet.findPreference(PREF_DMESG);
        mDmesg.setOnPreferenceChangeListener(this);
        mLeoLogIt = (MyPreference)prefSet.findPreference(PREF_AICP_LOG_IT);
        mLeoCleanLog= (MyPreference) prefSet.findPreference(PREF_CLEAN);
        mShareType = (ListPreference) prefSet.findPreference(PREF_SHARE_TYPE);
        mShareType.setOnPreferenceChangeListener(this);

        resetValues();

    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
         if (preference == mLogcat) {
            mLeoLogIt.setEnabled((Boolean) newValue || mKmsg.isChecked() || mDmesg.isChecked());
            return true;
        } else if (preference == mKmsg) {
            mLeoLogIt.setEnabled((Boolean) newValue || mLogcat.isChecked() || mDmesg.isChecked());
            return true;
        } else if (preference == mDmesg) {
            mLeoLogIt.setEnabled((Boolean) newValue || mLogcat.isChecked() || mKmsg.isChecked());
            return true;
        } else if (preference == mShareType) {
            if ("0".equals(newValue)) {
                mShareType.setSummary(getString(R.string.log_it_share_type_zip));

                shareZip = true;
            } else {
                mShareType.setSummary("");

                shareZip = false;
            }
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mLeoCleanLog) {
            File file = new File("/sdcard/LeoTweaks/Log/leo_logcat.txt");
            if(file.exists()){
                AlertDialog dialog = new AlertDialog.Builder(getActivity())
                        .setTitle("清理")//设置对话框的标题
                        .setMessage("清理<上次抓取留下>的日志文件")//设置对话框的内容
                        .setPositiveButton("确定清理", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                WipeLOG(getActivity());
                                dialog.dismiss();
                            }
                        }).create();
                dialog.show();

            }else {
                Toast.makeText(getActivity(),"当前木有日志文件残留",
                        Toast.LENGTH_SHORT).show();
            }


            return true;
        } else if (preference == mLeoLogIt) {
            new CreateLogTask().execute(mLogcat.isChecked(), mKmsg.isChecked(), mDmesg.isChecked());
            return true;
        } else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }



    public void logZipDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.log_it_dialog_title);
        builder.setMessage(R.string.logcat_warning);
        builder.setPositiveButton(R.string.share_title, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface arg0, int arg1) {
                Intent sharingIntent = new Intent(android.content.Intent.ACTION_SEND);
                sharingIntent.setType("application/zip");
                sharingIntent.putExtra(Intent.EXTRA_SUBJECT, "Log that shit");
                sharingIntent.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(shareZipFile));
                startActivity(Intent.createChooser(sharingIntent, "分享日志"));
            }
        });

        AlertDialog alertDialog = builder.create();
        alertDialog.show();
    }

    public void makeLogcat() throws SuShell.SuDeniedException, IOException {
        String command = "logcat -d";
        if (shareHaste) {
            command += " | tail -c " + HASTE_MAX_LOG_SIZE + " > " + LOGCAT_FILE
                    + "&& curl -s -X POST -T " + LOGCAT_FILE;

        } else {
            command += " > " + LOGCAT_FILE;
        }
        SuShell.runWithSuCheck(command);
    }

    public void makeKmsg() throws SuShell.SuDeniedException, IOException {
        String command = "cat /proc/last_kmsg";
        if (shareHaste) {
            command += " | tail -c " + HASTE_MAX_LOG_SIZE + " > " + KMSG_FILE
                    + " && curl -s -X POST -T " + KMSG_FILE;
        } else {
            command += " > " + KMSG_FILE;
        }
        SuShell.runWithSuCheck(command);
    }

    public void makeDmesg() throws SuShell.SuDeniedException, IOException {
        String command = "dmesg";
        if (shareHaste) {
            command += " | tail -c " + HASTE_MAX_LOG_SIZE + " > " + DMESG_FILE
                    + "&& curl -s -X POST -T " + DMESG_FILE;
        } else {
            command += " > " + DMESG_FILE;
        }
        SuShell.runWithSuCheck(command);
    }

    private void createShareZip(boolean logcat, boolean kmsg, boolean dmesg) throws IOException {

        ZipOutputStream out = null;
        try {
            out = new ZipOutputStream(new BufferedOutputStream(
                    new FileOutputStream(shareZipFile.getAbsolutePath())));
            if (logcat) {
                writeToZip(logcatFile, out);
            }
            if (kmsg) {
                writeToZip(kmsgFile, out);
            }
            if (dmesg) {
                writeToZip(dmesgFile, out);
            }
        } finally {
            if (out != null) out.close();
        }
    }
    private void writeToZip(File file, ZipOutputStream out) throws IOException {
        BufferedInputStream in = null;
        try {
            in = new BufferedInputStream(new FileInputStream(file.getAbsolutePath()));
            ZipEntry entry = new ZipEntry(file.getName());
            out.putNextEntry(entry);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = in.read(buffer)) > 0) {
                out.write(buffer, 0, length);
            }
        } finally {
            if (in != null) in.close();
        }
    }

    private class CreateLogTask extends AsyncTask<Boolean, Void, String> {

        private Exception mException = null;
        private ProgressDialog progressDialog;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressDialog = new ProgressDialog(getActivity());
            progressDialog.setMessage(getString(R.string.log_it_logs_in_progress));
            progressDialog.setCancelable(false);
            progressDialog.setIndeterminate(true);
            progressDialog.show();
        }
        @Override
        protected String doInBackground(Boolean... params) {
            String sharingIntentString = "";
            if (params.length != 3) {
                Log.e(TAG, "CreateLogTask: invalid argument count");
                return sharingIntentString;
            }
            try {
                if (params[0]) {
                    makeLogcat();
                    if (shareHaste) {
                      //  sharingIntentString += "\nLogcat: " + Helpers.readStringFromFile(logcatHasteKey);
                    }
                }
                if (params[1]) {
                    makeKmsg();
                    if (shareHaste) {
                      //  sharingIntentString += "\nKmsg: " + Helpers.readStringFromFile(kmsgHasteKey);
                    }
                }
                if (params[2]) {
                    makeDmesg();
                    if (shareHaste) {
                     //   sharingIntentString += "\nDmesg: " + Helpers.readStringFromFile(dmesgHasteKey);
                    }
                }
                if (shareZip) {
                    createShareZip(params[0], params[1], params[2]);
                }
            } catch (SuShell.SuDeniedException e) {
                mException = e;
            } catch (IOException e) {
                e.printStackTrace();
                mException = e;
            }
            return sharingIntentString;
        }

        @Override
        protected void onPostExecute(String param) {
            super.onPostExecute(param);
            progressDialog.dismiss();
            if (mException instanceof SuShell.SuDeniedException) {
                Toast.makeText(getActivity(), getString(R.string.no_su_dialog_title),
                        Toast.LENGTH_LONG).show();
                return;
            }
            if (shareZip) {
                logZipDialog();
            }
        }
    }

    public void resetValues() {
        mLogcat.setChecked(false);
        mKmsg.setChecked(false);
        mDmesg.setChecked(false);
        mLeoLogIt.setEnabled(false);
        mShareType.setValue("0");
        mShareType.setSummary(mShareType.getEntry());
        shareHaste = false;
        shareZip = true;

    }
}
