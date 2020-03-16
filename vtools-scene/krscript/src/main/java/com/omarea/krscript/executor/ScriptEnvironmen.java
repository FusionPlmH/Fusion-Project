package com.omarea.krscript.executor;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Environment;

import com.omarea.common.shared.FileWrite;
import com.omarea.common.shared.MagiskExtend;
import com.omarea.common.shell.KeepShellPublic;

import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;

public class ScriptEnvironmen {
    private static final String ASSETS_FILE = "file:///android_asset/";
    private static boolean inited = false;
    private static String environmentPath = "";
    // 此目录将添加到PATH尾部，作为应用程序提供的拓展程序库目录，如有需要则需要在初始化executor.sh之前为该变量赋值
    private static String TOOKIT_DIR = "";

    private static boolean init(Context context) {
        return init(context, "kr-setState/executor.sh", "kr-setState/toolkit");
    }

    /**
     * 初始化执行器
     *
     * @param context  Context
     * @param executor 执行器在Assets中的位置
     * @return 是否初始化成功
     */
    public static boolean init(Context context, String executor, String toolkitDir) {
        if (inited) {
            return true;
        }

        try {
            if (toolkitDir != null && !toolkitDir.isEmpty()) {
                TOOKIT_DIR = new ExtractAssets(context).extractResources(toolkitDir);
            }

            String fileName = executor;
            if (fileName.startsWith(ASSETS_FILE)) {
                fileName = fileName.substring(ASSETS_FILE.length());
            }

            InputStream inputStream = context.getAssets().open(fileName);
            byte[] bytes = new byte[inputStream.available()];
            long length = inputStream.read(bytes, 0, bytes.length);
            String envShell = new String(bytes, Charset.defaultCharset()).replaceAll("\r", "");

            HashMap<String, String> environment = getEnvironment(context);
            for (String key : environment.keySet()) {
                String value = environment.get(key);
                if (value == null) {
                    value = "";
                }
                envShell = envShell.replace("$({" + key + "})", value);
            }
            String outputPathAbs = FileWrite.INSTANCE.getPrivateFilePath(context, fileName);
            envShell = envShell.replace("$({EXECUTOR_PATH})", outputPathAbs);


            inited = FileWrite.INSTANCE.writePrivateFile(envShell.getBytes(Charset.defaultCharset()), fileName, context);
            if (inited) {
                environmentPath = outputPathAbs;
            }

            return inited;
        } catch (Exception ex) {
            return false;
        }
    }

    public static String md5(String string) {
        if (string.isEmpty()) {
            return "";
        }

        MessageDigest md5 = null;
        try {
            md5 = MessageDigest.getInstance("MD5");
            byte[] bytes = md5.digest(string.getBytes());
            StringBuilder result = new StringBuilder();
            for (byte b : bytes) {
                String temp = Integer.toHexString(b & 0xff);
                if (temp.length() == 1) {
                    temp = "0" + temp;
                }
                result.append(temp);
            }
            return result.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return "";
    }

    /**
     * 写入缓存（脚本代码存入脚本文件）
     *
     * @param context
     * @param script
     * @return
     */
    private static String createShellCache(Context context, String script) {
        String md5 = md5(script);
        String outputPath = "/kr-setState/cache/" + md5 + ".sh";
        if (new File(outputPath).exists()) {
            return outputPath;
        }

        byte[] bytes = ("#!/system/bin/sh\n\n" + script)
                .replaceAll("\r\n", "\n")
                .replaceAll("\r\t", "\t")
                .replaceAll("\r", "\n")
                .getBytes();
        if (FileWrite.INSTANCE.writePrivateFile(bytes, outputPath, context)) {
            return FileWrite.INSTANCE.getPrivateFilePath(context, outputPath);
        }
        return "";
    }

    /**
     * 执行脚本
     *
     * @param context
     * @param fileName
     * @return
     */
    private static String extractScript(Context context, String fileName) {
        if (fileName.startsWith(ASSETS_FILE)) {
            fileName = fileName.substring(ASSETS_FILE.length());
        }
        return FileWrite.INSTANCE.writePrivateShellFile(fileName, fileName, context);
    }

    public static String getExecuteScript(Context context, String script) {
        if (!inited) {
            init(context);
        }

        if (script == null || script.isEmpty()) {
            return "";
        }

        String script2 = script.trim();
        String startPath = getStartPath(context);
        String cachePath = "";
        if (script2.startsWith(ASSETS_FILE)) {
            cachePath = extractScript(context, script2);
            if (cachePath == null) {
                cachePath = script;
                // String error = context.getString(R.string.script_losted) + setState;
                // Toast.makeText(context, error, Toast.LENGTH_LONG).show();
            }
        } else {
            cachePath = createShellCache(context, script);
        }

        return environmentPath + " \"" + cachePath + "\"" + " \"" + startPath + "\"";
    }

    public static String executeResultRoot(Context context, String script) {
        if (!inited) {
            init(context);
        }

        if (script == null || script.isEmpty()) {
            return "";
        }

        String script2 = script.trim();
        String path = "";
        if (script2.startsWith(ASSETS_FILE)) {
            path = extractScript(context, script2);
        } else {
            path = createShellCache(context, script);
        }
        return executeShell(context, path);
    }

    private static String executeShell(Context context, String scriptPath) {
        if (!inited) {
            init(context);
        }

        return KeepShellPublic.INSTANCE.doCmdSync(environmentPath + " \"" + scriptPath + "\"" + " \"" + getStartPath(context) + "\"");
    }

    private static String getStartPath(Context context) {
        String dir = FileWrite.INSTANCE.getPrivateFileDir(context);
        if (dir.endsWith("/")) {
            return dir.substring(0, dir.length() - 1);
        }
        return dir;
    }

    /**
     * 获取框架的环境变量
     *
     * @param context
     * @return
     */
    private static HashMap<String, String> getEnvironment(Context context) {
        final File dir = context.getFilesDir();
        final String dirUri = dir.getAbsolutePath();
        HashMap<String, String> params = new HashMap<>();

        params.put("TOOLKIT", TOOKIT_DIR);
        if (MagiskExtend.moduleInstalled()) {
            String magiskPath = MagiskExtend.MAGISK_PATH.endsWith("/") ? (MagiskExtend.MAGISK_PATH.substring(0, MagiskExtend.MAGISK_PATH.length() - 1)) : MagiskExtend.MAGISK_PATH;
            params.put("MAGISK_PATH", magiskPath);
        } else {
            params.put("MAGISK_PATH", "");
        }
        params.put("START_DIR", getStartPath(context));
        // params.put("EXECUTOR_PATH", environmentPath);
        params.put("TEMP_DIR", context.getCacheDir().getAbsolutePath());
        params.put("ANDROID_UID", dir.getParentFile().getParentFile().getName());
        params.put("ANDROID_SDK", "" + Build.VERSION.SDK_INT);
        params.put("SDCARD_PATH", Environment.getExternalStorageDirectory().getAbsolutePath());
        String busyboxPath = FileWrite.INSTANCE.getPrivateFilePath(context, "busybox");
        if (new File(FileWrite.INSTANCE.getPrivateFilePath(context, "busybox")).exists()) {
            params.put("BUSYBOX", busyboxPath);
        } else {
            params.put("BUSYBOX", "busybox");
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            params.put("PACKAGE_NAME", context.getPackageName());
            params.put("PACKAGE_VERSION_NAME", packageInfo.versionName);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                params.put("PACKAGE_VERSION_CODE", "" + packageInfo.getLongVersionCode());
            } else {
                params.put("PACKAGE_VERSION_CODE", "" + packageInfo.versionCode);
            }
        } catch (Exception ex) {
        }

        return params;
    }

    /**
     * @param params
     * @return
     */
    private static ArrayList<String> getVariables(HashMap<String, String> params) {
        ArrayList<String> envp = new ArrayList<>();

        if (params != null) {
            for (String key : params.keySet()) {
                String value = params.get(key);
                if (value == null) {
                    value = "";
                }
                envp.add(key + "='" + value.replaceAll("'", "'\\\\''") + "'");
            }
        }

        return envp;
    }

    /**
     * 使用执行器运行脚本
     *
     * @param context          Context
     * @param dataOutputStream Runtime进程的输出流
     * @param cmds             要执行的脚本
     * @param params           参数类别
     */
    public static void executeShell(
            Context context,
            DataOutputStream dataOutputStream,
            String cmds,
            HashMap<String, String> params) {
        ArrayList<String> envp = getVariables(params);
        StringBuilder envpCmds = new StringBuilder();
        if (envp.size() > 0) {
            for (String param : envp) {
                envpCmds.append("export ").append(param).append("\n");
            }
        }
        try {
            dataOutputStream.write(envpCmds.toString().getBytes("UTF-8"));

            dataOutputStream.write(String.format("cd \"%s\"\n\n", getStartPath(context)).getBytes("UTF-8"));

            dataOutputStream.write(getExecuteScript(context, cmds).getBytes("UTF-8"));

            dataOutputStream.writeBytes("\n\n");
            dataOutputStream.writeBytes("sleep 0.2;\n");
            dataOutputStream.writeBytes("exit\n");
            dataOutputStream.writeBytes("exit\n");
            dataOutputStream.flush();
        } catch (UnsupportedEncodingException ex) {
        } catch (IOException ex) {
        }
    }
}

