.class public Lcom/leo/salt/preference/IntentDialogPreference;
.super Landroid/preference/DialogPreference;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/leo/salt/utils/AppListTask$OnListCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAppListAdapter:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

.field private mAppListTask:Lcom/leo/salt/utils/AppListTask;

.field private mContext:Landroid/content/Context;

.field private mIsInitialSetup:Z

.field private final mIsRebootRequired:Z

.field private mIsSearch:Z

.field private final mIsSilent:Z

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageToKill:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mReverseDependencyKey:Ljava/lang/String;

.field private mSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/leo/salt/R$styleable;->IntentDialogPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "##"

    :goto_0
    iput-object v2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsSearch:Z

    sget-object v3, Lcom/leo/salt/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsRebootRequired:Z

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageToKill:Ljava/lang/String;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsSilent:Z

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0c004f

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f0c0050

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/IntentDialogPreference;)Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mAppListAdapter:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/IntentDialogPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createList()V
    .locals 3

    new-instance v0, Lcom/leo/salt/utils/AppListTask;

    invoke-direct {v0}, Lcom/leo/salt/utils/AppListTask;-><init>()V

    invoke-virtual {v0, p0}, Lcom/leo/salt/utils/AppListTask;->setOnListCreatedListener(Lcom/leo/salt/utils/AppListTask$OnListCreatedListener;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/leo/salt/utils/AppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-object p1, p1, v3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/IntentDialogPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/leo/salt/preference/MySwitchPreference;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/leo/salt/preference/MyCheckBoxPreference;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/leo/salt/preference/ReverseDependencyMonitor;

    invoke-interface {v0, p0}, Lcom/leo/salt/preference/ReverseDependencyMonitor;->registerReverseDependencyPreference(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f090036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    const v0, 0x7f090132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsSearch:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->createList()V

    new-instance v0, Lcom/leo/salt/preference/IntentDialogPreference$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/IntentDialogPreference$1;-><init>(Lcom/leo/salt/preference/IntentDialogPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->createList()V

    :goto_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/IntentDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/leo/salt/preference/IntentDialogPreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/leo/salt/preference/IntentDialogPreference;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mAppListTask:Lcom/leo/salt/utils/AppListTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/leo/salt/utils/AppListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mAppListTask:Lcom/leo/salt/utils/AppListTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leo/salt/utils/AppListTask;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mAppListTask:Lcom/leo/salt/utils/AppListTask;

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/utils/AppInfo;

    iget-object p2, p1, Lcom/leo/salt/utils/AppInfo;->mIntent:Landroid/content/Intent;

    iget-object p3, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    const-string p3, "%1$s%2$s%3$s"

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/leo/salt/utils/AppInfo;->mPackageName:Ljava/lang/String;

    aput-object v0, p5, p4

    iget-object p4, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p4, p5, v0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 p4, 0x2

    aput-object p2, p5, p4

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/leo/salt/utils/AppInfo;->mAppName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/IntentDialogPreference;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onListCreated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;-><init>(Lcom/leo/salt/preference/IntentDialogPreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mAppListAdapter:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mAppListAdapter:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsInitialSetup:Z

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mSeparator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference;->persistString(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsRebootRequired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsInitialSetup:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->showRebootRequiredDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageToKill:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsInitialSetup:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsSilent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageToKill:Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/utils/Utils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/preference/IntentDialogPreference;->mIsInitialSetup:Z

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->persistString(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/IntentDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
