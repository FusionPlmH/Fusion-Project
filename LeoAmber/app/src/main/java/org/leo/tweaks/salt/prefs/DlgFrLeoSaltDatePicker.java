
/*
 * Grouxho - espdroids.com - 2018

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.

 */


package org.leo.tweaks.salt.prefs;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.util.Log;
import android.widget.DatePicker;

import com.LeoSalt.settings.utils.Common;

import java.util.Calendar;

public class DlgFrLeoSaltDatePicker extends DialogFragment {

    private String mkey;
    private String mValue;
    private DlgFrLeoSaltDatePicker.OnLeoSaltDateSetListener mCallBack;

    private OnLeoSaltDateSetListener mCallback;

    public DlgFrLeoSaltDatePicker(){}


    public static DlgFrLeoSaltDatePicker newInstance(String key, String value){

        DlgFrLeoSaltDatePicker ret = new DlgFrLeoSaltDatePicker();
        Bundle bundle = new Bundle();
        bundle.putString("key",key);
        bundle.putString("val",value);
        ret.setArguments(bundle);
        return ret;
    }

    public void setOnLeoSaltDateSetListener(OnLeoSaltDateSetListener callback){
        mCallback=callback;
    }


    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }

    public interface OnLeoSaltDateSetListener{
        void onLeoSaltDateSet(String value, String key);
    }



    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState){
        super.onActivityCreated(savedInstanceState);
        if(mCallback==null) mCallback=(DlgFrLeoSaltDatePicker.OnLeoSaltDateSetListener) getFragmentManager().findFragmentByTag(Common.TAG_PREFSSCREEN_FRAGMENT);
    }

    @Override
    public Dialog onCreateDialog(Bundle state) {
            mkey=getArguments().getString("key");
            mValue=getArguments().getString("val");

        int year = 0;
        int month = 0;
        int day = 0;
        Calendar now = Calendar.getInstance();
        if(mValue.isEmpty()){
            year = now.get(Calendar.YEAR);
            month = now.get(Calendar.MONTH);
            day = now.get(Calendar.DAY_OF_MONTH);
        }else{
            String[] arr= mValue.split("/");
            try{
                day = Integer.valueOf(arr[0]);
                month = Integer.valueOf(arr[1])-1;
                year = Integer.valueOf(arr[2]);
            }catch (NumberFormatException casque){
                System.out.println("Wrong date format (LeoSaltsettings)" + casque);
            }
        }
            DatePickerDialog dpd = new DatePickerDialog(getActivity(), new DatePickerDialog.OnDateSetListener() {
                @Override
                public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                    if(mCallback!=null) mCallback.onLeoSaltDateSet(String.valueOf(dayOfMonth)+"/"+String.valueOf(monthOfYear+1)+"/"+String.valueOf(year),mkey);
                    else {
                        Log.d("LeoSaltsettings", "null callback in datepicker");
                    }
                }
            }, year, month, day);
        return dpd;
    }

}
