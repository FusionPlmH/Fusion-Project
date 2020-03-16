package android.app;

import android.Manifest.permission;
import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.media.PlayerBase;
import android.media.session.MediaSession.Token;
import android.net.ProxyInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings.System;
import android.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.TextAppearanceSpan;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.NotificationColorUtil;
import com.android.internal.util.Preconditions;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Set;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoAndroidResource;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarSignalRandomColor;
import static com.os.leo.utils.LeoUserValues.AUTHOR;

public class Notification implements Parcelable {
    public static final AudioAttributes AUDIO_ATTRIBUTES_DEFAULT = new android.media.AudioAttributes.Builder().setContentType(4).setUsage(5).build();
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final int COLOR_DEFAULT = 0;
    public static final int COLOR_INVALID = 1;

    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_ALLOW_DURING_SETUP = "android.allowDuringSetup";
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    public static final String EXTRA_BUILDER_APPLICATION_INFO = "android.appInfo";
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";
    public static final String EXTRA_COLORIZED = "android.colorized";
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_CONTAINS_CUSTOM_VIEW = "android.contains.customView";
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
    public static final String EXTRA_FOREGROUND_APPS = "android.foregroundApps";
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    @Deprecated
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    public static final String EXTRA_MESSAGES = "android.messages";
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";
    @Deprecated
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUBSTITUTE_APP_NAME = "android.substName";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEMPLATE = "android.template";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTOGROUP_SUMMARY = 1024;
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;
    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    @Deprecated
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";
    private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
    private static final int MAX_REPLY_HISTORY = 5;
    public static final int PACKAGE_VISIBILITY_HIDE_ON_INDICATOR = 4;
    public static final int PACKAGE_VISIBILITY_HIDE_ON_LOCKSCREEN = 2;
    public static final int PACKAGE_VISIBILITY_PRIVATE = 1;
    @Deprecated
    public static final int PRIORITY_DEFAULT = 0;
    @Deprecated
    public static final int PRIORITY_HIGH = 1;
    @Deprecated
    public static final int PRIORITY_LOW = -1;
    @Deprecated
    public static final int PRIORITY_MAX = 2;
    @Deprecated
    public static final int PRIORITY_MIN = -2;
    public static final int SEM_FLAG_DISABLE_EDGE_LIGHTING = 32;
    public static final int SEM_FLAG_DISABLE_HEADS_UP = 8;
    public static final int SEM_FLAG_HIDE_ACTION_BUTTON_ICON = 4;
    public static final int SEM_FLAG_HIDE_NOTIFICATION_ICON = 2;
    public static final int SEM_FLAG_HIDE_NOTIFICATION_ON_PANEL = 1;
    public static final int SEM_FLAG_HIDE_SMART_GLOW_LIGHTS = 64;
    public static final int SEM_FLAG_SHOW_SMART_GLOW_LIGHTS = 16;
    public static final int SEM_PRIORITY_DEFAULT = 0;
    public static final int SEM_PRIORITY_HIGH = 10;
    public static final int SEM_PRIORITY_MAX = 20;
    @Deprecated
    public static final int STREAM_DEFAULT = -1;
    private static final String TAG = "Notification";
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;
    public static IBinder processWhitelistToken;
    public static IBinder whitelistToken;

    public ArraySet<PendingIntent> allPendingIntents;
    @Deprecated
    public AudioAttributes audioAttributes;
    @Deprecated
    public int audioStreamType;
    @Deprecated
    public RemoteViews bigContentView;
    public String category;
    public int color;
    public PendingIntent contentIntent;
    @Deprecated
    public RemoteViews contentView;
    private long creationTime;
    @Deprecated
    public int defaults;
    public PendingIntent deleteIntent;
    public Bundle extras;
    public int flags;
    public PendingIntent fullScreenIntent;
    @Deprecated
    public RemoteViews headsUpContentView;
    @Deprecated
    public int icon;
    public int iconLevel;
    @Deprecated
    public Bitmap largeIcon;
    @Deprecated
    public int ledARGB;
    @Deprecated
    public int ledOffMS;
    @Deprecated
    public int ledOnMS;
    private int mBadgeIcon;
    private String mChannelId;
    private int mGroupAlertBehavior;
    private String mGroupKey;
    private Icon mLargeIcon;
    private Object mLock;
    private CharSequence mSettingsText;
    private String mShortcutId;
    private Icon mSmallIcon;
    private String mSortKey;
    private long mTimeout;
    public int number;
    public int parcelDataSize;
    @Deprecated
    public int priority;
    public Notification publicVersion;
    public ComponentName semBadgeTarget;
    public int semFlags;
    public int semMissedCount;
    public int semPriority;
    @Deprecated
    public Uri sound;
    public CharSequence tickerText;
    @Deprecated
    public RemoteViews tickerView;
    @Deprecated
    public long[] vibrate;
    public int visibility;
    public long when;

    public static class Builder {
        public static final String EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT = "android.rebuild.bigViewActionCount";
        public static final String EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT = "android.rebuild.contentViewActionCount";
        public static final String EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT = "android.rebuild.hudViewActionCount";
        private static final int LIGHTNESS_TEXT_DIFFERENCE_DARK = -10;
        private static final int LIGHTNESS_TEXT_DIFFERENCE_LIGHT = 20;
        private static final int MAX_ACTION_BUTTONS = 3;
        private static final boolean USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY = SystemProperties.getBoolean("notifications.only_title", true);
        public static boolean mAllowNotificationColorChange;
        public static boolean mLinkAppNameColor;
        public static int mNotifSummaryTextColor;
        public static int mNotifTitleTextColor;
        private int mActionBarColor;

        private int mBackgroundColor;
        private int mBackgroundColorHint;
        private int mCachedAmbientColor;
        private int mCachedAmbientColorIsFor;
        private int mCachedContrastColor;
        private int mCachedContrastColorIsFor;
        private NotificationColorUtil mColorUtil;
        private Context mContext;
        private int mDefaultColor;
        private int mForegroundColor;
        private boolean mHasHeaderText;
        private int mHeaderTextColr;
        private boolean mIsLegacy;
        private boolean mIsLegacyInitialized;
        private Notification mN;

        private int mTextColorsAreForBackground;
        private Bundle mUserExtras;


        public  int getLeoAndroidResource(String resource ) {
            Log.v(AUTHOR, "LeoRom Constants" );
            return mContext.getResources().getIdentifier(resource, null, "android");
        }
        public   int getLeoRandomColor(Context c) {
            int[] customizedColors = c.getResources().getIntArray(getLeoAndroidResource("array/leo_colors"));
            int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
            return customizedColor;
        }
        public void setNotifTextColor() {
            int color=-14606046;
            int TextColor=color;
            int SummaryTextColor=color;
            int colorstyle= System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_text_random_color", 0);
            int colorrandom=getLeoRandomColor(mContext);
            if(colorstyle==0){
                TextColor = System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_title_text_color", color);
                SummaryTextColor= System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_summary_text_color", color);
            }else if(colorstyle==1){
                TextColor = colorrandom;
                SummaryTextColor =colorrandom;
            }
            mNotifTitleTextColor =  TextColor;
            mNotifSummaryTextColor =  SummaryTextColor;
            mAllowNotificationColorChange = System.getInt(this.mContext.getContentResolver(), "leo_tweaks_unlock_notification_colors", 0)==1;
            mLinkAppNameColor = System.getInt(this.mContext.getContentResolver(), "leo_tweaks_link_app_name_color", 0)==1;
        }
    }


    protected Notification(Parcel in) {
        audioAttributes = in.readParcelable(AudioAttributes.class.getClassLoader());
        audioStreamType = in.readInt();
        bigContentView = in.readParcelable(RemoteViews.class.getClassLoader());
        category = in.readString();
        color = in.readInt();
        contentIntent = in.readParcelable(PendingIntent.class.getClassLoader());
        contentView = in.readParcelable(RemoteViews.class.getClassLoader());
        creationTime = in.readLong();
        defaults = in.readInt();
        deleteIntent = in.readParcelable(PendingIntent.class.getClassLoader());
        extras = in.readBundle();
        flags = in.readInt();
        fullScreenIntent = in.readParcelable(PendingIntent.class.getClassLoader());
        headsUpContentView = in.readParcelable(RemoteViews.class.getClassLoader());
        icon = in.readInt();
        iconLevel = in.readInt();
        largeIcon = in.readParcelable(Bitmap.class.getClassLoader());
        ledARGB = in.readInt();
        ledOffMS = in.readInt();
        ledOnMS = in.readInt();
        mBadgeIcon = in.readInt();
        mChannelId = in.readString();
        mGroupAlertBehavior = in.readInt();
        mGroupKey = in.readString();
        mLargeIcon = in.readParcelable(Icon.class.getClassLoader());
        mShortcutId = in.readString();
        mSmallIcon = in.readParcelable(Icon.class.getClassLoader());
        mSortKey = in.readString();
        mTimeout = in.readLong();
        number = in.readInt();
        parcelDataSize = in.readInt();
        priority = in.readInt();
        publicVersion = in.readParcelable(Notification.class.getClassLoader());
        semBadgeTarget = in.readParcelable(ComponentName.class.getClassLoader());
        semFlags = in.readInt();
        semMissedCount = in.readInt();
        semPriority = in.readInt();
        sound = in.readParcelable(Uri.class.getClassLoader());
        tickerView = in.readParcelable(RemoteViews.class.getClassLoader());
        vibrate = in.createLongArray();
        visibility = in.readInt();
        when = in.readLong();
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(audioAttributes, flags);
        dest.writeInt(audioStreamType);
        dest.writeParcelable(bigContentView, flags);
        dest.writeString(category);
        dest.writeInt(color);
        dest.writeParcelable(contentIntent, flags);
        dest.writeParcelable(contentView, flags);
        dest.writeLong(creationTime);
        dest.writeInt(defaults);
        dest.writeParcelable(deleteIntent, flags);
        dest.writeBundle(extras);
        dest.writeInt(flags);
        dest.writeParcelable(fullScreenIntent, flags);
        dest.writeParcelable(headsUpContentView, flags);
        dest.writeInt(icon);
        dest.writeInt(iconLevel);
        dest.writeParcelable(largeIcon, flags);
        dest.writeInt(ledARGB);
        dest.writeInt(ledOffMS);
        dest.writeInt(ledOnMS);
        dest.writeInt(mBadgeIcon);
        dest.writeString(mChannelId);
        dest.writeInt(mGroupAlertBehavior);
        dest.writeString(mGroupKey);
        dest.writeParcelable(mLargeIcon, flags);
        dest.writeString(mShortcutId);
        dest.writeParcelable(mSmallIcon, flags);
        dest.writeString(mSortKey);
        dest.writeLong(mTimeout);
        dest.writeInt(number);
        dest.writeInt(parcelDataSize);
        dest.writeInt(priority);
        dest.writeParcelable(publicVersion, flags);
        dest.writeParcelable(semBadgeTarget, flags);
        dest.writeInt(semFlags);
        dest.writeInt(semMissedCount);
        dest.writeInt(semPriority);
        dest.writeParcelable(sound, flags);
        dest.writeParcelable(tickerView, flags);
        dest.writeLongArray(vibrate);
        dest.writeInt(visibility);
        dest.writeLong(when);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public static final Creator<Notification> CREATOR = new Creator<Notification>() {
        @Override
        public Notification createFromParcel(Parcel in) {
            return new Notification(in);
        }

        @Override
        public Notification[] newArray(int size) {
            return new Notification[size];
        }
    };
}
