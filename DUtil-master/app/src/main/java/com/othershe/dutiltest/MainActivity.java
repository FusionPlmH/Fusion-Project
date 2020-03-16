package com.othershe.dutiltest;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.othershe.dutil.DUtil;
import com.othershe.dutil.callback.SimpleUploadCallback;
import com.othershe.dutil.callback.UploadCallback;

import java.io.ByteArrayOutputStream;
import java.io.File;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private static final int PERMISSIONS_REQUEST = 1;
    private Button singleTask, taskManage, serviceTask, upload;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        singleTask = (Button) findViewById(R.id.single_task);
        taskManage = (Button) findViewById(R.id.task_manage);
        serviceTask = (Button) findViewById(R.id.service_task);
        upload = (Button) findViewById(R.id.upload);

        upload.setOnClickListener(this);


        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE)
                    != PackageManager.PERMISSION_GRANTED) {
                if (ActivityCompat.shouldShowRequestPermissionRationale(this, Manifest.permission.WRITE_EXTERNAL_STORAGE)) {
                    Toast.makeText(this, "下载需要文件存储的权限!", Toast.LENGTH_SHORT).show();
                } else {
                    ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE},
                            PERMISSIONS_REQUEST);
                }
            } else {
                singleTask.setOnClickListener(this);
                taskManage.setOnClickListener(this);
                serviceTask.setOnClickListener(this);
            }
        } else {
            singleTask.setOnClickListener(this);
            taskManage.setOnClickListener(this);
            serviceTask.setOnClickListener(this);
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.single_task:
                startActivity(new Intent(this, SingleTaskActivity.class));
                break;
            case R.id.task_manage:
                startActivity(new Intent(this, TaskManageActivity.class));
                break;
            case R.id.service_task:
                startActivity(new Intent(this, ServiceTaskActivity.class));
                break;
            case R.id.upload:
             //   testUpload();
                break;
        }
    }



    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode == PERMISSIONS_REQUEST) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                singleTask.setOnClickListener(this);
                taskManage.setOnClickListener(this);
                serviceTask.setOnClickListener(this);
            } else {
                Toast.makeText(this, "没有文件存储的权限!", Toast.LENGTH_SHORT).show();
            }
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }
}
