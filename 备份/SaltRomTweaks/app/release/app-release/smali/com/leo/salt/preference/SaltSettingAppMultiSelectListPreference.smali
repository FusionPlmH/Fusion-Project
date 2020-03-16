.class public Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "SaltSettingAppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;,
        Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;,
        Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$2;

    invoke-direct {v0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$2;-><init>()V

    sput-object v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    invoke-direct {v2, p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;-><init>(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)V

    iput-object v1, v2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->package_Name:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    sget-object v1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    iget-object v2, v1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPreferenceChanged:Z

    return p0
.end method

.method static synthetic access$002(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    new-instance v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;-><init>(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method public setClearValues()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$1;-><init>(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
