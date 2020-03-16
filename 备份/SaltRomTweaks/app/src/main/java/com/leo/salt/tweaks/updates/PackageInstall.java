package com.leo.salt.tweaks.updates;


import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;

import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tweaks.LeoAmberApplication;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

public class PackageInstall{

    public Context mContext;
    public BackupRestoreUnit mRestoreUnit;
    public void ZipInstall(Context context){
        mContext= context;
        showFusionLeoOTADialog();
    }
    public  void showFusionLeoOTADialog() {
        FusionLeoOTAInstalTask task = new FusionLeoOTAInstalTask(mContext) {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(mContext);
                dialog.setMessage(getStringIdentifier(mContext,"execute_wait"));
                dialog.setCancelable(false);
                dialog.setIndeterminate(true);
                dialog.show();
            }
            @Override
            protected Void doInBackground(Context... params) {
                // Give the user a second to see the dialog
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e) {
                    // Ignore
                }
                super.doInBackground(params);
                return null;
            }
            @Override
            protected void onPostExecute(Void param) {
                super.onPostExecute(param);
                dialog.dismiss();
            }
        };
        task.execute(mContext);
    }
    private  class FusionLeoOTAInstalTask extends AsyncTask<Context, Void, Void> {
        public FusionLeoOTAInstalTask(Context context) {
            super();
            mRestoreUnit= new  BackupRestoreUnit(context);
        }
        @Override
        protected Void doInBackground(Context... params) {
            try {
                mRestoreUnit.InstalFlashZIP();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }
}