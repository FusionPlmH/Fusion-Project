package com.leo.systemui;

import android.content.Context;
import android.icu.util.Calendar;
import android.util.AttributeSet;
import android.widget.TextView;

public class Leodome extends TextView {
    private Context mContext;


    public Leodome(Context context) {
        this(context, null);
    }

    public Leodome(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext=context;
        setText(getSeason());



    }


    public String getSeason(){
        Calendar cal = Calendar.getInstance();
        int i = cal.get(Calendar.MONTH);
        switch (i) {
            case 1:
                return "冬季";
            case 2:
                return "春季";
            case 3:
                return "春季";
            case 4:
                return "春季";
            case 5:
                return "夏季";
            case 6:
                return "夏季";
            case 7:
                return "夏季";
            case 8:
                return "秋季";
            case 9:
                return "秋季";
            case 10:
                return "秋季";
            case 11:
                return "冬季";
            default:
                return "冬季";
        }
    }
}