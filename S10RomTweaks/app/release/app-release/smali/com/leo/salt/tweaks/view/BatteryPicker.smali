.class public Lcom/leo/salt/tweaks/view/BatteryPicker;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;
.source "BatteryPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;,
        Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;,
        Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;,
        Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;,
        Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;
    }
.end annotation


# instance fields
.field private authorPreText:Ljava/lang/String;

.field private compilerPreText:Ljava/lang/String;

.field public listadapter:Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;

.field protected mBatteries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBatteryPicker:Ljava/lang/String;

.field private mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field public mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mProgressBar:Landroid/app/ProgressDialog;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteries:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->listadapter:Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;

    return-void
.end method

.method private BatterySelect(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteryPicker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->authorPreText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/tweaks/view/BatteryPicker;->BatterySelect(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$202(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->compilerPreText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->packageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->addNewBatteryInfoFromPKG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/tweaks/view/BatteryPicker;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mProgressBar:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private addNewBatteryInfoFromPKG(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;-><init>(Lcom/leo/salt/tweaks/view/BatteryPicker;)V

    iput-object p1, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->batterypkg:Ljava/lang/String;

    const-string v1, "string"

    const-string v2, "battery_name"

    invoke-direct {p0, p1, v2, v1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->authorPreText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "icon_resource"

    invoke-direct {p0, p1, v4, v1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->originalauthor:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->compilerPreText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "packaging_name"

    invoke-direct {p0, p1, v3, v1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->compilername:Ljava/lang/String;

    const-string v1, "stat_sys_battery"

    const-string v2, "drawable"

    invoke-direct {p0, p1, v1, v2}, Lcom/leo/salt/tweaks/view/BatteryPicker;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    iget-object p1, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string p2, "drawable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "string"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090034

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0029

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    const-string v1, "select_battery_title"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mProgressBar:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mProgressBar:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mContext:Landroid/app/Activity;

    const-string v1, "load_data"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f090218

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;-><init>(Lcom/leo/salt/tweaks/view/BatteryPicker;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BatteryPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "batterykey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteryPicker:Ljava/lang/String;

    new-instance p1, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;-><init>(Lcom/leo/salt/tweaks/view/BatteryPicker;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/BatteryPicker$LoadApplications;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
