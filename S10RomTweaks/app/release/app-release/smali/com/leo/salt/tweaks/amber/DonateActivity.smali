.class public Lcom/leo/salt/tweaks/amber/DonateActivity;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.source "DonateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final Donate_Bright:Ljava/lang/String; = "fkx07030yfr0kmc85j8vud9"

.field public static final Donate_USER_INPUT:Ljava/lang/String; = "fkx08101iaromskiwv4nhdc"

.field public static final REQUEST_CODE:I = 0x8b9


# instance fields
.field private AlipayFree:Landroid/widget/LinearLayout;

.field private DonateIMG:Landroid/widget/ImageView;

.field private Info:Landroid/widget/TextView;

.field private ListDonate:Landroid/widget/TextView;

.field public QQ:Landroid/view/View;

.field public Telegram:Landroid/view/View;

.field private WeiXin:Landroid/widget/TextView;

.field private btAlipayFree:Landroid/widget/TextView;

.field private conversationA:Landroid/widget/TextView;

.field private conversationB:Landroid/widget/TextView;

.field private conversationC:Landroid/widget/TextView;

.field private conversationTelegram:Landroid/widget/TextView;

.field public mLayout:Landroid/widget/LinearLayout;

.field public pay:Landroid/widget/EditText;

.field private paypal:Landroid/widget/TextView;

.field public qq:Landroid/widget/EditText;

.field public qqname:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;-><init>()V

    return-void
.end method

.method public static DonateMoney()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    const v1, 0x7f1001cc

    const v2, 0x7f1001cb

    const-string v3, "G97"

    const/4 v4, 0x3

    const v5, 0x7f1000e4

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private checkPermissionAndDonateWeixin()V
    .locals 2

    invoke-static {p0}, Lcom/leo/salt/tweaks/donate/WeiXinDonate;->hasInstalledWeiXinClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "wechat_not_installed"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateWeixin()V

    goto :goto_0

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8b9

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private doNormal(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v0, "https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw"

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "821371473"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->startQQ(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->QQGroup(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "1543422039"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->startQQ(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showDonateTi2pDialog()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showDonateTelegramDialog()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showDonatealipayDialog()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090068
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090199
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private donateAlipay(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/leo/salt/tweaks/donate/AlipayDonate;->hasInstalledAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/leo/salt/tweaks/donate/AlipayDonate;->startAlipayClient(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private donateWeixin()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AndroidDonateSample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "leo_weixin.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/leo/salt/tweaks/donate/WeiXinDonate;->saveDonateQrImage2SDCard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v1}, Lcom/leo/salt/tweaks/donate/WeiXinDonate;->donateViaWeiXin(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showCopyDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showDonateTelegramDialog$4(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$showDonateTi2pDialog$6(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$showDonatealipayDialog$2(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method private showCopyDialog()V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100259

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100257

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f100275

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, 0x7f100276

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f10025a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v14, "device_info_model"

    invoke-static {v13, v14}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "ro.boot.em.model"

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v12, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v12, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v10, "device_info_serial"

    invoke-static {v15, v10}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ril.serialnumber"

    invoke-static {v10}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v10, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v10, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\ufe61"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x7f1000c9

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x1e

    invoke-virtual {v10, v4, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v13, 0x7f06002f

    invoke-static {v13}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v13, 0x1

    invoke-static {v13}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v14, Landroid/widget/EditText;

    iget-object v15, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qq:Landroid/widget/EditText;

    iget-object v14, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qq:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v14, 0xa

    invoke-virtual {v5, v14, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v15, Landroid/widget/EditText;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v15, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qqname:Landroid/widget/EditText;

    invoke-virtual {v7, v14, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->pay:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qq:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f100258

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qqname:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->pay:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f10025a

    invoke-static {v6}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x3c

    const/16 v6, 0x1e

    invoke-virtual {v3, v4, v6, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qq:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qqname:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->pay:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;

    invoke-direct {v2, v0, v5, v7, v9}, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v3, 0x1040001

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$JmDfL3q5F-y_m9F2EMc5hSJlzsQ;->INSTANCE:Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$JmDfL3q5F-y_m9F2EMc5hSJlzsQ;

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private showDonateTelegramDialog()V
    .locals 4

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "ic_paypal"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const-string v1, "Paypal"

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$2ggonHqbMPFhq8Pl2dETZBUezsE;->INSTANCE:Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$2ggonHqbMPFhq8Pl2dETZBUezsE;

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$f4cDNHtbANwb0DaLNAV-AmIr4Jk;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$f4cDNHtbANwb0DaLNAV-AmIr4Jk;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method private showDonateTi2pDialog()V
    .locals 5

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "ic_weixin"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "wechat_pay"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$ogU3420GOcxEAMsV9-t0prxYjgU;->INSTANCE:Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$ogU3420GOcxEAMsV9-t0prxYjgU;

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$v_r_kaSy5UQdb3Th7hrtAUpYleE;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$v_r_kaSy5UQdb3Th7hrtAUpYleE;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method private showDonatealipayDialog()V
    .locals 5

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "ic_zhifubao"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "alipay_custom"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$6LRktR5XdG-lU5e-JnP0mHDvkws;->INSTANCE:Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$6LRktR5XdG-lU5e-JnP0mHDvkws;

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$JiLMYLCcnZlOBGe-lt8IsD6onmI;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$JiLMYLCcnZlOBGe-lt8IsD6onmI;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090034

    return v0
.end method

.method protected initCollapsingTextText()Ljava/lang/String;
    .locals 1

    const-string v0, "leo_slide_meun_donate"

    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0020

    return v0
.end method

.method public synthetic lambda$showCopyDialog$0$DonateActivity(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p4, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qq:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f100256

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100275

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showSnacknAME(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->qqname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100276

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showSnacknAME(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->pay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f10025a

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showSnacknAME(Ljava/lang/String;)V

    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string p3, "device_info_model"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ro.boot.em.model"

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string p3, "device_info_serial"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ril.serialnumber"

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->copyToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$showDonateTelegramDialog$5$DonateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "https://www.paypal.me/plmh"

    invoke-static {v1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method public synthetic lambda$showDonateTi2pDialog$7$DonateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->checkPermissionAndDonateWeixin()V

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method public synthetic lambda$showDonatealipayDialog$3$DonateActivity(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "G975"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "fkx07030yfr0kmc85j8vud9"

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G977"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "fkx08101iaromskiwv4nhdc"

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->doNormal(I)V

    return-void
.end method

.method public onClickCopy(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showCopyDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0900cc

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Giving_Notice(Landroid/app/Activity;)V

    const p1, 0x7f090255

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->QQ:Landroid/view/View;

    const p1, 0x7f090256

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    const p1, 0x7f09019c

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationTelegram:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationTelegram:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090069

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    const-string v0, "Paypal"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v0, "ic_paypal"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x96

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f09006a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v5, "wechat_pay"

    invoke-static {v2, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "ic_weixin"

    invoke-static {p1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090268

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->AlipayFree:Landroid/widget/LinearLayout;

    const p1, 0x7f090068

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v5, "alipay_custom"

    invoke-static {v2, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "ic_zhifubao"

    invoke-static {p1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090199

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationA:Landroid/widget/TextView;

    const p1, 0x7f09019a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationB:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationB:Landroid/widget/TextView;

    const-string v0, "QQ\u7fa4\u54a8\u8be2"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09019b

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationC:Landroid/widget/TextView;

    const p1, 0x7f0900cd

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Info:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Info:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "donate_why"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "donate_why_sumarry"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900ce

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->ListDonate:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->ListDonate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "alipay_wechat"

    invoke-static {v0, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationA:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationB:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationC:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->AlipayFree:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->QQ:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "donate_icon"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->AlipayFree:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->QQ:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateWeixin()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const-string p2, "\u6743\u9650\u88ab\u62d2\u7edd"

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public startQQ(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "qq_null"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
