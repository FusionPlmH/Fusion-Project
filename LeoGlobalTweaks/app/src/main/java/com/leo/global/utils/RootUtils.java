package com.leo.global.utils;

import android.util.Log;

import com.leo.global.utils.kotlin.BackupRestoreUnit;
import com.leo.global.utils.kotlin.KeepShellSync;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RootUtils {





    public static void runCommand(String packageNameToKill) {
        //      RootUtils.runCommand("pkill -f " + packageNameToKill);
        Helpers.Companion.KillPackage("pkill -f " + packageNameToKill);
    }


}
