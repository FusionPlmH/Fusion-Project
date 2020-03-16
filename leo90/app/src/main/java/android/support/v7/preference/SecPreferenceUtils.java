package android.support.v7.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.provider.Settings.Global;
import android.util.TypedValue;
import android.widget.TextView;


public class SecPreferenceUtils {
    public static void applySummaryColor(Preference preference, boolean z) {
        if (preference != null) {
            TypedValue typedValue = new TypedValue();
            Context context = preference.getContext();
            if (context != null) {
                ColorStateList colorStateList;
                if (z) {
                    colorStateList = context.getResources().getColorStateList(2131100006);
                } else {
                    context.getTheme().resolveAttribute(16842808, typedValue, true);
                    colorStateList = context.getResources().getColorStateList(typedValue.resourceId);
                }
                if (colorStateList != null) {

                }
            }
        }
    }

    public static void applyTitleLargerTextIfNeeded(TextView textView) {
        if (textView != null) {
            Context context = textView.getContext();
            int i = Global.getInt(context.getContentResolver(), "font_size", 2);
            if (Global.getInt(context.getContentResolver(), "accessiblity_font_switch", 0) == 1 && i >= 6) {

            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x006a A:{Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d, all -> 0x008b }} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x002a A:{LOOP_START, Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d, all -> 0x008b }, LOOP:1: B:12:0x002a->B:45:0x002a} */
    public static java.util.ArrayList<java.lang.String> getRemovePreferenceInOtherMode(android.content.Context r11, int r12, java.lang.String r13) {
        /*
        r0 = 0;
        r1 = 0;
        r2 = 0;
        r3 = 0;
        r4 = new java.util.ArrayList;
        r4.<init>();
        if (r11 != 0) goto L_0x000d;
    L_0x000b:
        r5 = 0;
        return r5;
    L_0x000d:
        r5 = r11.getResources();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r5 = r5.getXml(r12);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r0 = r5;
        r5 = android.util.Xml.asAttributeSet(r0);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        if (r0 == 0) goto L_0x0085;
    L_0x001c:
        r6 = r0.next();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r7 = r6;
        r8 = 1;
        r9 = 2;
        if (r6 == r9) goto L_0x0028;
    L_0x0025:
        if (r7 == r8) goto L_0x0028;
    L_0x0027:
        goto L_0x001c;
    L_0x0028:
        if (r7 != r9) goto L_0x006a;
    L_0x002a:
        r6 = r0.next();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r7 = r6;
        if (r6 == r8) goto L_0x0085;
    L_0x0031:
        r6 = 3;
        if (r7 == r6) goto L_0x002a;
    L_0x0034:
        r6 = 4;
        if (r7 != r6) goto L_0x0038;
    L_0x0037:
        goto L_0x002a;
    L_0x0038:
        r6 = r0.getName();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r1 = r6;
        r6 = com.android.internal.R.styleable.Preference;	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r6 = r11.obtainStyledAttributes(r5, r6);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r9 = 6;
        r9 = r6.getString(r9);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r2 = r9;
        r9 = com.android.settings.R.styleable.ShowSettingsInOtherMode;	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r9 = r11.obtainStyledAttributes(r5, r9);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r10 = 0;
        r10 = r9.getString(r10);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r3 = r10;
        if (r3 != 0) goto L_0x005a;
    L_0x0057:
        r10 = "";
        r3 = r10;
    L_0x005a:
        r10 = r3.contains(r13);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        if (r10 != 0) goto L_0x0063;
    L_0x0060:
        r4.add(r2);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
    L_0x0063:
        r6.recycle();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r9.recycle();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        goto L_0x002a;
    L_0x006a:
        r6 = new java.lang.RuntimeException;	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r8 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r8.<init>();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r9 = r0.getPositionDescription();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r8.append(r9);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r9 = ": No start tag found!";
        r8.append(r9);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r8 = r8.toString();	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        r6.<init>(r8);	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
        throw r6;	 Catch:{ XmlPullParserException -> 0x0097, IOException -> 0x008d }
    L_0x0085:
        if (r0 == 0) goto L_0x008a;
    L_0x0087:
        r0.close();
    L_0x008a:
        return r4;
    L_0x008b:
        r5 = move-exception;
        goto L_0x00a1;
    L_0x008d:
        r5 = move-exception;
        r4 = 0;
        r6 = new java.lang.RuntimeException;	 Catch:{ all -> 0x008b }
        r7 = "Error parsing Preference xml in UPSM";
        r6.<init>(r7, r5);	 Catch:{ all -> 0x008b }
        throw r6;	 Catch:{ all -> 0x008b }
    L_0x0097:
        r5 = move-exception;
        r4 = 0;
        r6 = new java.lang.RuntimeException;	 Catch:{ all -> 0x008b }
        r7 = "Error parsing Preference xml in UPSM";
        r6.<init>(r7, r5);	 Catch:{ all -> 0x008b }
        throw r6;	 Catch:{ all -> 0x008b }
    L_0x00a1:
        if (r0 == 0) goto L_0x00a6;
    L_0x00a3:
        r0.close();
    L_0x00a6:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.preference.SecPreferenceUtils.getRemovePreferenceInOtherMode(android.content.Context, int, java.lang.String):java.util.ArrayList");
    }
}
