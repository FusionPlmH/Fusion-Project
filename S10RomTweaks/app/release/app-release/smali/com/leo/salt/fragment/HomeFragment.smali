.class public Lcom/leo/salt/fragment/HomeFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "HomeFragment.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "leo_salt_wallpaper_service"


# instance fields
.field public mHome:Landroid/preference/Preference;

.field public mWallpaperService:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/leo/salt/fragment/HomeFragment;->mContext:Landroid/content/Context;

    const-string v0, "launcher_home_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/HomeFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string p1, "wallpaper_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/HomeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/HomeFragment;->mHome:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/leo/salt/fragment/HomeFragment;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.app.launcher"

    invoke-static {p1, v0}, Lcom/leo/salt/utils/PrefUtils;->getCodeVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "10.0.35.14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OK"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/HomeFragment;->mContext:Landroid/content/Context;

    const-string v1, "rm -rf /data/app/com.sec.android.app.launcher*"

    invoke-static {p1, v0, v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->AppPackageVersionsError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
