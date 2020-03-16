.class public Lcom/leo/salt/tweaks/amber/UserActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Donate:Ljava/lang/String;

.field private VIP:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mDonateButton:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mNumber:Landroid/widget/TextView;

.field private mROMVersions:Landroid/widget/TextView;

.field private mUnlock:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/LinearLayout;

.field private mUnlockStr:Ljava/lang/String;

.field private mVIPDonate:Ljava/lang/String;

.field private mVIPversions:Landroid/widget/TextView;

.field private monateMoney:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/leo/salt/tweaks/amber/UserActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/amber/UserActivity$1;-><init>(Lcom/leo/salt/tweaks/amber/UserActivity;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mDonateButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->monateMoney:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/amber/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mVIPDonate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mVIPDonate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/amber/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlockStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlockStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlockButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/tweaks/amber/UserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->Donate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/leo/salt/tweaks/amber/UserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->Donate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlock:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->VIP:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/tweaks/amber/UserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mVIPversions:Landroid/widget/TextView;

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

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

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

    new-instance v1, Lcom/leo/salt/tweaks/amber/-$$Lambda$UserActivity$J5l2YAX9JeGnD-5-wYricKsPK2k;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$UserActivity$J5l2YAX9JeGnD-5-wYricKsPK2k;-><init>(Lcom/leo/salt/tweaks/amber/UserActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleMaterialStatusBar()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/UserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, -0xff8b2c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public infoData()V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/UserActivity;->handleMaterialStatusBar()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mROMVersions:Landroid/widget/TextView;

    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mNumber:Landroid/widget/TextView;

    const-string v1, "ril.serialnumber"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mDonateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlockButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$getdonateData$0$UserActivity()V
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

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/amber/UserActivity;->getJSONObject(Ljava/lang/String;)V

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

    const v0, 0x7f090097

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901bf

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/leo/salt/tweaks/amber/DonateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f11000d

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/UserActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->setRequestedOrientation(I)V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0c002d

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->setContentView(I)V

    const p1, 0x7f0901b0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    const-string v0, "user_manage_title"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/UserActivity;->getdonateData()V

    const p1, 0x7f09014a

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mROMVersions:Landroid/widget/TextView;

    const p1, 0x7f0901cc

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mVIPversions:Landroid/widget/TextView;

    const p1, 0x7f0901bd

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlock:Landroid/widget/TextView;

    const p1, 0x7f090086

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mNumber:Landroid/widget/TextView;

    const p1, 0x7f09009d

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->VIP:Landroid/widget/TextView;

    const p1, 0x7f090097

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mDonateButton:Landroid/widget/LinearLayout;

    const p1, 0x7f0901bf

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mUnlockButton:Landroid/widget/LinearLayout;

    const p1, 0x7f0901c6

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    const-string v1, "leologo"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f09009b

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->monateMoney:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->monateMoney:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/UserActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/DonateActivity;->DonateMoney(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/UserActivity;->infoData()V

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
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/UserActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
