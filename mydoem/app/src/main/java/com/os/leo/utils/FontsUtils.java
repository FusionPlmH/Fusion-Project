package com.os.leo.utils;


import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.widget.TextView;




public class FontsUtils {
    public static class TypefaceFonts extends MetricAffectingSpan {
        private final Typeface typeface;

        public TypefaceFonts(Typeface typeface) {
            this.typeface = typeface;
        }

        public void updateDrawState(TextPaint ds) {
            setTypeFace(ds, this.typeface);
        }

        public void updateMeasureState(TextPaint paint) {
            setTypeFace(paint, this.typeface);
        }

        private static void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
        }
    }

    public static Typeface setLeoRomFonts(int lock, int key) {

        Typeface font = null;
        switch (key) {
            case 0:
            default:
                if (lock == 0) {
                    font=TypefaceStyleDefault;
                } else if ( lock == 1) {
                    font=DefaultLockClock;
                }
                break;
            case 1:
                font=TypefaceStyle1;
                break;
            case 2:
                font=TypefaceStyle2;
                break;
            case 3:
                font=TypefaceStyle3;
                break;
            case 4:
                font=TypefaceStyle4;
                break;
            case 5:
                font=TypefaceStyle5;
                break;
            case 6:
                font=TypefaceStyle6;
                break;
            case 7:
                font=TypefaceStyle7;
                break;
            case 8:
                font=TypefaceStyle8;
                break;
            case 9:
                font=TypefaceStyle9;
                break;
            case 10:
                font=TypefaceStyle10;
                break;
            case 11:
                font=TypefaceStyle11;
                break;
            case 12:
                font=TypefaceStyle12;
                break;
            case 13:
                font=TypefaceStyle13;
                break;
            case 14:
                font=TypefaceStyle14;
                break;
            case 15:
                font=TypefaceStyle15;
                break;
            case 16:
                font=TypefaceStyle16;
                break;
            case 17:
                font=TypefaceStyle17;
                break;
            case 18:
                font=TypefaceStyle18;
                break;
            case 19:
                font=TypefaceStyle19;
                break;
            case 20:
                font=TypefaceStyle20;
                break;
            case 21:
                font=TypefaceStyle21;
                break;
            case 22:
                font=TypefaceStyle22;
                break;
            case 23:
                font=TypefaceStyle23;
                break;
            case 24:
                font=TypefaceStyle24;
                break;
            case 25:
                font=TypefaceStyle25;
                break;
            case 26:
                font=TypefaceStyle26;
                break;
            case 27:
                font=TypefaceStyle27;
                break;
            case 28:
                font=TypefaceStyle28;
                break;
            case 29:
                font=TypefaceStyle29;
                break;
            case 30:
                font=TypefaceStyle30;
                break;
            case 31:
                font=TypefaceStyle31;
                break;
            case 32:
                font=TypefaceStyle32;
                break;
            case 33:
                font=TypefaceStyle33;
                break;
            case 34:
                font=TypefaceStyle34;
                break;
            case 35:
                font=TypefaceStyle35;
                break;
        }


        return font;
    }


    public static Typeface TypefaceStyleDefault =Typeface.create("sans-serif", Typeface.NORMAL);
    public static Typeface  TypefaceStyle1 =Typeface.create("sans-serif", Typeface.ITALIC);
    public static Typeface  TypefaceStyle2 =Typeface.create("sans-serif", Typeface.BOLD);
    public static Typeface  TypefaceStyle3 =Typeface.create("sans-serif", Typeface.BOLD_ITALIC);
    public static Typeface  TypefaceStyle4 =Typeface.create("sans-serif-light", Typeface.NORMAL);
    public static Typeface  TypefaceStyle5 =Typeface.create("sans-serif-light", Typeface.ITALIC);
    public static Typeface  TypefaceStyle6 =Typeface.create("sans-serif-thin", Typeface.NORMAL);
    public static Typeface  TypefaceStyle7 =Typeface.create("sans-serif-thin", Typeface.ITALIC);
    public static Typeface  TypefaceStyle8=Typeface.create("sans-serif-condensed", Typeface.NORMAL);
    public static Typeface  TypefaceStyle9 =Typeface.create("sans-serif-condensed", Typeface.ITALIC);
    public static Typeface  TypefaceStyle10 =Typeface.create("sans-serif-condensed-light", Typeface.NORMAL);
    public static Typeface TypefaceStyle11 =Typeface.create("sans-serif-condensed-light", Typeface.ITALIC);
    public static Typeface TypefaceStyle12 =Typeface.create("sans-serif-condensed", Typeface.BOLD);
    public static Typeface TypefaceStyle13 =Typeface.create("sans-serif-condensed", Typeface.BOLD_ITALIC);
    public static Typeface TypefaceStyle14 =Typeface.create("sans-serif-medium", Typeface.NORMAL);
    public static Typeface TypefaceStyle15 =Typeface.create("sans-serif-medium", Typeface.ITALIC);
    public static Typeface TypefaceStyle16 =Typeface.create("sans-serif-black", Typeface.NORMAL);
    public static Typeface TypefaceStyle17 =Typeface.create("sans-serif-black", Typeface.ITALIC);
    public static Typeface TypefaceStyle18 =Typeface.create("cursive", Typeface.NORMAL);
    public static Typeface TypefaceStyle19 =Typeface.create("cursive", Typeface.BOLD);
    public static Typeface TypefaceStyle20 =Typeface.create("casual", Typeface.NORMAL);
    public static Typeface TypefaceStyle21 =Typeface.create("serif", Typeface.NORMAL);
    public static Typeface TypefaceStyle22 =Typeface.create("serif", Typeface.ITALIC);
    public static Typeface TypefaceStyle23 =Typeface.create("serif", Typeface.BOLD);
    public static Typeface TypefaceStyle24 =Typeface.create("serif", Typeface.BOLD_ITALIC);
    public static Typeface TypefaceStyle25 =Typeface.createFromFile("system/fonts/leoshouxie.ttf");
    public static Typeface TypefaceStyle26=Typeface.createFromFile("system/fonts/leozlyjt.ttf");
    public static Typeface TypefaceStyle27=Typeface.createFromFile("system/fonts/leolove.ttf");
    public static Typeface TypefaceStyle28=Typeface.createFromFile("system/fonts/leohz.ttf");
    public static Typeface TypefaceStyle29=Typeface.createFromFile("system/fonts/leoguzhuan.ttf");
    public static Typeface TypefaceStyle30=Typeface.createFromFile("system/fonts/leody.ttf");
    public static Typeface TypefaceStyle31=Typeface.createFromFile("system/fonts/leokongxin.ttf");
    public static Typeface TypefaceStyle32=Typeface.createFromFile("system/fonts/leomudan.ttf");
    public static Typeface TypefaceStyle33=Typeface.createFromFile("system/fonts/leofzkt.ttf");
    public static Typeface TypefaceStyle34=Typeface.createFromFile("system/fonts/leofzybkt.ttf");
    public static Typeface TypefaceStyle35=Typeface.createFromFile("system/fonts/leohypinyin.ttf");
    public static Typeface DefaultLockClock=Typeface.createFromFile("system/fonts/Clock2017L.ttf");



}