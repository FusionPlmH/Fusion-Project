package com.salt.module.shell;

import android.util.Log;


import com.salt.script.KeepShellPublic;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;

import static com.salt.config.SaltApp.getContext;


public class SuShell {

    private static final String TAG = SuShell.class.getSimpleName();

    // WARNING: setting this to true will dump passwords to logcat
    // set to false for release
    static final boolean DEBUG = false;

    private SuShell() {
    }

    public static ArrayList<String> runWithSuCheck(String... commands) throws SuDeniedException {
        String suTestScript = "#!/system/bin/sh\necho ";
        String suTestScriptValid = "SuPermsOk";

        String[] commandsWithCheck = new String[commands.length+1];
        commandsWithCheck[0] = suTestScript + suTestScriptValid;
        System.arraycopy(commands, 0, commandsWithCheck, 1, commands.length);

        ArrayList<String> output = runWithSu(commandsWithCheck);
        if (output.size() >= 1
                && output.get(0).trim().equals(suTestScriptValid)) {
            if (DEBUG) {
                Log.d(TAG, "Superuser command auth confirmed");
            }
            output.remove(0);
            return output;
        } else {
            if (DEBUG) {
                Log.d(TAG, "Superuser command auth refused");
            }
            throw new SuDeniedException();
        }
    }

    public static ArrayList<String> runWithShell(String... command) {
        return run("/system/bin/sh", command);
    }

    public static ArrayList<String> runWithSu(String... command) {
        return run("su", command);
    }

    public static ArrayList<String> run(String shell, ArrayList<String> commands) {
        String[] commandsArray = new String[commands.size()];
        commands.toArray(commandsArray);
        return run(shell, commandsArray);
    }

    public static ArrayList<String> run(String shell, String... commands) {
        ArrayList<String> output = new ArrayList<String>();

        try {
            Process process = Runtime.getRuntime().exec(shell);

            BufferedOutputStream shellInput = new BufferedOutputStream(
                    process.getOutputStream());
            BufferedReader shellOutput = new BufferedReader(
                    new InputStreamReader(process.getInputStream()));

            for (String command : commands) {
                if (DEBUG) {
                    Log.i(TAG, "command: " + command);
                }
                shellInput.write((command + " 2>&1\n").getBytes());
            }

            shellInput.write("exit\n".getBytes());
            shellInput.flush();

            String line;
            while ((line = shellOutput.readLine()) != null) {
                if (DEBUG) {
                    Log.d(TAG, "command output: " + line);
                }
                output.add(line);
            }

            process.waitFor();
        } catch (IOException e) {
            Log.e(TAG, "Error: " + e.getMessage(), e);
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            Log.e(TAG, "Error: " + e.getMessage(), e);
            throw new RuntimeException(e);
        }

        return output;
    }

    public static String getCommandOutput(String command)
            throws IOException {

        StringBuilder output = new StringBuilder();

        if (DEBUG) {
            Log.d(TAG, "Getting output for command: " + command);
        }
        Process p = Runtime.getRuntime().exec(command);
        InputStream is = p.getInputStream();
        InputStreamReader r = new InputStreamReader(is);
        BufferedReader in = new BufferedReader(r);

        String line;
        while ((line = in.readLine()) != null) {
            output.append(line);
            output.append("\n");
        }

        return output.toString();
    }

    public static boolean detectValidSuInPath() {
        String[] pathToTest = System.getenv("PATH").split(":");

        for (String path : pathToTest) {
            File su = new File(path + "/su");
            if (su.exists()) {
                // should check if it is suid
                if (DEBUG) {
                    Log.d(TAG, "Found su at " + su.getAbsolutePath());
                }

                return true;
            }
        }

        return false;
    }

    public static boolean findInPath(String cmd) {
        String[] pathToTest = System.getenv("PATH").split(":");

        for (String path : pathToTest) {
            File cmdFile = new File(path, cmd);
            if (cmdFile.exists()) {
                if (DEBUG) {
                    Log.d(TAG, "Found " + cmd + " at " + cmdFile.getAbsolutePath());
                }

                return true;
            }
        }

        return false;
    }

    public static class SuDeniedException extends Exception {};

    public static void swapSounds(String str, String str2) {
        if (new File(str + str2).exists()) {
            execute(new String[]{"busybox mount -o rw,remount /system", "busybox mv " + str + str2 + " " + str + "leo_" + str2, "busybox mount -o ro,remount /system"}, 0);
            return;
        }
        execute(new String[]{"busybox mount -o rw,remount /system", "busybox mv " + str + "leo_" + str2 + " " + str + str2, "busybox mount -o ro,remount /system"}, 0);
    }
    public static boolean execute(String[] strArr, int i) {
        if (i != 0) {
            try {
                Thread.sleep((long) i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            Process exec = Runtime.getRuntime().exec("su");
            DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
            for (String str : strArr) {
                dataOutputStream.writeBytes(str + "\n");
            }
            dataOutputStream.flush();
            dataOutputStream.close();
            exec.waitFor();
            return true;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        } catch (InterruptedException e3) {
            e3.printStackTrace();
            return false;
        }
    }

}