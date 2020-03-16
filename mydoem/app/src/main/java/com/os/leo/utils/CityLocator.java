package com.os.leo.utils;

import android.content.Context;
import android.provider.Settings.System;
import android.telephony.PhoneNumberUtils;
import android.view.View;
import android.widget.TextView;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;


/* compiled from: CityPosition */
public class CityLocator {
    private static final String BIN_DEFAULT_DIR = "/data/data/com.android.phone/HomeLocationDB.bin";
    private static final String BIN_ORIG_DEFAULT_DIR = "/system/etc/HomeLocationDB.bin";
    private static final int HEADER_SIZE = 2;
    private static final int KP_LANG_CHINA = 0;
    private static final int KP_LANG_ENGLISH = 1;
    private static final int KP_LANG_KOREA = 2;
    private static final int MOBILE_SIZE = 129;
    private static final int PROVINCE_SIZE = 96;
    private static final int TEL_SIZE = 131;
    private static final int TITLE_SEEK_COUNT = 12;
    private static final String VERSION = "1.1";
    private static Map<String, String> knowncities = new HashMap();
Context m;
    public static String ContactSearchDialogLocation(String str, boolean z) {
        String str2 = str;
        if (str2.startsWith("+86")) {
            str2 = str2.substring(3);
        }
        if (str2.startsWith("17951") || str2.startsWith("17909") || str2.startsWith("12593") || str2.startsWith("17911") || str2.startsWith("17950")) {
            str2 = str2.substring(5);
        }
        return str2.length() >= 3 ? queryLocation(str2, z) : "暂无归属地";
    }

    public static String append(Context context, CharSequence charSequence) {
        StringBuilder stringBuilder = new StringBuilder();
        if (charSequence != null) {
            stringBuilder.append(charSequence);
            String phoneLocation = getPhoneLocation(context, charSequence, true);
            if (phoneLocation != null && phoneLocation.length() > 0) {
                stringBuilder.append(" | ").append(phoneLocation);
            }
        }
        return stringBuilder.toString();
    }

    public static void close() {
        knowncities.clear();
    }

    public static String getPhoneLocation(Context context, CharSequence charSequence) {
        return System.getInt(context.getContentResolver(), "number_region_activation_preference", 1) == 0 ? null : getPhoneLocation(context, charSequence, true);
    }

    public static String getPhoneLocation(Context context, CharSequence charSequence, boolean z) {
        String stripSeparators = charSequence != null ? PhoneNumberUtils.stripSeparators(charSequence.toString()) : "";
        if (stripSeparators.startsWith("+86")) {
            stripSeparators = stripSeparators.substring(3);
        }
        if (stripSeparators.startsWith("17951") || stripSeparators.startsWith("17909") || stripSeparators.startsWith("12593") || stripSeparators.startsWith("17911") || stripSeparators.startsWith("17950")) {
            stripSeparators = stripSeparators.substring(5);
        }
        return stripSeparators.length() < 3 ? "" : queryLocation(stripSeparators, z);
    }

    private static String getUnicodeString(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2 - 2) {
            if (bArr[i + i3] == (byte) 0 && bArr[(i + i3) + 1] == (byte) 0) {
                byte[] bArr2 = new byte[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    bArr2[i4] = bArr[i + i4];
                }
                try {
                    return new String(bArr2, "UTF-16LE");
                } catch (Exception e) {
                }
            }
            i3 += 2;
        }
        return "";
    }

    private static void initChinaSNumbers() {
        knowncities.put("10000", "中国电信客服");
        knowncities.put("10001", "中国电信(24小时自动客服台)");
        knowncities.put("10010", "中国联通客服");
        knowncities.put("10011", "中国联通手机充值");
        knowncities.put("10012", "中国联通");
        knowncities.put("10015", "中国联通投诉电话");
        knowncities.put("10018", "中国联通星级客户自助服务热线");
        knowncities.put("10050", "中国铁通客服");
        knowncities.put("10060", "中国网通客服");
        knowncities.put("10070", "中国卫通");
        knowncities.put("10086", "中国移动客服");
        knowncities.put("10088", "中国移动贵宾客服");
        knowncities.put("10198", "中国联通法律顾问");
        knowncities.put("11185", "邮政EMS");
        knowncities.put("12121", "天气预报");
        knowncities.put("12306", "铁路客服");
        knowncities.put("12312", "保护知识产权举报");
        knowncities.put("12315", "工商举报");
        knowncities.put("12319", "城建服务");
        knowncities.put("12320", "全国公共卫生公益热线");
        knowncities.put("12333", "劳动保障政策咨询");
        knowncities.put("12348", "法律咨询");
        knowncities.put("12358", "价格举报");
        knowncities.put("12365", "质量监督");
        knowncities.put("12366", "纳税服务");
        knowncities.put("12369", "环保投诉");
        knowncities.put("12520", "中国移动飞信");
        knowncities.put("12520", "中国移动飞信系统");
        knowncities.put("12580", "12580生活播报");
        knowncities.put("95500", "太平洋保险");
        knowncities.put("95501", "深圳发展银行");
        knowncities.put("95502", "永安财产保险");
        knowncities.put("95503", "东方证券");
        knowncities.put("95505", "天安保险");
        knowncities.put("95506", "民安保险");
        knowncities.put("95507", "大众保险");
        knowncities.put("95508", "广东发展银行");
        knowncities.put("95509", "华泰财产保险");
        knowncities.put("95510", "阳光保险");
        knowncities.put("02195511", "中国平安保险");
        knowncities.put("02195512", "中国平安产险");
        knowncities.put("02895550", "天平汽车保险");
        knowncities.put("01095510", "阳光保险");
        knowncities.put("02195590", "大地保险");
        knowncities.put("02195500", "太平洋保险");
        knowncities.put("95511", "平安银行");
        knowncities.put("95512", "中国平安产险");
        knowncities.put("95513", "联合证券");
        knowncities.put("95515", "合众人寿保险");
        knowncities.put("95516", "中国银联");
        knowncities.put("95517", "安信证券");
        knowncities.put("95518", "中国人民保险");
        knowncities.put("95519", "中国人寿保险");
        knowncities.put("95520", "上海吉祥航空");
        knowncities.put("95521", "国泰君安证券");
        knowncities.put("95522", "泰康人寿保险");
        knowncities.put("95523", "申银万国证券");
        knowncities.put("95525", "光大证券");
        knowncities.put("95527", "浙商银行");
        knowncities.put("95528", "浦发银行");
        knowncities.put("95529", "太平保险");
        knowncities.put("95530", "东方航空服务热线");
        knowncities.put("95533", "中国建设银行");
        knowncities.put("95535", "生命人寿保险公司");
        knowncities.put("95536", "国信证券股份");
        knowncities.put("95538", "齐鲁证券");
        knowncities.put("95539", "南方航空");
        knowncities.put("95548", "中信控股");
        knowncities.put("95550", "天平汽车保险");
        knowncities.put("95551", "中国银河证券");
        knowncities.put("95552", "永诚财产保险");
        knowncities.put("95553", "海通证券");
        knowncities.put("95555", "招商银行");
        knowncities.put("95556", "华安财产保险");
        knowncities.put("95557", "厦门航空");
        knowncities.put("95558", "中信银行");
        knowncities.put("95559", "中国交通银行");
        knowncities.put("95560", "幸福人寿保险");
        knowncities.put("95561", "兴业银行");
        knowncities.put("95562", "兴业证券");
        knowncities.put("95563", "国海证券");
        knowncities.put("95565", "招商证券");
        knowncities.put("95566", "中国银行");
        knowncities.put("95567", "新华人寿");
        knowncities.put("95568", "中国民生银行");
        knowncities.put("95569", "安邦财产保");
        knowncities.put("95571", "方正证券");
        knowncities.put("95573", "山西证券");
        knowncities.put("95575", "广发证券");
        knowncities.put("95576", "长城人寿保险");
        knowncities.put("95577", "华夏银行");
        knowncities.put("95578", "国元证券");
        knowncities.put("95579", "长江证券");

        knowncities.put("95580", "中国邮政储蓄银行");
        knowncities.put("95581", "嘉禾人寿保险");
        knowncities.put("95583", "中国国际航空");
        knowncities.put("95584", "华西证券");
        knowncities.put("95585", "中华联合保险");
        knowncities.put("95587", "中信建投证券");
        knowncities.put("95588", "中国工商银行");
        knowncities.put("95589", "太平人寿保险");
        knowncities.put("95590", "中国大地财产保险");
        knowncities.put("95592", "长安责任保险");
        knowncities.put("95593", "国家开发银行");
        knowncities.put("95595", "中国光大银行");
        knowncities.put("95596", "民生人寿保险");
        knowncities.put("95597", "华泰证券");
        knowncities.put("95598", "国家电网");
        knowncities.put("95599", "中国农业银行");
        knowncities.put("96100", "民政服务");
        knowncities.put("96118", "旅游投诉");
        knowncities.put("96178", "廉政投诉");
        knowncities.put("96198", "农业信用联社");
        knowncities.put("96310", "城管执法");
        knowncities.put("96588", "徽商银行");
        knowncities.put("96666", "民航郑州机场售票处");
        knowncities.put("100101", "中国联通当前话费查询");
        knowncities.put("100102", "中国联通余额查询");
        knowncities.put("101901", "中国联通话费查询");
        knowncities.put("116114", "联通查号台");
        knowncities.put("118114", "号码百事通");
        knowncities.put("118114", "号码百事通");
        knowncities.put("886921", "中華電信");
        knowncities.put("1008611", "中国移动话费查询");
        knowncities.put("1013088", "中国联通充值");
        knowncities.put("1013089", "中国联通查费");
        knowncities.put("1836050", "江苏连云港移动");
        knowncities.put("1836096", "江苏淮安移动");
        knowncities.put("10010000", "中国联通");
        knowncities.put("10010020", "中国联通");
        knowncities.put("10010100", "中国联通");
        knowncities.put("10010202", "中国联通");
        knowncities.put("10010333", "中国联通");
        knowncities.put("10655111", "中国联通手机报");
        knowncities.put("10655898", "中国联通");
        knowncities.put("10658000", "中国移动手机报");
        knowncities.put("10658139", "中国移动邮箱");
        knowncities.put("10658258", "中国移动生活好管家");
        knowncities.put("10658688", "中国移动韵味帮手");
        knowncities.put("95105366", "中铁快运");
        knowncities.put("95105768", "海康人寿");
        knowncities.put("106289799", "中国联通飞影");
        knowncities.put("106558787", "中国联通数据卡状态");
        knowncities.put("1065795555", "招商银行");
        knowncities.put("1065888090", "中国移动生活播报");
        knowncities.put("4000095567", "新华人寿保险上海分公司");
        knowncities.put("4006789000", "宅急送");
        knowncities.put("4008108000", "DHL快递");
        knowncities.put("4008111111", "顺丰速运");
        knowncities.put("4008123123", "必胜客宅急送");
        knowncities.put("4008208388", "UPS快递");
        knowncities.put("4008209868", "TNT快递");
        knowncities.put("4008517517", "麦当劳麦乐送");
        knowncities.put("4008823823", "肯德基宅急送");
        knowncities.put("4008861888", "联邦快递");
        knowncities.put("4008888400", "上海证券交易所");
        knowncities.put("10690866782", "神州租车");
        knowncities.put("13800138000", "中国移动充值");
        knowncities.put("106550578680", "支付宝");
        knowncities.put("106590256001", "顺丰快递");
        knowncities.put("95338", "顺丰速运");
        knowncities.put("11183", "中国邮政EMS");
        knowncities.put("95543", "申通快递");
        knowncities.put("95554", "圆通速递");
        knowncities.put("95546", "韵达快递");
        knowncities.put("1065502180906", "携程旅行网天气提醒");
        knowncities.put("1065502188882", "携程旅行网");
        knowncities.put("10657302012366", "广州国税");
        knowncities.put("10657516012988", "转运中国");
        knowncities.put("110", "匪警电话");
        knowncities.put("112", "紧急电话");
        knowncities.put("119", "火警电话");
        knowncities.put("120", "急救中心");
        knowncities.put("122", "交通报警");
        knowncities.put("0571-88158198", "淘宝网");
        knowncities.put("4008608608", "天猫");
        knowncities.put("400-606-5500", "京东商城");
        knowncities.put(" 95526", "北京银行");
        knowncities.put("4008888083", "渣打银行");
        knowncities.put("4008826688", "汇丰银行");
        knowncities.put("4006695501", "深圳发展银行");
        knowncities.put("95188", "浙江网商银行");
        knowncities.put("400-999-8800", "微众银行");
    }

    private static int mobileHeaderSearch(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[0] = bArr[i3 * 2];
            bArr2[1] = bArr[(i3 * 2) + 1];
            if (readUnsignedShort(bArr2) == i) {
                return i3;
            }
        }
        return -1;
    }

    private static void putKnowCity(String str, String str2, String str3) {


    }

    public static void putSpecialFeature(HashMap<String, Boolean> hashMap) {
        hashMap.put("feature_chn", Boolean.TRUE);
        hashMap.put("ip_call", Boolean.TRUE);
        hashMap.put("disable_format_number", Boolean.TRUE);
        hashMap.put("permanent_save_view_by_setting", Boolean.TRUE);
        hashMap.put("phone_number_locator", Boolean.TRUE);
        hashMap.put("phone_icon_to_keypad", Boolean.TRUE);
        hashMap.put("call_block_ui", Boolean.TRUE);
        hashMap.put("voice_call_recording", Boolean.TRUE);
    }

    private static String queryLocation(String str, boolean z) {
        String str2 = "";
        String str3 = null;
        try {
            if (knowncities.isEmpty()) {
                initChinaSNumbers();
            }
            if (knowncities.containsKey(str)) {
                return (String) knowncities.get(str);
            }
            Object obj = 1;
            if (str.charAt(0) == '0') {
                obj = null;
                if (str.charAt(1) >= '3') {
                    if (str.length() > 3) {
                        str3 = str.substring(0, 4);
                    }
                } else if (str.length() > 2) {
                    str3 = str.substring(0, 3);
                }
            } else if (str.length() > 7) {
                obj = 1;
                str3 = str.substring(0, 7);
            }
            if (str3 == null) {
                return "";
            }
            if (knowncities.containsKey(str3)) {
                return (String) knowncities.get(str3);
            }
            int parseInt = Integer.parseInt(str3);
            RandomAccessFile randomAccessFile = new RandomAccessFile(new File(BIN_DEFAULT_DIR).exists() ? BIN_DEFAULT_DIR : BIN_ORIG_DEFAULT_DIR, "r");
            byte[] bArr = new byte[4];
            randomAccessFile.seek(72);
            randomAccessFile.read(bArr, 0, 4);
            long readUnsignedInt = readUnsignedInt(bArr);
            randomAccessFile.read(bArr, 0, 4);
            long readUnsignedInt2 = readUnsignedInt(bArr);
            randomAccessFile.read(bArr, 0, 4);
            long readUnsignedInt3 = readUnsignedInt(bArr);
            randomAccessFile.seek(randomAccessFile.getFilePointer() + 48);
            byte[] bArr2 = new byte[2976];
            randomAccessFile.read(bArr2, 0, bArr2.length);
            byte b;
            StringBuilder stringBuilder;
            if (obj != null) {
                randomAccessFile.seek(randomAccessFile.getFilePointer() + (131 * readUnsignedInt));
                byte[] bArr3 = new byte[((int) (129 * readUnsignedInt2))];
                randomAccessFile.read(bArr3, 0, bArr3.length);
                byte[] bArr4 = new byte[((int) (2 * readUnsignedInt3))];
                randomAccessFile.read(bArr4, 0, bArr4.length);
                int mobileHeaderSearch = mobileHeaderSearch(bArr4, Integer.parseInt(str.substring(0, 3)), (int) readUnsignedInt3);
                if (mobileHeaderSearch >= 0) {
                    byte[] bArr5 = new byte[2];
                    byte[] bArr6 = new byte[20000];
                    randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) ((52) * 2)));
                    randomAccessFile.read(bArr6, 0, 20000);
                    int i = parseInt % 52;
                    bArr5[0] = bArr6[i * 2];
                    bArr5[1] = bArr6[(i * 2) + 1];
                    int readUnsignedShort = readUnsignedShort(bArr5);
                    b = bArr3[(readUnsignedShort - 1) * 129];
                    if (readUnsignedShort > 0 && b >= (byte) 0) {
                        stringBuilder = new StringBuilder();
                        if (b > (byte) 0) {
                            stringBuilder.append(getUnicodeString(bArr2, ((b - 1) * 96) + 0, 32));
                        }
                        stringBuilder.append(getUnicodeString(bArr3, ((readUnsignedShort - 1) * 129) + 1, 32));
                        if (z) {
                            CharSequence substring = str.substring(0, 3);
                            if ("134,135,136,137,138,139,144,147,148,150,151,152,157,158,159,172,178,182,183,184,187,188,198,1705,1700".contains(substring)) {
                                stringBuilder.append("〖移动〗");
                            } else if ("130,131,132,145,146,155,156,166,171,175 176 185,186,,1709".contains(substring)) {
                                stringBuilder.append("联通");
                            } else if ("133,141,149,153,173,171,177,180,181,189,199,1700".contains(substring)) {
                                stringBuilder.append("电信");
                            }
                        }
                        str2 = stringBuilder.toString();
                    }
                }
            } else {
                byte[] bArr7 = new byte[((int) (131 * readUnsignedInt))];
                randomAccessFile.read(bArr7, 0, bArr7.length);
                int teleBinarySearch = teleBinarySearch(bArr7, parseInt, (int) readUnsignedInt);
                if (teleBinarySearch != -1) {
                    b = bArr7[teleBinarySearch * 131];
                    if (b >= (byte) 0) {
                        stringBuilder = new StringBuilder();
                        if (b > (byte) 0) {
                            stringBuilder.append(getUnicodeString(bArr2, (b - 1) * 96, 32));
                        }
                        stringBuilder.append(getUnicodeString(bArr7, (teleBinarySearch * 131) + 1, 32));
                        str2 = stringBuilder.toString();
                    }
                }
            }
            putKnowCity(str3, str, str2);
            randomAccessFile.close();
            return str2;
        } catch (Exception e) {
        }
        return str2;
    }

    private static String CTC(){
        String Symbol="";
        String CMCC;
        String CHU;
        String CTC;

        return Symbol;
    }
    private static long readUnsignedInt(byte[] bArr) {
        return (((long) (bArr[3] & 255)) << 24) | ((((long) (bArr[0] & 255)) | (((long) (bArr[1] & 255)) << 8)) | (((long) (bArr[2] & 255)) << 16));
    }

    private static int readUnsignedShort(byte[] bArr) {
        return (bArr[0] & 255) | ((bArr[1] & 255) << 8);
    }

    public static void setLocationText(Context context, View view, int i, CharSequence charSequence) {
        if (view != null) {
            try {
                TextView textView = view instanceof TextView ? (TextView) view : (TextView) view.findViewById(i);
                if (textView != null) {
                    textView.setText(getPhoneLocation(context, charSequence));
                }
            } catch (Exception e) {
            }
        }
    }

    private static int teleBinarySearch(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[0] = bArr[((i3 * 131) + 131) - 2];
            bArr2[1] = bArr[((i3 * 131) + 131) - 1];
            if (readUnsignedShort(bArr2) == i) {
                return i3;
            }
        }
        return -1;
    }
}
