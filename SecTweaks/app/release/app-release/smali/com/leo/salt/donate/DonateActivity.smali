.class public Lcom/leo/salt/donate/DonateActivity;
.super Lcom/leo/salt/base/BaseActivity;
.source "DonateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final Donate_100:Ljava/lang/String; = "fkx04394owpttrwhxbr0087"

.field public static final Donate_35:Ljava/lang/String; = "fkx08297h0zqfymuzqig980"

.field public static final Donate_60:Ljava/lang/String; = "fkx05534tvtwumxwca6utf8"

.field public static final Donate_80:Ljava/lang/String; = "fkx09305yvgqakfxcnnby61"

.field public static final Donate_USER_INPUT:Ljava/lang/String; = "fkx08101iaromskiwv4nhdc"

.field public static final REQUEST_CODE:I = 0x8b9


# instance fields
.field private Info:Landroid/widget/TextView;

.field private btAlipayCustom:Landroid/widget/Button;

.field private btAlipayFree:Landroid/widget/Button;

.field private conversationA:Landroid/widget/Button;

.field private conversationB:Landroid/widget/Button;

.field private currentMoney:I

.field private radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/donate/DonateActivity;->currentMoney:I

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/donate/DonateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/donate/DonateActivity;->donateWeixin()V

    return-void
.end method

.method private checkPermissionAndDonateWeixin()V
    .locals 2

    invoke-static {p0}, Lcom/leo/salt/donate/WeiXinDonate;->hasInstalledWeiXinClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100437

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/donate/DonateActivity;->showDonateTipDialog()V

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8b9

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private doNormal(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    const v1, 0x7f1002c7

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    const-string p1, "mqqwpa://im/chat?chat_type=wpa&uin=1543422039"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/leo/salt/donate/DonateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string p1, "mqqwpa://im/chat?chat_type=wpa&uin=821371473"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/leo/salt/donate/DonateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/leo/salt/donate/DonateActivity;->checkPermissionAndDonateWeixin()V

    goto :goto_0

    :pswitch_3
    const-string p1, "fkx08101iaromskiwv4nhdc"

    invoke-direct {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget p1, p0, Lcom/leo/salt/donate/DonateActivity;->currentMoney:I

    const/16 v0, 0x23

    if-ne p1, v0, :cond_0

    const-string p1, "fkx08297h0zqfymuzqig980"

    invoke-direct {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    const-string p1, "fkx05534tvtwumxwca6utf8"

    invoke-direct {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-ne p1, v0, :cond_2

    const-string p1, "fkx09305yvgqakfxcnnby61"

    invoke-direct {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    const-string p1, "fkx04394owpttrwhxbr0087"

    invoke-direct {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->donateAlipay(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090048
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090136
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private donateAlipay(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/leo/salt/donate/AlipayDonate;->hasInstalledAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/leo/salt/donate/AlipayDonate;->startAlipayClient(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private donateWeixin()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/donate/DonateActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-static {v1, v0}, Lcom/leo/salt/donate/WeiXinDonate;->saveDonateQrImage2SDCard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v1}, Lcom/leo/salt/donate/WeiXinDonate;->donateViaWeiXin(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private getToolbarViews()V
    .locals 2

    invoke-static {p0}, Lcom/leo/salt/theme/Utils;->StatusBarColor(Landroid/app/Activity;)V

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/leo/salt/donate/DonateActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/donate/DonateActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1002a0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/leo/salt/donate/DonateActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private showDonateTipDialog()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100439

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10043a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/donate/DonateActivity$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/donate/DonateActivity$1;-><init>(Lcom/leo/salt/donate/DonateActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcom/leo/salt/donate/DonateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c001f

    return v0
.end method

.method protected initStatusBarColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result p2

    const v0, 0x7f100043

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string p2, "RMB"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/leo/salt/donate/DonateActivity;->currentMoney:I

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayCustom:Landroid/widget/Button;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/donate/DonateActivity;->currentMoney:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " RMB)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "USD"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/leo/salt/donate/DonateActivity;->currentMoney:I

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayCustom:Landroid/widget/Button;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/donate/DonateActivity;->currentMoney:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " USD)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->doNormal(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09004a

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090048

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayCustom:Landroid/widget/Button;

    const p1, 0x7f090049

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayFree:Landroid/widget/Button;

    const p1, 0x7f090136

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->conversationA:Landroid/widget/Button;

    const p1, 0x7f090137

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->conversationB:Landroid/widget/Button;

    const p1, 0x7f090139

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->radioGroup:Landroid/widget/RadioGroup;

    const p1, 0x7f090084

    invoke-virtual {p0, p1}, Lcom/leo/salt/donate/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->Info:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->Info:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->radioGroup:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayCustom:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayFree:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->conversationA:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->conversationB:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->dddddd(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->radioGroup:Landroid/widget/RadioGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayCustom:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->btAlipayFree:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->conversationA:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/donate/DonateActivity;->conversationB:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/leo/salt/donate/DonateActivity;->getToolbarViews()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/donate/DonateActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/donate/DonateActivity;->donateWeixin()V

    goto :goto_0

    :cond_0
    const-string p1, "\u6743\u9650\u88ab\u62d2\u7edd"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
