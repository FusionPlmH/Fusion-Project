package com.android.leo;

import android.os.Bundle;

import android.support.v7.app.AppCompatActivity;

import android.widget.Toast;




public class MainActivity extends AppCompatActivity {
    private CharSequence mTogeCarrierText="中国4G";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        sdsadsa();
    }

public void sdsadsa(){
    String Str = String.valueOf(mTogeCarrierText);
    Toast.makeText(this,Str,Toast.LENGTH_SHORT).show();
}

}
