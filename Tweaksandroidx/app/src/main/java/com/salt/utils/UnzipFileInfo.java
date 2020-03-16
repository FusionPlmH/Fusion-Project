package com.salt.utils;
import android.util.Log;
import com.salt.script.KeepShellPublic;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
public  class UnzipFileInfo {
	static void UnZipFolder(String zipFileString, String outPathString) throws IOException {
		ZipInputStream inZip = new ZipInputStream(new FileInputStream(zipFileString));
		ZipEntry zipEntry;
		String szName = "";
		while ((zipEntry = inZip.getNextEntry()) != null) {
			szName = zipEntry.getName();
			if (zipEntry.isDirectory()) {
				//获取部件的文件夹名
				szName = szName.substring(0, szName.length() - 1);
				File folder = new File(outPathString + File.separator + szName);
				folder.mkdirs();
			} else {
				Log.e(TAG, outPathString + File.separator + szName);
				File file = new File(outPathString + File.separator + szName);
				if (!file.exists()) {
					Log.e(TAG, "Create the file:" + outPathString + File.separator + szName);
					file.getParentFile().mkdirs();
					file.createNewFile();
				}
				// 获取文件的输出流
				FileOutputStream out = new FileOutputStream(file);
				int len;
				byte[] buffer = new byte[1024];
				// 读取（字节）字节到缓冲区
				while ((len = inZip.read(buffer)) != -1) {
					// 从缓冲区（0）位置写入（字节）字节
					out.write(buffer, 0, len);
					out.flush();
				}
				out.close();
			}
		}
		inZip.close();
	KeepShellPublic.INSTANCE.doCmdSync("rm -f "+zipFileString);
	}

	public static void UnzipFileInfo(String zipPtath, String outputDirectory){
		try {
			UnZipFolder(zipPtath,outputDirectory);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private static String TAG  = "Leo unzip";
}
