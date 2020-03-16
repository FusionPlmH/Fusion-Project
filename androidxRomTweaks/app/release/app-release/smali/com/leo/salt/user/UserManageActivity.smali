.class public Lcom/leo/salt/user/UserManageActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private Donate:Ljava/lang/String;

.field private VIP:Landroid/widget/TextView;

.field private mCardView:Landroid/support/v7/widget/CardView;

.field private mDeviceModel:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDonateButton:Landroid/widget/LinearLayout;

.field private mFeedBack:Landroid/support/v7/widget/CardView;

.field private mHandler:Landroid/os/Handler;

.field private mNumber:Landroid/widget/TextView;

.field private mPermissionUnlock:Lcom/leo/salt/user/PermissionUnlock;

.field private mROMversions:Landroid/widget/TextView;

.field private mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mTools:Landroid/support/v7/widget/CardView;

.field private mToolsName:Landroid/widget/TextView;

.field private mToolsView:Landroid/widget/ImageView;

.field private mUnlock:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/LinearLayout;

.field private mUnlockStr:Ljava/lang/String;

.field private mVIPDonate:Ljava/lang/String;

.field private mVIPversions:Landroid/widget/TextView;

.field private monateMoney:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/leo/salt/user/UserManageActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/user/UserManageActivity$1;-><init>(Lcom/leo/salt/user/UserManageActivity;)V

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mDonateButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/user/UserManageActivity;)Landroid/support/v7/widget/CardView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mCardView:Landroid/support/v7/widget/CardView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leo/salt/user/UserManageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->Donate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->Donate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leo/salt/user/UserManageActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/leo/salt/user/UserManageActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->monateMoney:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/user/UserManageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mVIPDonate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mVIPDonate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mDeviceModel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mVIPversions:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->VIP:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlock:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/user/UserManageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlockStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/leo/salt/user/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlockStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/leo/salt/user/UserManageActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlockButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5

    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw v0

    :catch_2
    move-object v2, v1

    :catch_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v1
.end method

.method private convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private getdonateData()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/user/-$$Lambda$UserManageActivity$-ctTXPYAUVhuNRD0SDPBa57jSBw;

    invoke-direct {v1, p0}, Lcom/leo/salt/user/-$$Lambda$UserManageActivity$-ctTXPYAUVhuNRD0SDPBa57jSBw;-><init>(Lcom/leo/salt/user/UserManageActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private intView()V
    .locals 3

    new-instance v0, Lcom/leo/salt/user/PermissionUnlock;

    iget-object v1, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/leo/salt/user/PermissionUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mPermissionUnlock:Lcom/leo/salt/user/PermissionUnlock;

    const v0, 0x7f09025d

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mVIPversions:Landroid/widget/TextView;

    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlock:Landroid/widget/TextView;

    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mNumber:Landroid/widget/TextView;

    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->VIP:Landroid/widget/TextView;

    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mDonateButton:Landroid/widget/LinearLayout;

    const v0, 0x7f090247

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlockButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->monateMoney:Landroid/widget/TextView;

    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->monateMoney:Landroid/widget/TextView;

    invoke-static {}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mROMversions:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mROMversions:Landroid/widget/TextView;

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090227

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mTools:Landroid/support/v7/widget/CardView;

    const v0, 0x7f090228

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mToolsView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mToolsView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    const-string v2, "ic_settings"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090229

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mToolsName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mToolsName:Landroid/widget/TextView;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "leo_slide_meun_settings"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mDeviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mDeviceName:Landroid/widget/TextView;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_info_model"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mDeviceModel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mDeviceModel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-static {v2}, Lcom/os/salt/OSBuild$SystemUrl;->FloatingFature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u3010 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.boot.em.model"

    invoke-static {v2}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09025a

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mFeedBack:Landroid/support/v7/widget/CardView;

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonateUnlock()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->ChineseCSC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mFeedBack:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mFeedBack:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mFeedBack:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/user/UserManageActivity;->ClickData()V

    return-void
.end method


# virtual methods
.method public ClickData()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mNumber:Landroid/widget/TextView;

    const-string v1, "ril.serialnumber"

    invoke-static {v1}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mDonateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mUnlockButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mTools:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mFeedBack:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getJSONObject(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    new-instance p1, Lcom/leo/salt/user/-$$Lambda$UserManageActivity$ppYkRcjNsAaVE_l5Uhn1-IdGB3c;

    invoke-direct {p1, p0}, Lcom/leo/salt/user/-$$Lambda$UserManageActivity$ppYkRcjNsAaVE_l5Uhn1-IdGB3c;-><init>(Lcom/leo/salt/user/UserManageActivity;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090034

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c002d

    return v0
.end method

.method public synthetic lambda$getJSONObject$0$UserManageActivity()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getdonateData$1$UserManageActivity()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leo/salt/user/UserManageActivity;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/user/UserManageActivity;->getJSONObject(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/leo/salt/feedback/FeedBackChina;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mPermissionUnlock:Lcom/leo/salt/user/PermissionUnlock;

    invoke-virtual {p1}, Lcom/leo/salt/user/PermissionUnlock;->progressDialogView()V

    goto :goto_0

    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/leo/salt/tweaks/FragSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/leo/salt/tweaks/FragSettingActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v1, Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;->AppSetting:Lcom/leo/salt/tweaks/FragSettingActivity$FragmentType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/leo/salt/tweaks/amber/DonateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900cb -> :sswitch_4
        0x7f090184 -> :sswitch_3
        0x7f090227 -> :sswitch_2
        0x7f090247 -> :sswitch_1
        0x7f09025a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090225

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/user/UserManageActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f090226

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CollapsingToolbarLayout;

    const v1, 0x7f100241

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f090202

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/16 v1, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewEndTarget(ZI)V

    iget-object p1, p0, Lcom/leo/salt/user/UserManageActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-direct {p0}, Lcom/leo/salt/user/UserManageActivity;->intView()V

    return-void

    :array_0
    .array-data 4
        0x7f06002d
        0x7f0600de
        0x7f0600be
        0x7f0600bd
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/user/UserManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090021

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/user/UserManageActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/leo/salt/user/info/UserNotificationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/UserManageActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/user/UserManageActivity;->getdonateData()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/leo/salt/user/UserManageActivity;->getdonateData()V

    return-void
.end method
