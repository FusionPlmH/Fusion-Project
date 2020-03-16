.class public Lcom/leo/salt/tweaks/view/AppPicker;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/AppPicker$ActivitiesAdapter;,
        Lcom/leo/salt/tweaks/view/AppPicker$Adapter;,
        Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;,
        Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;
    }
.end annotation


# instance fields
.field private applist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field friendlyAppString:Ljava/lang/String;

.field private listadapter:Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

.field private mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppPicker:Ljava/lang/String;

.field private mIsActivitiesList:Z

.field public mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mProgressBar:Landroid/app/ProgressDialog;

.field mVibrator:Landroid/os/Vibrator;

.field private mWarning:Landroid/widget/TextView;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->applist:Ljava/util/List;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->listadapter:Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mActivitiesList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/view/AppPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    return p0
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/view/AppPicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->applist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/leo/salt/tweaks/view/AppPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->applist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/view/AppPicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mActivitiesList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/tweaks/view/AppPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker;->checkForLaunchIntent(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/leo/salt/tweaks/view/AppPicker;)Lcom/leo/salt/tweaks/view/AppPicker$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->listadapter:Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/leo/salt/tweaks/view/AppPicker;Lcom/leo/salt/tweaks/view/AppPicker$Adapter;)Lcom/leo/salt/tweaks/view/AppPicker$Adapter;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->listadapter:Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mProgressBar:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private checkForLaunchIntent(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.google.android.as"

    const-string v2, "com.google.android.GoogleCamera"

    const-string v3, "com.google.android.imaging.easel.service"

    const-string v4, "com.android.traceur"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v1}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0029

    return v0
.end method

.method public intVibrator(II)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "vibrator"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mVibrator:Landroid/os/Vibrator;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mVibrator:Landroid/os/Vibrator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->listadapter:Lcom/leo/salt/tweaks/view/AppPicker$Adapter;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mWarning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    const-string v3, "select_custom_app_title"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->showSnack(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/AppPicker;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingPickerActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mProgressBar:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mProgressBar:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    const-string v1, "apps_load"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0901d1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mWarning:Landroid/widget/TextView;

    const v0, 0x7f0901a8

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    const-string v2, "select_custom_app_title"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v1, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;-><init>(Lcom/leo/salt/tweaks/view/AppPicker;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mWarning:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mWarning:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mWarning:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mContext:Landroid/app/Activity;

    const-string v2, "global_action_app_warning"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "appkey"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mAppPicker:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;-><init>(Lcom/leo/salt/tweaks/view/AppPicker;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onLongClick(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->applist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->applist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->friendlyAppString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->setPackage(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker;->setPackageActivity(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/AppPicker;->showActivitiesDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected setPackage(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/AppPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mAppPicker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->friendlyAppString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker;->showSnack(Ljava/lang/String;)V

    return-void
.end method

.method protected setPackageActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/AppPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mAppPicker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "NONE"

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected showActivitiesDialog(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iput-object v5, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mActivitiesList:Ljava/util/List;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->friendlyAppString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mIsActivitiesList:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mWarning:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/leo/salt/tweaks/view/AppPicker$ActivitiesAdapter;

    const v4, 0x7f0c0034

    iget-object v6, p0, Lcom/leo/salt/tweaks/view/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/leo/salt/tweaks/view/AppPicker$ActivitiesAdapter;-><init>(Lcom/leo/salt/tweaks/view/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/leo/salt/tweaks/view/AppPicker$1;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker;->mListView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
