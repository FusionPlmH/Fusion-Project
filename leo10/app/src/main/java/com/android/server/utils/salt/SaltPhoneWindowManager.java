package com.android.server.utils.salt;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.inputs.AInputManager;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Vibrator;
import android.os.aPowerManager;
import android.provider.AlarmClock;
import android.provider.CalendarContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.widget.Toast;

import com.android.internal.statusbar.IStatusBarService;
import com.android.server.LocalServices;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.policy.PolicyControl;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.settingslib.salt.SaltConfigFrame;

import java.net.URISyntaxException;
import java.util.HashSet;
import java.util.List;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.android.server.utils.salt.SaltPhoneSetting.LEOPREFE;
import static com.android.server.utils.salt.SaltPhoneSetting.LeoSetting;
import static com.android.server.utils.salt.SaltPhoneSetting.mKillWhite;
import static com.android.server.utils.salt.SaltPhoneSetting.setBixbyClickAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setBixbyLongAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalBixbyClickAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalBixbyClickKeyguardAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalBixbyLongPressAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalBixbyLongPressKeyguardAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalHwKyesVibratorLevel;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalLongPressOnBackAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalLongPressOnHomeAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalLongPressOnRecentAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerDoubleAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerDoubleKeyguardAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerEnableAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerLongPressAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerLongPressKeyguardAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeowGlobalHwKyesVibratorEnable;
import static com.android.server.utils.salt.SaltPhoneSetting.setLongPressOnBackAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLongPressOnHomeAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLongPressOnRecentAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setPowerDoubleAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setPowerLongPressAction;
import static com.android.server.utils.salt.SaltServerFrame.Provider.LeoGlobal;
import static com.android.server.utils.salt.SaltServerFrame.Provider.getIntLeoGlobal;
import static com.android.server.utils.salt.SaltServerFrame.Provider.getLeoGlobalStr;
import static com.android.server.utils.salt.SaltServerFrame.Provider.getLeoInt;
import static com.android.server.utils.salt.SaltServerFrame.Provider.getLeoString;
import static com.android.server.utils.salt.SaltServerFrame.*;
import static com.android.server.utils.salt.SaltServerFrame.Provider.putIntLeo;
import static com.android.server.utils.salt.SaltServerFrame.Provider.putIntLeoGlobal;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;


public class SaltPhoneWindowManager {
	public final static String TAG = SaltPhoneWindowManager.class.getSimpleName();
	public PhoneWindowManager mPhoneWindowManager;
    public SaltPhoneWindowAction mSaltPhoneWindowAction;
	public  Context mContext;
    public static  String mAppsManager="com.leo.salt/com.leo.salt.tweaks.activity.AppsActivity";
    public static  String mWIFIManager="com.leo.salt/com.leo.salt.tweaks.activity.WifiPasswordActivity";
    public static  String mLeoManager="com.leo.salt/com.leo.salt.SplashActivity";
    public static  String mVideoManager="com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity";
    public static  String mSearch="com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity";
	private static  String mKillWhiteList= "com.android.systemui##com.android.phone##com.leo.salt##com.sec.android.app.launcher";
	public SaltPhoneWindowManager(Context context,PhoneWindowManager phoneWindowManager){
		mContext=context;
		mPhoneWindowManager=phoneWindowManager;
        mSaltPhoneWindowAction=new SaltPhoneWindowAction();
	}
	public void getSaltLongRecentAction()  {
		String str=setLongPressOnRecentAction;
		int style=setLeoGlobalLongPressOnRecentAction;
		setLeoAction(mContext,str,style);
		setLeoHaptics(mContext,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
	}

	public void getSaltLongHomeAction()  {
		String str=setLongPressOnHomeAction;
		int style=setLeoGlobalLongPressOnHomeAction;
		setLeoAction(mContext,str,style);
		setLeoHaptics(mContext,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
	}
	public void getSaltLongPressbackAction()  {
		String str=setLongPressOnBackAction;
		int style=setLeoGlobalLongPressOnBackAction;
		setLeoAction(mContext,str,style);
		setLeoHaptics(mContext,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
	}
	public void getSaltPowerLongAction()  {
		int style;
		String key;
		if(mPhoneWindowManager.keyguardOn()){
			key=null;
			style=setLeoGlobalPowerLongPressKeyguardAction;
			if(style<=0){
				style=205; //当选择项目为0默认相机
			}
		}else{
			key=setPowerLongPressAction;
			style=setLeoGlobalPowerLongPressAction;
			if(style<=0){
				style=205; //当选择项目为0默认相机
			}
		}
		setLeoAction(mContext,key,style);

	}
	public void getSaltPowerDoubleAction()  {

		if(setLeoGlobalPowerEnableAction){
			int style;
			String key;
			if(mPhoneWindowManager.keyguardOn()){
				key=null;
				style=setLeoGlobalPowerDoubleKeyguardAction;
				if(style<=0){
					style=220; //当选择项目为0默认相机
				}
			}else{
				key=setPowerDoubleAction;
				style=setLeoGlobalPowerDoubleAction;
				if(style<=0){
					style=220; //当选择项目为0默认相机
				}
			}
			setLeoAction(mContext,key,style);
		}
	}
	public int getSaltBixbyLongPressAction() {
		Context context=mContext;
		LeoSetting(context);
		int style;
		String key;
		if(mPhoneWindowManager.keyguardOn()){
			key=null;
			style=setLeoGlobalBixbyLongPressKeyguardAction;
			if(style<=0){
				style=260; //当选择项目为0默认唤醒屏幕
			}
		}else{
			key=setBixbyLongAction;
			style=setLeoGlobalBixbyLongPressAction;
			if(style<=0){
				style=229; //当选择项目为0默认BIX语音
			}
		}
		setLeoAction(context,key,style);
		return style;
	}
	public int getLeoBixbyAction() {
		LeoSetting(mContext);
		int style;
		String key;
		if(mPhoneWindowManager.keyguardOn()){
			key=null;
			style=setLeoGlobalBixbyClickKeyguardAction;
			if(style<=0){
				style=260; //当选择项目为0默认BIX语音
			}
		}else{
			key=setBixbyClickAction;
			style=setLeoGlobalBixbyClickAction;
			if(style<=0){
				style=229; //当选择项目为0默认BIX语音
			}
		}
		setLeoAction(mContext,key,style);
		return style;
	}
    public static boolean EnablePowerGlobalService=true;
    public static void PowerMenuService(Context context){
        try {
            EnablePowerGlobalService=true;
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(rt100foleo("Y29tLmxlby5BQ1RJT05fR0xPQkFMQUNUSU9OUw=="));
            context. startActivity(intent);
        } catch (Exception e) {
            EnablePowerGlobalService=false;
        }
    }

    public SaltPhoneWindowAction getSaltPhoneWindowAction() {
        return mSaltPhoneWindowAction;
    }
	public static String[] setKillWhiteList(){
		String List =mKillWhiteList;
		String str = "##";
		String systemString =mKillWhite;
		String[]  KillWhiteList = (systemString == null || systemString.isEmpty() || !systemString.contains(str)) ? List.split(str) : (systemString + List).split(str);
		return KillWhiteList;
	}

    private static final class ExpandAction {
        public static void  sPlitScreens() {
            getStatusBarManagerInternal().toggleSplitScreen();
        }

        public  static StatusBarManagerInternal mStatusBarManagerInternal;
        final static StatusBarManagerInternal getStatusBarManagerInternal() {
            StatusBarManagerInternal statusBarManagerInternal;
            synchronized (mServiceAquireLock) {
                if (mStatusBarManagerInternal == null) {
                    mStatusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
                }
                statusBarManagerInternal =mStatusBarManagerInternal;
            }
            return statusBarManagerInternal;
        }
        static final  Object mServiceAquireLock = new Object();
        private static  IStatusBarService mService = null;
        private static  IStatusBarService getStatusBarService() {
            synchronized (ExpandAction.class) {
                if (mService == null) {
                    try {
                        mService = IStatusBarService.Stub.asInterface(
                                ServiceManager.getService("statusbar"));
                    } catch (Exception e) {
                    }
                }
                return mService;
            }
        }
        private static void clearAllNotifications() {
            IStatusBarService service = getStatusBarService();
            if (service != null) {
                //  service.onClearAllNotifications(ActivityManager.getCurrentUser());
            }
        }

       private static void expandNotificationsPanel() {
            IStatusBarService service = getStatusBarService();
            if (service != null) {
                try {
                    service.expandNotificationsPanel();
                } catch (RemoteException e) {
                }
            }
        }

        private  static void expandSettingsPanel() {
            IStatusBarService service = getStatusBarService();
            if (service != null) {
                try {
                    service.expandSettingsPanel(null);
                } catch (RemoteException e) {
                }
            }
        }


    }
	public class SaltPhoneWindowAction  {

	    public SaltPhoneWindowAction(){

         }
		public  String TAG =SaltPhoneWindowAction.class.getSimpleName();
		public  void startAppsActivity(String str,boolean launch) {
            Context context=mContext;
			String string2 = getLeoString(context,str+"_short");
			if(launch){
				Intent intent = getIntent(string2);
				if (intent == null) {
					return;
				}
				launchShortcut(context, intent);
			} else  {
				launchActivity(context,str);

			}
		}

        public void LeoManagerService(String style) {
            String[] split =style.split("/");
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(new ComponentName(split[0], split[1]));
            intent.setFlags(268435456);
            try {
                mContext.startActivity(intent);
            } catch (ActivityNotFoundException e4) {
                e4.printStackTrace();
                try {
                    intent = new Intent();
                    intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
                    intent.setAction(rt100foleo("Y29tLmxlby5ST01fQ09OVFJPTA=="));
                  mContext. startActivity(intent);
                }catch (Exception e) {
                  ActionToastSring(mContext, "activity_no");

                }
            }
        }

		public  Intent getIntent(String uri) {
			if (uri == null || uri.startsWith("0")) {
				return null;
			}

			Intent intent = null;
			try {
				intent = Intent.parseUri(uri, 0);
			} catch (URISyntaxException e) {
				e.printStackTrace();
			}
			return intent;
		}
		 void launchActivity(Context context,String appName) {
			Intent intent;
			String packageName = getLeoString(context, appName+"_apps");
			String activity = getLeoString(context, appName+"_activity");
			boolean launchActivity = activity != null && !TextUtils.equals("NONE", activity);
			try {
				if (launchActivity) {
					intent = new Intent(Intent.ACTION_MAIN);
					intent.setClassName(packageName, activity);
				} else {
					intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
				}
				if (intent != null) {
					intent.setFlags(FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
				}
				context.startActivity(intent);
			} catch (Exception e) {

				Log.i(TAG , "Unable to launch activity " + e);
			}


		}
		private  void launchShortcut(Context context, Intent intent) {
			try {
				intent.setFlags(FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
				context.startActivity(intent);
			} catch (Exception e) {
				Log.i(TAG , "Unable to launch activity " + e);
			}
		}
        public  void toggleNotificationsPanel() {
            ExpandAction.expandNotificationsPanel();
        }
        public  void toggleSettingsPanel() {
            ExpandAction.expandSettingsPanel();
        }
        public  void toggleSPlitScreens() {
            ExpandAction.sPlitScreens();
        }
		public  void toggleFlashlight() {
          setFlashlight(mContext);
		}

		public  void toggleclearAllNotifications(Context context) {
            ExpandAction.clearAllNotifications();
			ActionToastSring(context,"clear_notification");
		}
        public  void CleanProcesse() {
            try {
                Intent intent = new Intent();
                intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
                intent.setAction(rt100foleo("Y29tLmxlby5BQ1RJT05fQ0xFQU4="));
                mContext.startActivity(intent);
            } catch (Exception e) {
                Log.v(TAG, "error occurred");
            }
        }
        private   void setFlashlight(Context context){
            Intent intent = new Intent();
            intent.setAction(rt100foleo("bGVvX2ZsYXNobGlnaHRfYWN0aW9u"));
            context.sendBroadcast(intent);
        }
        public void WeChatScan(Context context) {
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(rt100foleo("Y29tLmxlby5BQ1RJT05fUEFZ"));
            context. startActivity(intent);
        }

		public  void  toggleWifi(Context context) {
			WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
			if (wifiManager.isWifiEnabled()) {
				wifiManager.setWifiEnabled(false);
				ActionToastSring(context,"wifi_no");
				//WIFI关闭
				return;
			}
			wifiManager.setWifiEnabled(true);
			ActionToastSring(context,"wifi_yes");
			//WIFI开启
		}
		public  void openCamera(Context context) {
			Intent intentCamera = new Intent();
			intentCamera.setFlags(FLAG_ACTIVITY_NEW_TASK);
			intentCamera.setAction("android.media.action.STILL_IMAGE_CAMERA");
			context.startActivity(intentCamera);
		}

		public  void toggleRingerModes (Context context) {
			AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
			if (am != null && ActivityManagerNative.isSystemReady()) {
				if (am.getRingerMode() == AudioManager.RINGER_MODE_NORMAL) {
					am.setRingerMode(AudioManager.RINGER_MODE_VIBRATE);
					Vibrator vib = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
					if (vib != null) {
						vib.vibrate(50);
					}
					ActionToastSring(context,"ringer_modes_vibrator");
				} else if (am.getRingerMode() == AudioManager.RINGER_MODE_VIBRATE) {
					am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
					ActionToastSring(context,"ringer_modes_silence");
				} else {
					am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
					ToneGenerator tg = new ToneGenerator(
							AudioManager.STREAM_NOTIFICATION,
							(int) (ToneGenerator.MAX_VOLUME * 0.85));
					if (tg != null) {
						tg.startTone(ToneGenerator.TONE_PROP_BEEP);
					}
					ActionToastSring(context,"ringer_modes_sound");
				}
			}
		}
		public  void toggleRingerSoundModes (Context context) {
			AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
			if (am != null && ActivityManagerNative.isSystemReady()) {
				if (am.getRingerMode() != AudioManager.RINGER_MODE_SILENT) {
					am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
					ActionToastSring(context,"ringer_modes_silence");
				} else {
					am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
					ToneGenerator tg = new ToneGenerator(
							AudioManager.STREAM_NOTIFICATION,
							(int) (ToneGenerator.MAX_VOLUME * 0.85));
					if (tg != null) {
						tg.startTone(ToneGenerator.TONE_PROP_BEEP);
					}
					ActionToastSring(context,"ringer_modes_sound");
				}
			}
		}
		public  void toggleRingerVIBRATESoundModes (Context context) {
			AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
			if (am != null && ActivityManagerNative.isSystemReady()) {
				if (am.getRingerMode() != AudioManager.RINGER_MODE_VIBRATE) {
					am.setRingerMode(AudioManager.RINGER_MODE_VIBRATE);
					Vibrator vib = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
					if (vib != null) {
						vib.vibrate(50);
					}
					ActionToastSring(context,"ringer_modes_vibrator");
				} else {
					am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
					ToneGenerator tg = new ToneGenerator(
							AudioManager.STREAM_NOTIFICATION,
							(int) (ToneGenerator.MAX_VOLUME * 0.85));
					if (tg != null) {
						tg.startTone(ToneGenerator.TONE_PROP_BEEP);
					}
					ActionToastSring(context,"ringer_modes_sound");
				}
			}
		}

		public  void toggleExpandedDesktop(Context context,String str) {
			ContentResolver cr = context.getContentResolver();
			String newVal = "";
			String currentVal = getLeoGlobalStr(context,str);
			if (currentVal == null) {
				currentVal = newVal;
			}
			if ("".equals(currentVal)) {
				newVal = "immersive.full=*";
			}
			LeoGlobal.putString(cr,str, newVal);
			if (newVal.equals("com.leo.salt.tweaks")) {
				PolicyControl.reloadFromSetting(context);
			}
		}
		public  void volumePanel(Context context) {
			AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
			am.adjustVolume(AudioManager.ADJUST_SAME, AudioManager.FLAG_SHOW_UI);
		}
		public  void screenOff() {
			aPowerManager pm = (aPowerManager)mContext.getSystemService(Context.POWER_SERVICE);
			pm.goToSleep(SystemClock.uptimeMillis());
		}

		public  void toggleAirplane(Context context) {
			boolean z = false;
			boolean z2 =getIntLeoGlobal(context, "airplane_mode_on", 0) == 1;
			putIntLeoGlobal(context, "airplane_mode_on", z2);
			Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
			String str = "state";
			if (!z2) {
				z = true;
				ActionToastSring(context,"airplane_mode_yes");
			} else {
				ActionToastSring(context,"airplane_mode_no");
			}
			intent.putExtra(str, z);
			context.sendBroadcast(intent);
		}

		public  void  toggleFloatingModel(Context context) {
			int Styel;
			String key=getStringIdentifier(context,"prefe_name")+ rt100foleo("cXNfZmxvYXRiYWxsX2VuYWJsZWQ=");
			Styel  = getLeoInt(context, key, 0) ^ 1;
			putIntLeo(context, key, Styel);
			if (Styel== 0){
				ActionToastSring(context,"ball_mode_no");
			}else if(Styel== 1){
				ActionToastSring(context,"ball_mode_yes");
			}
		}
		public  void  isOutdoorModel(Context context) {
			int Styel;
			Styel  = getLeoInt(context, "display_outdoor_mode", 0) ^ 1;
			putIntLeo(context, "display_outdoor_mode", Styel);
			if (Styel== 0){
				ActionToastSring(context,"outdoor_mode_no");
			}else if(Styel== 1){
				ActionToastSring(context,"outdoor_mode_yes");
			}
		}
		public  void  toggleMipopModel(Context context) {
			int Styel;
			String key=getStringIdentifier(context,"prefe_name")+rt100foleo("cXNfbWluaXBvcF9lbmFibGVk");
			Styel  =  getLeoInt(context, key, 0) ^ 1;
			putIntLeo(context, key, Styel);
			if (Styel== 0){
				ActionToastSring(context,"mipop_mode_no");
			}else if(Styel== 1){
				ActionToastSring(context,"mipop_mode_yes");
			}
		}

		public  void triggerVirtualKeypress( final int keyCode) {
			final AInputManager im =AInputManager.getInstance();
			final long now = SystemClock.uptimeMillis();
			int downflags = 0;

			if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT
					|| keyCode == KeyEvent.KEYCODE_DPAD_RIGHT
					|| keyCode == KeyEvent.KEYCODE_DPAD_UP
					|| keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
				downflags = KeyEvent.FLAG_SOFT_KEYBOARD | KeyEvent.FLAG_KEEP_TOUCH_MODE;
			} else {
				downflags = KeyEvent.FLAG_FROM_SYSTEM;
			}

			final KeyEvent downEvent = new KeyEvent(now, now, KeyEvent.ACTION_DOWN,
					keyCode, 0, 0, KeyCharacterMap.VIRTUAL_KEYBOARD, 0,
					downflags, InputDevice.SOURCE_KEYBOARD);
			final KeyEvent upEvent = KeyEvent.changeAction(downEvent, KeyEvent.ACTION_UP);
			final Handler handler = new Handler(Looper.getMainLooper());

			final Runnable downRunnable = () -> im.injectInputEvent(downEvent, AInputManager.INJECT_INPUT_EVENT_MODE_ASYNC);

			final Runnable upRunnable = () -> im.injectInputEvent(upEvent,AInputManager.INJECT_INPUT_EVENT_MODE_ASYNC);

			handler.post(downRunnable);
			handler.postDelayed(upRunnable, 10);
		}

		public  void getRecentKeyEvent() {
			int[] iArr = new int[]{0, 1};
			for (int keyEvent : iArr) {
				long uptimeMillis = SystemClock.uptimeMillis();
				AInputManager.getInstance().injectInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, keyEvent, 187, 0, 0, -1, 0, 268435464, 257), 0);
			}
		}



		public void LeoComponetURL(String str) {


			String[] split = str.split("/");
			Intent intent = new Intent("android.intent.action.MAIN");
			intent.setComponent(new ComponentName(split[0], split[1]));
			intent.setFlags(268435456);
			try {
				mContext.startActivity(intent);
			} catch (ActivityNotFoundException e) {
				e.printStackTrace();
				ActionToastSring(mContext,"activity_no");
			}
		}

		public  void PreviousPiece() {
			for (int i : new int[]{0, 1}) {
				long uptimeMillis = SystemClock.uptimeMillis();
				AInputManager instance = AInputManager.getInstance();
				InputEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 88, 0, 0, -1, 0, 268435464, 257);
				instance.injectInputEvent( keyEvent, 0);
			}
		}

		public  void NextTrack() {
			for (int i : new int[]{0, 1}) {
				long uptimeMillis = SystemClock.uptimeMillis();
				//InputEvent inputEvent = r4;
				AInputManager instance = AInputManager.getInstance();
				InputEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 87, 0, 0, -1, 0, 268435464, 257);
				instance.injectInputEvent(keyEvent, 0);
			}
		}

		public  void playPause() {
			for (int i : new int[]{0, 1}) {
				long uptimeMillis = SystemClock.uptimeMillis();
				//  InputEvent inputEvent = r4;
				AInputManager instance = AInputManager.getInstance();
				InputEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 85, 0, 0, -1, 0, 268435464, 257);
				instance.injectInputEvent(keyEvent, 0);
			}
		}

		public  void launchBixbyVoice(Context c) {
			Intent intent = new Intent("android.intent.action.VOICE_COMMAND");
			intent.setPackage("com.samsung.android.bixby.agent");
			intent.setFlags(268435456);
			try {
				c.startActivity(intent);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		public  void toggleLastApp(Context c) {
			int i = 0;
			int i2 = 1;
			Intent intent = new Intent("android.intent.action.MAIN");
			ActivityManager activityManager = (ActivityManager) c.getSystemService("activity");
			Object obj = "com.android.launcher";
			intent.addCategory("android.intent.category.HOME");
			ResolveInfo resolveActivity = c.getPackageManager().resolveActivity(intent, 0);
			if (!(resolveActivity.activityInfo == null || resolveActivity.activityInfo.packageName.equals("android"))) {
				obj = resolveActivity.activityInfo.packageName;
			}
			List runningTasks = activityManager.getRunningTasks(5);
			while (i == 0 && i2 < runningTasks.size()) {
				String packageName = ((ActivityManager.RunningTaskInfo) runningTasks.get(i2)).topActivity.getPackageName();
				if (!(packageName.equals(obj) || packageName.equals(PACKAGE_SYSTEMUI))) {
					i = ((ActivityManager.RunningTaskInfo) runningTasks.get(i2)).id;
				}
				i2++;
			}
			if (i != 0) {
				activityManager.moveTaskToFront(i, 2);
			}
		}



		public  void ClearMemory(Context context)  {
			ActivityManager am = (ActivityManager)context. getSystemService(Context.ACTIVITY_SERVICE);
			List<ActivityManager.RunningAppProcessInfo> infoList = am.getRunningAppProcesses();
			List<ActivityManager.RunningServiceInfo> serviceInfos = am.getRunningServices(100);

			long beforeMem = getAvailMemory(context);
			Log.d(TAG, "-----------before memory info : " + beforeMem);
			int count = 0;
			if (infoList != null) {
				for (int i = 0; i < infoList.size(); ++i) {
					ActivityManager.RunningAppProcessInfo appProcessInfo = infoList.get(i);
					Log.d(TAG, "process name : " + appProcessInfo.processName);
					//importance 该进程的重要程度  分为几个级别，数值越低就越重要。
					Log.d(TAG, "importance : " + appProcessInfo.importance);
					HashSet hashSet = new HashSet();
					String string = getLeoString(context, LEOPREFE+rt100foleo("a2lsbGVyX3doaXRlX2xpc3Q="));
					if (string != null) {
						for (Object add : string.split("\\|")) {
							hashSet.add(add);
						}
					}
					String obj = appProcessInfo.processName.split(":")[0];
					if (appProcessInfo.importance > ActivityManager.RunningAppProcessInfo.IMPORTANCE_VISIBLE&& !hashSet.contains(obj)) {
						String[] pkgList = appProcessInfo.pkgList;
						for (int j = 0; j < pkgList.length; ++j) {//pkgList 得到该进程下运行的包名
							Log.d(TAG, "It will be killed, package name : " + pkgList[j]);
							am.killBackgroundProcesses(pkgList[j]);
							count++;
						}
					}

				}
			}

			long afterMem = getAvailMemory(context);
			Log.d(TAG, "----------- after memory info : " + afterMem);
			Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
			String string=getStringIdentifier(context,"clear_no") + count + getStringIdentifier(context,"clear_yes")
					+ (afterMem - beforeMem) + "M";
			Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
					.show();
		}
		long getAvailMemory(Context context) {
			// 获取android当前可用内存大小
			ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
			ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
			am.getMemoryInfo(mi);
			//mi.availMem; 当前系统的可用内存
			//return Formatter.formatFileSize(context, mi.availMem);// 将获取的内存大小规格化
			Log.d(TAG, "可用内存---->>>" + mi.availMem / (1024 * 1024));
			return mi.availMem / (1024 * 1024);
		}



		public  void KillRecentAppsAll(Context context) {
			List list = null;
			ActivityManager activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
			if (activityManager != null) {
				list = activityManager.getRunningTasks(1);
			}
			if (list != null && list.iterator().hasNext()) {
				ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) list.iterator().next();
				String packageName = runningTaskInfo.topActivity.getPackageName();
				IActivityManager iActivityManager = ActivityManagerNative.getDefault();
				Integer num = null;
				for (String str : setKillWhiteList()) {
					if (str != null && str.equals(packageName)) {
						num = Integer.valueOf(1);
						break;
					}
				}
				Context packageContext;
				StringBuilder stringBuilder;
				if (num != null || packageName.contains("systemui")) {
					packageContext = getPackageContext(context, PACKAGE_SYSTEMUI);
					stringBuilder = new StringBuilder();

					stringBuilder.append(getApplicationName(packageName,context)+":"+getStringIdentifier(context, "kill_force_whitelist"));
					Toast.makeText(packageContext != null ? packageContext : context, stringBuilder.toString(), Toast.LENGTH_SHORT).show();
					return;
				}
				try {
					iActivityManager.removeTask(runningTaskInfo.id);
				} catch (RemoteException e) {
					e.printStackTrace();
				}
				packageContext =getPackageContext(context, PACKAGE_SYSTEMUI);
				stringBuilder = new StringBuilder();
				stringBuilder.append(getStringIdentifier(context, "kill_force"));
				stringBuilder.append(" ");
				stringBuilder.append(getApplicationName(packageName,context));
				Toast.makeText(packageContext != null ? packageContext : context, stringBuilder.toString(), 0).show();
			}

		}
		private  String getApplicationName(String str,Context context) {
			ApplicationInfo applicationInfo;
			CharSequence applicationLabel;
			PackageManager packageManager = context.getPackageManager();
			try {
				applicationInfo = packageManager.getApplicationInfo(str, 0);
			} catch (PackageManager.NameNotFoundException e) {
				applicationInfo = null;
			}
			if (applicationInfo != null) {
				applicationLabel = packageManager.getApplicationLabel(applicationInfo);
				if (applicationLabel != null) {
				}
			} else {
				applicationLabel = "Unknown";
			}
			return (String) applicationLabel;
		}


		public  void wakeUpDevice() {
			aPowerManager powerManager =
					(aPowerManager) mContext.getSystemService(Context.POWER_SERVICE);
			if (!powerManager.isScreenOn()) {
				powerManager.wakeUp(SystemClock.uptimeMillis());
			}
		}


		   void getLeoMobilemode(Context context,int style) {
			 if (style==0){
				 ActionToastSring(context,"mobile_data_yes");
			 }else if(style== 1){
				 ActionToastSring(context,"mobile_data_no");
			 }
		 }
		public  void toggleMobile() {

			int Styel=0;
			if (Styel==0){
				getLeoMobilemode(mContext,0);
			}else if(Styel== 1){
				ActionToastSring(mContext,"mobile_data_no");
			}
		}
		public  void toggleWifiAP(Context context) {
			ActionToastSring(mContext,"hotspot_mode_yes");

		}
        public  void LeoSysUiShortcut(Intent intent,int str) {

            if (android.os.Build.VERSION.SDK_INT >= 28) {
                if (str==0) {
                    intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
                    intent.setAction("android.settings.DATE_SETTINGS");
                    mContext.startActivity(intent);
                } else if (str==1) {
                    LeoShortcut(mContext,intent, AlarmClock.ACTION_SHOW_ALARMS);
                }else if (str==2) {
                    LeoShortcut(mContext,intent,AlarmClock.ACTION_SET_ALARM);
                }else if (str==3) {
                    LeoShortcut(mContext,intent,AlarmClock.ACTION_SET_TIMER);
                } else if (str==4) {
                    Uri.Builder builder = CalendarContract.CONTENT_URI.buildUpon();
                    builder.appendPath("time");
                    ContentUris.appendId(builder, System.currentTimeMillis());
                    intent.setAction("android.intent.action.VIEW");
                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                    intent.setData(builder.build());
                    mContext.startActivity(intent);
                } else {
                    return;
                }
            }else {
                Log.d("LeoSysUiShortcut","VERSION too low");
            }
        }

        public void LeoShortcut(Context context,Intent mLeoShortcut,String string) {
            mLeoShortcut.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            mLeoShortcut.setAction(string);
            context.startActivity(mLeoShortcut);
        }

	}


}