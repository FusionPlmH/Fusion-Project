package com.tweaks.leo.utils.root;

import android.os.AsyncTask;


public class SuTask extends AsyncTask<Void, Void, Boolean> {
    private OnSuCompletedListener mOnSuCompletedListener;

    @Override
    protected Boolean doInBackground(Void... params) {
        RootUtils.rootAccess();
        return  RootUtils.rootAccess();
    }

    @Override
    protected void onPostExecute(Boolean isGranted) {
        if (mOnSuCompletedListener != null) {

            mOnSuCompletedListener.onTaskCompleted(isGranted);

        }
    }

    public void setOnSuCompletedListener(OnSuCompletedListener listener) {
        mOnSuCompletedListener = listener;
    }

    public interface OnSuCompletedListener {
        void onTaskCompleted(boolean isGranted);
    }
}