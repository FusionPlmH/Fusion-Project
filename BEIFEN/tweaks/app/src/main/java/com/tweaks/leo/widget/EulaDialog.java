package com.tweaks.leo.widget;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.AppCompatCheckBox;
import android.view.View;
import android.webkit.WebView;
import com.tweaks.leo.R;

public class EulaDialog extends AlertDialog.Builder {
    private AlertDialog mDialog;

    private final String PREFS_NAME ="welcome";
    private AppCompatCheckBox check;
    public EulaDialog(Context context) {
        super(context);

        initEulaDialog(context);
    }


    private void initEulaDialog(final Context context) {
        View welmsg = View.inflate(context,R.layout.dialog_webview, null);
        check = (AppCompatCheckBox) welmsg.findViewById(R.id.check_ok);
        setView(welmsg);
         setTitle((CharSequence) "使用须知");
        ((WebView) welmsg.findViewById(R.id.webview)).loadUrl("file:///android_asset/LeoRom_eula.html");
        setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                String checkBoxResult = "NOT checked";
                if (check.isChecked())  checkBoxResult = "checked";
                SharedPreferences settings = context.getSharedPreferences(PREFS_NAME, 0);
                SharedPreferences.Editor editor = settings.edit();
                editor.putString("skipMessage", checkBoxResult);
                editor.commit();
                return;
            }

        });

        SharedPreferences settings = context.getSharedPreferences(PREFS_NAME, 0);
        String skipMessage = settings.getString("skipMessage", "NOT checked");
        mDialog = create();
       //mDialog.show();
        mDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        mDialog.setCanceledOnTouchOutside(false);
        if (!skipMessage.equalsIgnoreCase("checked") ) mDialog.show();
        if (!skipMessage.equalsIgnoreCase("checked") )mDialog.setCancelable(false);

    }
}