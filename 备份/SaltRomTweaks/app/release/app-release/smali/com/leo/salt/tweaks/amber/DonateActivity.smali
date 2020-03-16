.class public Lcom/leo/salt/tweaks/amber/DonateActivity;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.source "DonateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final ChinaDonate:Ljava/lang/String; = "\u5373\u53ef\u5347\u7ea7\u5230\u6350\u8d60VIP\u7248\u672c,\u5c4a\u65f6\u4f60\u5c06\u83b7\u5f97OTA\u66f4\u65b0\u4ee5\u53ca\u66f4\u591a\u4e2a\u6027\u5316\u529f\u80fd"

.field public static final ChinaDonateEN:Ljava/lang/String; = "to upgrade to the donation version! At that time you will have all the features of the donation version and personalized features such as OTA updates."

.field public static final Donate_CN:Ljava/lang/String; = "\u6350\u8d60"

.field public static final Donate_EN:Ljava/lang/String; = "Donate "

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

.field private paypal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;-><init>()V

    return-void
.end method

.method public static DonateMoney(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    const v1, 0x7f100148

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6350\u8d60"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5373\u53ef\u5347\u7ea7\u5230\u6350\u8d60VIP\u7248\u672c,\u5c4a\u65f6\u4f60\u5c06\u83b7\u5f97OTA\u66f4\u65b0\u4ee5\u53ca\u66f4\u591a\u4e2a\u6027\u5316\u529f\u80fd"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Donate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "to upgrade to the donation version! At that time you will have all the features of the donation version and personalized features such as OTA updates."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/amber/DonateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/amber/DonateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->donateWeixin()V

    return-void
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

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showDonateTi2pDialog()V

    goto :goto_0

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8b9

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
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
    const-string p1, "1543422039"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->startQQ(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "363997397"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->startQQ(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->checkPermissionAndDonateWeixin()V

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
    .packed-switch 0x7f090053
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090137
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

.method private showDonateTelegramDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Telegram"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$ZPJl8p_kzOw4-gVcfFeKMQ_qrAU;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$ZPJl8p_kzOw4-gVcfFeKMQ_qrAU;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDonateTi2pDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "wechat_pay"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$0GL5Tt0HcLsLnZVYFEpa2l3DXeg;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$0GL5Tt0HcLsLnZVYFEpa2l3DXeg;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDonateTipDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "wechat_pay_step"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "wechat_pay_step_sumarry"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/amber/DonateActivity$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/DonateActivity$2;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDonatealipayDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v2, "alipay_custom"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/tweaks/amber/DonateActivity$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/DonateActivity$1;-><init>(Lcom/leo/salt/tweaks/amber/DonateActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initCollapsingTextText()Ljava/lang/String;
    .locals 1

    const-string v0, "leo_slide_meun_donate"

    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0022

    return v0
.end method

.method public synthetic lambda$showDonateTelegramDialog$0$DonateActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string p2, "https://www.paypal.me/plmh"

    invoke-static {p2, p1}, Lcom/leo/salt/tweaks/resource/Resource;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$showDonateTi2pDialog$1$DonateActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->showDonateTipDialog()V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090098

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    const p1, 0x7f0901c9

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->QQ:Landroid/view/View;

    const p1, 0x7f0901ca

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    const p1, 0x7f09013a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationTelegram:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationTelegram:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090054

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

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090055

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "wechat_pay"

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v0, "ic_weixin"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v2, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->WeiXin:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0901d6

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->AlipayFree:Landroid/widget/LinearLayout;

    const p1, 0x7f090053

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "alipay_custom"

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v0, "ic_zhifubao"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v2, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->btAlipayFree:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090137

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationA:Landroid/widget/TextView;

    const p1, 0x7f090138

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationB:Landroid/widget/TextView;

    const p1, 0x7f090139

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->conversationC:Landroid/widget/TextView;

    const p1, 0x7f090099

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Info:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Info:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "donate_why"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v3, "donate_why_sumarry"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09009a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->ListDonate:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->ListDonate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "alipay_wechat"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

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

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->AlipayFree:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseMainlandLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->paypal:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->QQ:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/PrefUtils;->DayNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "donate_icon2"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateIMG:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->mContext:Landroid/app/Activity;

    const-string v1, "donate_icon"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->AlipayFree:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->QQ:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/DonateActivity;->Telegram:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
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
