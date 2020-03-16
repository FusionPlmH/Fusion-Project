package com.leo.salt.utils;


import android.util.Log;

import com.leo.salt.tools.constants.KeepShellPublic;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public  class UnzipFileInfo {
	public static void UnzipFileInfo(String zipPtath, String outputDirectory){
		try {
			unzipFile(zipPtath,outputDirectory);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private static String TAG  = "Leo  unzip";
	private static void unzipFile(String zipPtath, String outputDirectory)throws IOException {
		Log.i(TAG,"unzip"  + zipPtath + "\n" + "unzip" + outputDirectory );
		// 创建解压目标目录
		File file = new File(outputDirectory);
		// 如果目标目录不存在，则创建
		if (!file.exists()) {
			file.mkdirs();
		}
		InputStream inputStream = new FileInputStream(zipPtath); ;
		ZipInputStream zipInputStream = new ZipInputStream(inputStream);
		ZipEntry zipEntry = zipInputStream.getNextEntry();
		byte[] buffer = new byte[1024 * 1024];
		int count = 0;
		while (zipEntry != null) {
			Log.i(TAG,"unzip" +zipEntry );
			if (!zipEntry.isDirectory()) {  //如果是一个文件
				// 如果是文件
				String fileName = zipEntry.getName();
				Log.i(TAG,"unzip" + fileName);
				fileName = fileName.substring(fileName.lastIndexOf("/") + 1);  //截取文件的名字 去掉原文件夹名字
				Log.i(TAG,"unzip" + fileName);
				file = new File(outputDirectory + File.separator + fileName);  //放到新的解压的文件路径

				file.createNewFile();
				FileOutputStream fileOutputStream = new FileOutputStream(file);
				while ((count = zipInputStream.read(buffer)) > 0) {
					fileOutputStream.write(buffer, 0, count);
				}
				fileOutputStream.close();

			}

			// 定位到下一个文件入口
			zipEntry = zipInputStream.getNextEntry();
			Log.i(TAG,"unzip" + zipEntry );
		}
		zipInputStream.close();
		Log.i(TAG,"unzip ok");
		KeepShellPublic.INSTANCE.doCmdSync("rm -f "+zipPtath);
	}
}
