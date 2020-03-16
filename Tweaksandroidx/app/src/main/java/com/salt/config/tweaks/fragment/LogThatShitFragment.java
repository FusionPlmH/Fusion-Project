package com.salt.config.tweaks.fragment;



import android.app.ProgressDialog;

import android.content.Intent;

import android.net.Uri;
import android.os.AsyncTask;


import android.os.Environment;

import android.util.Log;
import android.widget.Toast;


import androidx.appcompat.app.AlertDialog;
import androidx.core.content.FileProvider;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.module.shell.SuShell;
import com.salt.config.R;

import org.salt.preference.SaltCheckBoxPreference;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.widget.DialogView.LeoLogDialog;

import static com.salt.widget.DialogView.LeoLogDialoglist;


public class  LogThatShitFragment extends SaltPreferenceFragmentCompat
        implements Preference.OnPreferenceChangeListener {
    private static final String TAG = LogThatShitFragment.class.getSimpleName();
    private static final String PREF_LOGCAT = "leo_tweaks_logcat";
    private static final String PREF_KMSG = "leo_tweaks_kmseg";
    private static final String PREF_DMESG = "leo_tweaks_dmesg";
    private static final String PREF_AICP_LOG_IT = "leo_tweaks_log_it";

    private static final String PREF_CLEAN = "leo_tweaks_log_clean";
    private static final String FILEURL="/sdcard/LeoTweaks/Log";
    private static final String LOGCAT_FILE = new File(FILEURL, "leo_logcat.txt").getAbsolutePath();
    private static final String KMSG_FILE = new File(FILEURL, "leo_kernel.txt").getAbsolutePath();
    private static final String DMESG_FILE = new File(FILEURL, "leo_boot.txt").getAbsolutePath();
    private static final File sdCardDirectory = new File(FILEURL);
    private static final File logcatFile = new File(sdCardDirectory, "leo_logcat.txt");
    private static final File dmesgFile = new File(sdCardDirectory, "leo_boot.txt");
    private static final File kmsgFile = new File(sdCardDirectory, "leo_kernel.txt");
    private static final File shareZipFile = new File(sdCardDirectory, getLeoBuild("ro.boot.em.model")+"_"+getLeoBuild("ro.build.PDA")+"_log.zip");
    private static final int HASTE_MAX_LOG_SIZE = 800000;
    private Preference mLeoCleanLog;
    private SaltCheckBoxPreference mLogcat;
    private SaltCheckBoxPreference mKmsg;
    private SaltCheckBoxPreference mDmesg;
    private Preference mLeoLogIt;

    private boolean shareHaste = false;
    private boolean shareZip = true;

    @Override
    protected void getSaltPreferenceEnabled() {

    }




    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    public void createSDCardDirimg(){
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
            File sdcardDir =Environment.getExternalStorageDirectory();
            String path=sdcardDir.getPath()+"/LeoTweaks/Log";
            File path1 = new File(path);
            if (!path1.exists()) {
                path1.mkdirs();
            }
        }
        else{
            return;
        }

    }

    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference == mLeoCleanLog) {
            File file = new File("/sdcard/LeoTweaks/Log/leo_logcat.txt");
            if(file.exists()){
                LeoLogDialog(getActivity());
            }else {
                showSnackn(getApksStringInt(R.string.no_log));
            }


            return true;
        }  else if (preference == mLeoLogIt) {
            new CreateLogTask().execute(mLogcat.isChecked(), mKmsg.isChecked(), mDmesg.isChecked());
            return true;
        } else {
            return super.onPreferenceTreeClick(preference);
        }

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
        }  else {
            return false;
        }
    }




    public void logZipDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.log_it_dialog_title);
        builder.setMessage(R.string.logcat_warning);
        builder.setPositiveButton(R.string.share_title, (arg0, arg1) -> {
            Uri photoUri = FileProvider.getUriForFile(
                    getActivity(),
                    getActivity().getPackageName() + ".provider",
                    shareZipFile);
            Intent sharingIntent = new Intent(Intent.ACTION_SEND);
            sharingIntent.setType("application/zip");
            sharingIntent.putExtra(Intent.EXTRA_SUBJECT, "Log that shit");
            sharingIntent.putExtra(Intent.EXTRA_STREAM,photoUri);
            startActivity(Intent.createChooser(sharingIntent, "分享日志"));
        });
        builder.setNeutralButton(R.string.see_share, (dialog, which) -> {

            LeoLogDialoglist(getActivity());
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


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.log_layout_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        PreferenceScreen prefSet = getPreferenceScreen();
        mLogcat = (SaltCheckBoxPreference) prefSet.findPreference(PREF_LOGCAT);
        mLogcat.setOnPreferenceChangeListener(this);
        mKmsg = (SaltCheckBoxPreference) prefSet.findPreference(PREF_KMSG);
        mKmsg.setOnPreferenceChangeListener(this);
        mDmesg = (SaltCheckBoxPreference) prefSet.findPreference(PREF_DMESG);
        mDmesg.setOnPreferenceChangeListener(this);
        mLeoLogIt = (Preference)prefSet.findPreference(PREF_AICP_LOG_IT);
        mLeoCleanLog= (Preference) prefSet.findPreference(PREF_CLEAN);
        createSDCardDirimg();
        // shareZip = true;
        resetValues();

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
                Toast.makeText(getActivity(), getStringIdentifier(getActivity(),"no_su_dialog_title"),
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
        shareHaste = false;
        shareZip = true;
    }



}