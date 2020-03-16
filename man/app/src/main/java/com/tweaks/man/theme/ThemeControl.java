/*
 *     Copyright (c) 2015 GuDong
 *
 *     Permission is hereby granted, free of charge, to any person obtaining a copy
 *     of this software and associated documentation files (the "Software"), to deal
 *     in the Software without restriction, including without limitation the rights
 *     to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *     copies of the Software, and to permit persons to whom the Software is
 *     furnished to do so, subject to the following conditions:
 *
 *     The above copyright notice and this permission notice shall be included in all
 *     copies or substantial portions of the Software.
 *
 *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *     SOFTWARE.
 */

package com.tweaks.man.theme;

import android.content.Context;

import com.tweaks.man.R;


/**
 * 主题控制类
 * Created by mao on 7/16/15.
 */
public class ThemeControl {
    private Context mContext;
    private int mCurrentTheme;
    public ThemeControl(Context context){
        this.mContext = context;
        isChanged(); // invalidate stored booleans

    }

    public int getTheme(Context context){
        return Utils.getIntPreference(context, "theme", R.style.LeoTheme_Default);
    }

    public void setTheme(int theme){
        Utils.putIntPreference(mContext, "theme", theme);
    }

    /**
     * 记住用户选择的主题颜色对应的position
     * @param position 用户已选择position
     */
    public void setThemePosition(int position){
        Utils.putIntPreference(mContext, "themePosition", position);
    }

    public int getThemePosition(){
        return Utils.getIntPreference(mContext,"themePosition",0);
    }

    public boolean isChanged() {
        int currentTheme = getTheme(mContext);
        boolean isChange = mCurrentTheme != currentTheme;
        mCurrentTheme = currentTheme;
        return isChange;
    }

    /**
     * 自定义的主题数组，每一种颜色对应了夜间模式和日间模式
     * 目前夜间模式已经不做了，所以对应的主题在目前项目中是用不到的
     * @return
     */
    public static int[]themeArr(){
        return new int[]{
                R.style.LeoTheme_Default,
                R.style.LeoTheme_White,
                R.style.LeoTheme_Red,
                R.style.LeoTheme_Pink,
                R.style.LeoTheme_Purple,
                R.style.LeoTheme_Blue,
                R.style.LeoTheme_Green,
                R.style.LeoTheme_0range,
                R.style.LeoTheme_Grey,
                R.style.LeoTheme_BlueGrey,
                R.style.LeoTheme_Teal,
                R.style.LeoTheme_DeepPurple,
                R.style.LeoTheme_Lime,
                R.style.LeoTheme_Indigo,
                R.style.LeoTheme_Cyan,
                R.style.LeoTheme_LightDark,
                R.style.LeoTheme_DeepOrange,
                R.style.DarkAppTheme,
                R.style.DarkAppTheme,
                R.style.DarkAppTheme,
        };
    }

}
