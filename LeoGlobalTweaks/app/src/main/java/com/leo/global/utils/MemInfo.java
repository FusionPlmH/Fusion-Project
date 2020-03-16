package com.leo.global.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;
import android.util.Log;

import com.leo.global.tweaks.LeoAmberApplication;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.leo.global.tweaks.LeoAmberApplication.getContext;

public class MemInfo {

    public static String getTotsalMemory() {
        String str1 = "/proc/meminfo";// 系统内存信息文件
        String str2;
        String[] arrayOfString;
        long initial_memory = 0;
        try {
            FileReader localFileReader = new FileReader(str1);
            BufferedReader localBufferedReader = new BufferedReader(localFileReader, 8192);
            str2 = localBufferedReader.readLine();// 读取meminfo第一行，系统总内存大小
            arrayOfString = str2.split("\\s+");
            for (String num : arrayOfString) {
                Log.i(str2, num + "\t");
            }
            // 获得系统总内存，单位是KB
            int i = Integer.valueOf(arrayOfString[1]).intValue();
            //int值乘以1024转换为long类型
            initial_memory = new Long((long)i*1024);
            localBufferedReader.close();
        } catch (IOException e) {
        }
        return Formatter.formatFileSize(LeoAmberApplication.getContext(), initial_memory);// Byte转换为KB或者MB，内存大小规格化
    }

    public static String getAvailMemory() {// 获取android当前可用内存大小

        ActivityManager am = (ActivityManager) LeoAmberApplication.getContext().getSystemService(Context.ACTIVITY_SERVICE);

        ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();

        am.getMemoryInfo(mi);//mi.availMem; 当前系统的可用内存
        return Formatter.formatFileSize(LeoAmberApplication.getContext(), mi.availMem);// 将获取的内存大小规格化

    }
    public static String getRAM(){

        return "总计: "+getTotsalMemory()+"\n"+"可用: "+getAvailMemory();
    }
    public static  String ObtainFSPartSize(String PartitionPath) {
        StatFs extraStat = new StatFs(new File(PartitionPath).getPath());
        long eBlockSize = (long) extraStat.getBlockSize();
        long eTotalBlocks = (long) extraStat.getBlockCount();
        return ("总计: "+Formatter.formatFileSize(LeoAmberApplication.getContext(), eTotalBlocks * eBlockSize)+"\n"+"已用: "+Formatter.formatFileSize(LeoAmberApplication.getContext(), (eTotalBlocks * eBlockSize) - (((long) extraStat.getAvailableBlocks()) * eBlockSize))+"\n"+"可用: "+getRomAvailableSize(PartitionPath));
    }
    public static String getRomAvailableSize(String PartitionPath) {

        StatFs stat = new StatFs(new File(PartitionPath).getPath());
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return Formatter.formatFileSize(LeoAmberApplication.getContext(), blockSize * availableBlocks);
    }


    }
