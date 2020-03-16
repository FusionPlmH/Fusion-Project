package com.salt.config.tweaks.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.salt.config.MainActivity;

public class HomeActivity extends Activity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

}
