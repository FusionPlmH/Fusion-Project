.class public Lcom/leo/salt/preference/CustomBatteryPreference;
.super Landroid/preference/Preference;
.source "CustomBatteryPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;


# static fields
.field public static final DB_CUSTOMBATTERY_PKG:Ljava/lang/String; = "leo_tweaks_battery_custom_package"


# instance fields
.field i:Landroid/widget/ImageView;

.field isSaved:Z

.field private mContext:Landroid/content/Context;

.field mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

.field mSavedIcon:Landroid/graphics/drawable/Drawable;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/leo/salt/preference/CustomBatteryPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/CustomBatteryPreference;->setLayoutResource(I)V

    return-void
.end method

.method private getBatteryIcon()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_tweaks_battery_custom_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/leo/salt/preference/CustomBatteryPreference;->getCustomBatteryFromPKG(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mSavedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mSavedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/leo/salt/preference/CustomBatteryPreference;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mSavedIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mSavedIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getCustomBatteryFromPKG(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "stat_sys_battery"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private initDialog()V
    .locals 2

    new-instance v0, Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/preference/CustomBatteryDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->setOnBatteryPickedListener(Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-virtual {v0}, Lcom/leo/salt/preference/CustomBatteryDialog;->show()V

    return-void
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x5a

    invoke-static {p1, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object p1, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/leo/salt/preference/CustomBatteryDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-virtual {v0}, Lcom/leo/salt/preference/CustomBatteryDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onBatteryPicked(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->i:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/leo/salt/preference/CustomBatteryPreference;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_tweaks_battery_custom_package"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mDialog:Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-virtual {p1}, Lcom/leo/salt/preference/CustomBatteryDialog;->dismiss()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/leo/salt/preference/CustomBatteryPreference;->getBatteryIcon()V

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mView:Landroid/view/View;

    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/leo/salt/preference/CustomBatteryPreference;->mSavedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/preference/CustomBatteryPreference;->initDialog()V

    const/4 p1, 0x0

    return p1
.end method
