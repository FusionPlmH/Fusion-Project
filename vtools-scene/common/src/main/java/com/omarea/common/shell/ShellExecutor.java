package com.omarea.common.shell;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ShellExecutor {
    private static String extraEnvPath = "";
    private static String defaultEnvPath = "";

    public static void setExtraEnvPath(String extraEnvPath) {
        ShellExecutor.extraEnvPath = extraEnvPath;
    }

    private static String[] getEnv() {
        if (defaultEnvPath.isEmpty()) {
            try {
                Process process = Runtime.getRuntime().exec("sh");
                OutputStream outputStream = process.getOutputStream();
                outputStream.write("echo $PATH".getBytes());
                outputStream.flush();
                outputStream.close();

                InputStream inputStream = process.getInputStream();
                byte[] cache = new byte[2048];
                int length = inputStream.read(cache);
                inputStream.close();
                process.destroy();

                String path = new String(cache, 0, length).trim();
                if (path.length() > 0) {
                    defaultEnvPath = path;
                } else {
                    throw new RuntimeException("未能获取到$PATH参数");
                }
            } catch (Exception ex) {
                defaultEnvPath = "/sbin:/system/sbin:/system/bin:/system/xbin:/odm/bin:/vendor/bin:/vendor/xbin";
            }
        }

        String path = defaultEnvPath;
        if (extraEnvPath != null && !extraEnvPath.isEmpty()) {
            path = path + ":" + extraEnvPath;
        }

        return new String[]{
                "PATH=" + path
        };
    }

    public static Process getSuperUserRuntime() throws IOException {
        return Runtime.getRuntime().exec("su", getEnv());
    }

    public static Process getRuntime() throws IOException {
        return Runtime.getRuntime().exec("sh", getEnv());
    }
}
