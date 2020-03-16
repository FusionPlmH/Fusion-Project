.class public Lcom/leo/salt/base/BasePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "BasePreferenceFragment.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LeoRom"


# instance fields
.field protected intentFragment:Landroid/content/Intent;

.field protected mContext:Landroid/content/Context;

.field mPreferenceFragment:Landroid/preference/PreferenceFragment;

.field mPreferenceManager:Landroid/preference/PreferenceManager;

.field mResolver:Landroid/content/ContentResolver;

.field spName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iput-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/base/BasePreferenceFragment;->spName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    iget-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p1, p3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "xml"

    iget-object v1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/base/BasePreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onPauseFragment()V
    .locals 0

    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    return-void
.end method
