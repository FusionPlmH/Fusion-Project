package org.leo.forest.digital;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class  MainActivity extends Activity{
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = new Intent();
        intent.setPackage("com.samsung.android.forest");
        intent.setAction("com.samsung.android.forest.OPEN_HOME");
        startActivity(intent );
        finish();
    }
}
