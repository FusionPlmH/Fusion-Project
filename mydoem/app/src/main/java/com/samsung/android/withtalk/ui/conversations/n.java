package com.samsung.android.withtalk.ui.conversations;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.os.leo.utils.CityLocator;


import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;


public class n extends RelativeLayout {
    private TextView mLeoMmsCity;
    private Context O;
    public n(Context context) {
        super(context);
        O = context;
        setLeoRomMmsCity();
        getCity();
    }
    private TextView n;
    private TextView w;

    private TextView C;

    public void  setLeoRomMmsCity(){



            LeoSettings(O);


        CharSequence charSequence ;
        int color=setLeoUesrCityColorEnabled;
        int Citycolor=setLeoUesrMMSCityColor;
        int clockcolor=setLeoUesrMMSDateColor;
        int namecolor=setLeoUesrMMSNameColor;
        int ContentColor=setLeoUesrMMSContentColor;
        int defaultcolor=O.getColor(O.getResources().getIdentifier("theme_list_sub_text_color", "color", O.getPackageName()));
        int defaultcolor2= O.getColor(O.getResources().getIdentifier("theme_list_main_text_color", "color", O.getPackageName()));
        if(color==0){
            Citycolor=defaultcolor;
            clockcolor=defaultcolor;
            namecolor=defaultcolor2;
            ContentColor=defaultcolor;
        }
        if (setLeoUesrMMSCityEnabled) {
            String[] z = z();
        if (z != null && z.length > 0) {
            charSequence = z[0];
            TextView textView = this.mLeoMmsCity;
            textView.setText(CityLocator.getPhoneLocation(O,charSequence,true));
            textView.setTypeface(setLeoRomFonts(0, setLeoUesrMMSCityFont));
            textView.setTextColor(Citycolor);
            textView.setTextSize(setLeoUesrMMSCitySize);
            }
        }

        n.setTypeface(setLeoRomFonts(0,setLeoUesrMMSDateFont));
        n.setTextColor(clockcolor);
        n.setTextSize(setLeoUesrMMSDateSize);
        w.setTypeface(setLeoRomFonts(0,setLeoUesrMMSNameFont));
        w.setTextColor(namecolor);
        w.setTextSize(setLeoUesrMMSNameSize);
        C.setTypeface(setLeoRomFonts(0, setLeoUesrMMSContentFont));
        C.setTextColor(ContentColor);
        C.setTextSize(setLeoUesrMMSContentSize);
    }
    public void  getCity(){
        Handler mHandler = new Handler();
        SettingsObserver settingsObserver = new SettingsObserver(mHandler);
        settingsObserver.observe();
    }

    class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
        }
        void observe() {

            ContentResolver resolver = O.getContentResolver();

            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsCityPositionEnabled()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsCityPositionColor()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsCityPositionSize()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsCityPositionFont()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsDateColor()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsDateSize()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor( getLeoMmsDateFont()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsAvatarColor()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsAvatarSize()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor( getLeoMmsAvatarFont()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsContentColor()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoMmsContentSize()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor( getLeoMmsContentFont()), false,
                    this);
        }
        public void onChange(boolean mBoolean) {
            setLeoRomMmsCity();
        }
    }
    public String[] z() {

        return new String[0];
    }

}