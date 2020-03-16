package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.net.sip.SipSession;
import android.os.SystemProperties;
import android.provider.Settings.Global;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;

import com.android.keyguard.KeyguardUpdateMonitor;

import com.android.systemui.Rune;


public class KeyguardUsimTextView extends TextView  {

    private KeyguardUpdateMonitor mUpdateMonitor;

    public KeyguardUsimTextView(Context context) {
        this(context, null);
    }

    public KeyguardUsimTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

    }

    private CharSequence getCarrierString(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence == null || charSequence2 != null) ? (charSequence == null || charSequence2 == null) ? (charSequence != null || charSequence2 == null) ? "" : charSequence2 : charSequence2.length() == 0 ? charSequence : charSequence : charSequence;
    }


}
