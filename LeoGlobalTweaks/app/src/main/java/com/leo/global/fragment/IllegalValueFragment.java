package com.leo.global.fragment;


import android.app.AlertDialog;
import android.app.Dialog;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentTransaction;

import com.leo.global.tweaks.R;


public class IllegalValueFragment extends DialogFragment {
    private String mIllegalValue;

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        AlertDialog.Builder mIllegalBuilder = new AlertDialog.Builder(getActivity());
        mIllegalBuilder.setTitle(R.string.illegal_value_title);
        mIllegalBuilder.setMessage(String.format(getString(R.string.text_illegal_value), mIllegalValue));

        mIllegalBuilder.setPositiveButton(R.string.back_button_custom, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                //go back to custom dpi dialog upon positive button click
                CustomDpiFragment mCustom = new CustomDpiFragment();
                FragmentTransaction ft = getFragmentManager().beginTransaction();
                ft.add(mCustom, "custom popup");
                ft.commitAllowingStateLoss();

            }
        });

        mIllegalBuilder.create();
        Dialog mIllegalDialog = mIllegalBuilder.create();
        return mIllegalDialog;
    }
    public void mUpdateText (String inputValue){
        //recieva value from the EditText on the custom dpi dialog. this value will be uised in string format in the message of the dialog as an illegal value that was entered
        mIllegalValue=inputValue;
    }
}
