package com.salt.module;


import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import com.salt.script.KeepShellPublic;
import java.util.List;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.globalactions.Utils.S10reboot;
import static com.salt.globalactions.Utils.setLeoNavKeypressAction;
import static com.salt.config.SaltApp.getContext;
import static com.salt.utils.SaltProper.BuildVERSIONCODES;
import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;

public class DeleteApps {
    private Context mContext;
    private PackageManager mPackageManager;
    private ProgressDialog  progressDialog;
    public DeleteApps(Context context){
        mContext=context;
        mPackageManager =  mContext.getPackageManager();
        progressDialog =new ProgressDialog(mContext);
    }




    //通过ROot权限实现程序删除
    public void LeoRT100(String string){
        KeepShellPublic.INSTANCE.doCmdSync(string);
    }
    public void LeoRT100(String string,int style){
        if (isLeoAvilible(mContext, string)) {
            mPackageManager.setApplicationEnabledSetting(string, style, 0);
        }

    }

    //判断程序是否存在
   public   boolean isLeoAvilible(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        // 获取所有已安装程序的包信息
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        for ( int i = 0; i < pinfo.size(); i++ )
        {
            if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
                return true;
        }
        return false;
    }



    @SuppressLint("WrongConstant")
    public void StkBoolean(boolean off) {
        int style = off ? 2 : 1;
        try {
            LeoRT100("com.android.stk",style);
            LeoRT100("com.android.stk2",style);
        } catch (IllegalArgumentException e) {
        }
    }

    public void FreezeGoogleServices(Context context,boolean of) {
        new FreezeGoogleServicesTask(context,of).execute();
    }


    private  class FreezeGoogleServicesTask extends AsyncTask<Void, Void, Void> {
        private Context mContext;
        boolean  FrozenStartup;
        public FreezeGoogleServicesTask(Context context,boolean of) {
            super();
            mContext = context;
            FrozenStartup=of;
        }
        @SuppressLint("WrongConstant")
        @Override
        protected Void doInBackground(Void... params) {
            PackageManager pm =  mContext.getPackageManager();
            try {
                int i = FrozenStartup ? 1 : 2;
                if (isLeoAvilible(mContext, "com.google.android.tts")) {
                    pm.setApplicationEnabledSetting("com.google.android.tts", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.feedback")) {
                    pm.setApplicationEnabledSetting("com.google.android.feedback", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.gms")) {
                    pm.setApplicationEnabledSetting("com.google.android.gms", i, 0);
                }
                if (isLeoAvilible(mContext,"com.android.vending")) {
                    pm.setApplicationEnabledSetting("com.android.vending", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.backuptransport")) {
                    pm.setApplicationEnabledSetting("com.google.android.backuptransport", i, 0);
                }
                if (isLeoAvilible(mContext,"com.google.android.gsf")) {
                    pm.setApplicationEnabledSetting("com.google.android.gsf", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.partnersetup")) {
                    pm.setApplicationEnabledSetting("com.google.android.partnersetup", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.syncadapters.calendar")) {
                    pm.setApplicationEnabledSetting("com.google.android.syncadapters.calendar", i, 0);
                }
                if (isLeoAvilible(mContext,"com.google.android.syncadapters.contacts")) {
                    pm.setApplicationEnabledSetting("com.google.android.syncadapters.contacts", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.gsf.login")) {
                    pm.setApplicationEnabledSetting("com.google.android.gsf.login", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.apps.restore")) {
                    pm.setApplicationEnabledSetting("com.google.android.apps.restore", i, 0);
                }
                if (isLeoAvilible(mContext, "com.google.android.apps.pdfviewer")) {
                    pm.setApplicationEnabledSetting("com.google.android.apps.restore", i, 0);
                }
                if( i==1){
                    progressDialog.setMessage(getStringIdentifier(getContext(),"freeze_yes")+getStringIdentifier(getContext(),"google_services"));
                }else {
                    progressDialog.setMessage(getStringIdentifier(getContext(),"freeze_no")+getStringIdentifier(getContext(),"google_services"));
                }
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
            return null;
        }
        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);

            progressDialog.cancel();
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressDialog.show();
        }
    }


    public void DeleteGoogleServices() {
        new DeleteGoogleServicesTask().execute();
    }
    public void uninstall(String string){
        KeepShellPublic.INSTANCE.doCmdSync("mount -o rw,remount /data\n" +
                "busybox mount -o rw,remount /data\n" +
                "mount -o rw,remount /system\n"+
                "busybox mount -o rw,remount /system\n"+
                "mount -o rw,remount /system_root\n"+
                "busybox mount -o rw,remount /system_root\n");

        KeepShellPublic.INSTANCE.doCmdSync("rm -rf /"+string);
    }

    private  class DeleteGoogleServicesTask extends AsyncTask<Void, Void, Void> {
        public DeleteGoogleServicesTask() {
            super();
        }

        protected Void doInBackground(Void... params) {
            progressDialog.setMessage("正在删除谷歌服务相关程序");
            try {
                if (BuildVERSIONCODES()) {
                    uninstall("system/app/GoogleCalendarSyncAdapter" );
                    uninstall("system/app/GoogleContactsSyncAdapter" );
                    uninstall("system/app/GoogleLocationHistory" );
                    uninstall("system/app/ChromeCustomizations" );
                    uninstall("system/app/Chrome" );
                    uninstall("system/app/GooglePrintRecommendationService" );
                    uninstall("system/app/GoogleTTS" );
                    uninstall("system/priv-app/ConfigUpdater" );
                    uninstall("system/priv-app/GmsCore" );
                    uninstall("system/priv-app/GoogleFeedback" );
                    uninstall("system/priv-app/GooglePartnerSetup" );
                    uninstall("system/priv-app/GoogleRestore" );
                    uninstall("system/priv-app/GoogleServicesFramework" );
                    uninstall("system/priv-app/Phonesky" );
                    uninstall("system/priv-app/DigitalWellbeing" );
                }else{
                    uninstall("system/app/GoogleContactsSyncAdapter" );
                    uninstall("system/app/GoogleCalendarSyncAdapter" );
                    uninstall("system/app/GooglePrintRecommendationService" );
                    uninstall("system/app/ChromeCustomizations" );
                    uninstall("system/app/Chrome" );
                    uninstall("system/priv-app/CallLogBackup" );
                    uninstall("system/priv-app/ConfigUpdater" );
                    uninstall("system/priv-app/GmsCore" );
                    uninstall("system/priv-app/GoogleBackupTransport" );
                    uninstall("system/priv-app/GoogleOneTimeInitializer" );
                    uninstall("system/priv-app/GoogleLoginService" );
                    uninstall("system/priv-app/GooglePartnerSetup" );
                    uninstall("system/priv-app/GoogleServicesFramework" );
                    uninstall("system/priv-app/GoogleRestore" );
                    uninstall("system/priv-app/GooglePlayServicesUpdater" );
                    uninstall("system/priv-app/Phonesky/Phonesky.apk" );
                    uninstall("system/priv-app/GoogleFeedback" );
                    uninstall("system/priv-app/Velvet" );
                    uninstall("system/preload/GoogleCalendarSyncAdapter" );
                    uninstall("system/preload/GoogleContactsSyncAdapter" );
                }

                uninstall("data/app/com.android.vending" );
                uninstall("data/app/com.google.android.syncadapters.calendar*");
                uninstall("data/app/com.google.android.syncadapters.contacts*" );
                uninstall("data/data/com.google.android.tts*");
                uninstall("data/data/com.google.android.configupdater*" );
                uninstall("data/data/com.google.android.feedback*");
                uninstall("data/data/com.google.android.onetimeinitializer*" );
                uninstall("data/data/com.google.android.gms*" );
                uninstall("data/data/com.android.vending*" );
                uninstall("data/data/com.google.android.backuptransport*");
                uninstall("data/data/com.google.android.gsf*");
                uninstall("data/data/com.google.android.partnersetup*" );
                uninstall("data/data/com.google.android.syncadapters.calendar*");
                uninstall("data/data/com.google.android.syncadapters.contacts*" );
                uninstall("data/data/com.google.android.gsf.login*");
                uninstall("data/data/com.google.android.apps.restore*");
                uninstall("data/data/com.google.android.apps.pdfviewer*");
            } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            return null;
        }
        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            progressDialog.cancel();
            KeepShellPublic.INSTANCE.doCmdSync("sleep 1s");
            setLeoNavKeypressAction(mContext,S10reboot());
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressDialog.show();
        }
    }









    public void DeleteAPPSTaskServices(String APPS) {
        new DeleteAPPSTask(APPS).execute();
    }


    private  class DeleteAPPSTask extends AsyncTask<Void, Void, Void> {
        String appName;
        public DeleteAPPSTask(String APPS) {
            super();
            appName=APPS;
        }

        protected Void doInBackground(Void... params) {
            try {
                uninstall(appName );

            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
            return null;
        }
        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            progressDialog.cancel();
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressDialog.show();
        }
    }
}


