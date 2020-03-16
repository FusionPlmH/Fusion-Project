package com.salt.script;
import android.content.Context;



import java.io.File;

public class MagiskExtend {
    // source /data/adb/util_functions.sh

    public static String MAGISK_PATH = "/sbin/.core/img/scene_systemless/";
    private static String MAGISK_PATH_19 = "/sbin/.magisk/modules";
    private static String MAGISK_ROOT_PATH1 = "/sbin/.core/img";
    private static String MAGISK_ROOT_PATH2 = "/sbin/.magisk/img";

    private static String MAGISK_MODULE_NAME = "scene_systemless";;
    //magisk 19 /data/adb/modules
    private static int supported = -1;
    private static int MagiskVersion = 0;

    // 递归方式 计算文件的大小
    private static long getTotalSizeOfFilesInDir(final File file) {
        if (file.isFile())
            return file.length();
        final File[] children = file.listFiles();
        long total = 0;
        if (children != null)
            for (final File child : children)
                total += getTotalSizeOfFilesInDir(child);
        return total;
    }

    /**
     * 自动调整镜像大小
     * @param require
     */
    private static boolean spaceValidation(long require) {
        // magisk 19开始，不用镜像了，理论上空间无限
        if (MagiskVersion >= 19 || MAGISK_PATH.startsWith("/data")) {
            return true;
        }

        long space = new File(MAGISK_PATH).getFreeSpace();
        // 镜像空间不足
        if (space < (require + 4096)) {
            return false;
        }

        return true;
    }

    /**
     * 创建简单的文件替换模块
     * @param newfile
     * @param orginPath
     * @param moduleName
     * @return
     */
    public static boolean createFileReplaceModule(String orginPath, String newfile, String moduleName, String moduleTitle) {
        if (MagiskExtend.magiskSupported() && RootFile.INSTANCE.itemExists(newfile)) {
            String moduleProp = "id=" + moduleName +  "\\n" +
                    "name=" + moduleTitle + "\\n" +
                    "version=v1\\n" +
                    "versionCode=1\\n" +
                    "author=嘟嘟ski\\n" +
                    "description=用于将第三方应用转换成系统应用的模块，由Scene创建并添加\n" +
                    "minMagisk=17000\\n";

            if (MagiskVersion < 19) {
                long require = getTotalSizeOfFilesInDir(new File(newfile));

                if (!RootFile.INSTANCE.fileExists("/data/adb/magisk.img")) {
                    KeepShellPublic.INSTANCE.doCmdSync("imgtool create /data/adb/magisk.img 64");
                }
                if (!RootFile.INSTANCE.fileExists("/data/adb/magisk_merge.img")) {
                    KeepShellPublic.INSTANCE.doCmdSync("imgtool create /data/adb/magisk_merge.img 256");
                }

                KeepShellPublic.INSTANCE.doCmdSync("mkdir -p /data/adb/magisk_merge_tmnt\n" +
                        "LOOP=`imgtool mount /data/adb/magisk_merge.img /data/adb/magisk_merge_tmnt`\n");

                long currentSize = new File("/data/adb/magisk_merge_tmnt").getTotalSpace();
                long space = new File("/data/adb/magisk_merge_tmnt").getFreeSpace();
                if (space < (require + 2097152)) {
                    long sizeMB = ((currentSize - space + require) / 1024 / 1024) + 2;
                    KeepShellPublic.INSTANCE.doCmdSync(
                            "imgtool umount /data/adb/magisk_merge_tmnt $LOOP\n" +
                                    "imgtool resize /data/adb/magisk_merge.img " + sizeMB +
                                    "LOOP=`imgtool mount /data/adb/magisk_merge.img /data/adb/magisk_merge_tmnt`\n");
                }

                String output = "/data/adb/magisk_merge_tmnt/" + moduleName + (orginPath.startsWith("/vendor") ? ("/system" + orginPath) : orginPath);
                String dir = new File(output).getParent();
                KeepShellPublic.INSTANCE.doCmdSync(
                        "mkdir -p \"" + dir + "\"\n" +
                                "echo \"" + moduleProp + "\" > \"/data/adb/magisk_merge_tmnt/" + moduleName + "/module.prop\"\n" +
                                "echo '' > \"/data/adb/magisk_merge_tmnt/" + moduleName + "/auto_mount\"\n" +
                                "cp -pdrf \"" + newfile + "\" \"" + output + "\"\n" +
                                "chmod -R 777 \"" + output + "\"");
                if (RootFile.INSTANCE.dirExists(MAGISK_ROOT_PATH1)) {
                    KeepShellPublic.INSTANCE.doCmdSync("mkdir -p " + MAGISK_ROOT_PATH1 + "/" + moduleName + "\n" +
                            "echo \"" + moduleProp + "\" > \"" + MAGISK_ROOT_PATH1 + "/" + moduleName + "/module.prop\"\n" +
                            "echo '' > " + MAGISK_ROOT_PATH1 + "/" + moduleName + "/update");
                } else if (RootFile.INSTANCE.dirExists(MAGISK_ROOT_PATH2)) {
                    KeepShellPublic.INSTANCE.doCmdSync("mkdir -p " + MAGISK_ROOT_PATH2 + "/" + moduleName + "\n" +
                            "echo \"" + moduleProp + "\" > \"" + MAGISK_ROOT_PATH2 + "/" + moduleName + "/module.prop\"\n" +
                            "echo '' > " + MAGISK_ROOT_PATH2 + "/" + moduleName + "/update");
                }
                KeepShellPublic.INSTANCE.doCmdSync("imgtool umount /data/adb/magisk_merge_tmnt $LOOP");
            } else {
                String output = MAGISK_PATH_19 + "/" + moduleName + (orginPath.startsWith("/vendor") ? ("/system" + orginPath) : orginPath);
                String dir = new File(output).getParent();
                KeepShellPublic.INSTANCE.doCmdSync(
                        "mkdir -p \"" + dir + "\"\n" +
                                "echo \"" + moduleProp + "\" > \"" + MAGISK_PATH_19 + "/" + moduleName + "/module.prop\"\n" +
                                "cp -pdrf \"" + newfile + "\" \"" + output + "\"\n" +
                                "chmod -R 777 \"" + output + "\"");
            }

            return true;
        }
        return false;
    }



    private static void writeModuleFile(String text, String name, Context context) {
        if (!moduleInstalled()) {
            KeepShellPublic.INSTANCE.doCmdSync("mkdir -p " + MAGISK_PATH);
        }
        if (FileWrite.INSTANCE.writePrivateFile(text.getBytes(), name, context)) {
            String path = FileWrite.INSTANCE.getPrivateFilePath(context, name);
            String output = MAGISK_PATH + name;
            KeepShellPublic.INSTANCE.doCmdSync("cp " + path + " " + output + "\nchmod 777 " + output);
        }
    }

    /**
     * 是否已经安装magisk并且版本合适
     *
     * @return 是否已安装
     */
    public static boolean magiskSupported() {
        if (supported == -1 || MagiskVersion < 1) {
            String magiskVersion = KeepShellPublic.INSTANCE.doCmdSync("magisk -V");
            if (!magiskVersion.equals("error")) {
                try {
                    MagiskVersion = Integer.parseInt(magiskVersion) / 1000;
                    supported = MagiskVersion >= 17 ? 1 : 0;

                    if(supported == 1) {
                        if (MagiskVersion >= 19) {
                            MAGISK_PATH = MAGISK_PATH_19 + "/" + MAGISK_MODULE_NAME + "/";
                        } else if (RootFile.INSTANCE.dirExists(MAGISK_ROOT_PATH1)) {
                            MAGISK_PATH = MAGISK_ROOT_PATH1 + "/" + MAGISK_MODULE_NAME + "/";
                        } else if (RootFile.INSTANCE.dirExists(MAGISK_ROOT_PATH2)) {
                            MAGISK_PATH = MAGISK_ROOT_PATH2 + "/" + MAGISK_MODULE_NAME + "/";
                        }
                    }
                } catch (Exception ignored) {
                }
            } else {
                supported = 0;
            }
        }
        return supported == 1;
    }

    /**
     * 是否已安装模块
     * @return
     */
    public static boolean moduleInstalled() {
        return magiskSupported() && RootFile.INSTANCE.fileExists(MAGISK_PATH + "module.prop");
    }

    public static boolean setSystemProp(String prop, String value) {
        if (!spaceValidation(prop.length() + 4 + value.length())) {
            return false;
        }

        KeepShellPublic.INSTANCE.doCmdSync(
            "sed -i '/" + prop + "=/'d " +  MAGISK_PATH + "system.prop\n" +
            "echo " + prop + "=\"" + value  +"\" >> " + MAGISK_PATH + "system.prop\n");
        return true;
    }

    public static void deleteSystemPath(String orginPath) {
        if (RootFile.INSTANCE.itemExists(orginPath)) {
            String output = MAGISK_PATH.substring(0, MAGISK_PATH.length() - 1) + (orginPath.startsWith("/vendor") ? ("/system" + orginPath) : orginPath);
            String dir = new File(output).getParent();
            KeepShellPublic.INSTANCE.doCmdSync("mkdir -p \"" + dir + "\"\necho '' > \"" + output + "\"");
        }
    }

    public static boolean replaceSystemFile(String orginPath, String newfile) {
        if (spaceValidation(getTotalSizeOfFilesInDir(new File(newfile)))) {
            if (RootFile.INSTANCE.itemExists(newfile)) {
                String output = getMagiskReplaceFilePath(orginPath);
                String dir = new File(output).getParent();
                KeepShellPublic.INSTANCE.doCmdSync(
                        "mkdir -p \"" + dir + "\"\n" +
                        "cp \"" + newfile + "\" \"" + output + "\"\n" +
                        "chmod 777 \"" + output + "\"");
                return true;
            }
        }

        return false;
    }

    public static String getMagiskReplaceFilePath(String systemPath) {
        return MAGISK_PATH.substring(0, MAGISK_PATH.length() - 1) + (systemPath.startsWith("/vendor") ? ("/system" + systemPath) : systemPath);
    }


    private static boolean updateFile(String fromFile, String moduleFile) {
        if (spaceValidation(getTotalSizeOfFilesInDir(new File(fromFile)))) {
            if (RootFile.INSTANCE.fileExists(fromFile)) {
                KeepShellPublic.INSTANCE.doCmdSync("cp \"" + fromFile + "\" " + MAGISK_PATH + moduleFile + "\nchmod 777 " + MAGISK_PATH + moduleFile);
            }
            return true;
        }
        return false;
    }
}
