.class public Lcom/leo/salt/fragment/FloatBallFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "FloatBallFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY:Ljava/lang/String;

.field private static final KEY0:Ljava/lang/String;

.field private static final KEY1:Ljava/lang/String;

.field private static final KEY10:Ljava/lang/String;

.field private static final KEY3:Ljava/lang/String;

.field private static final KEY4:Ljava/lang/String;

.field private static final KEY5:Ljava/lang/String;

.field private static final KEY6:Ljava/lang/String;

.field private static final KEY7:Ljava/lang/String;

.field private static final KEY8:Ljava/lang/String;

.field private static final KEY9:Ljava/lang/String;

.field private static final MENU_RESET:I = 0x1


# instance fields
.field public BallIcon:[Landroid/graphics/drawable/Drawable;

.field public mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field public mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field public mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field private mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field public mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mFloatBallDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

.field public mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field public mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mString:Ljava/lang/String;

.field public mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mVibrator:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field public mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/PrefUtils;->LEO_PREFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "qs_floatball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_remove_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY3:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_vibrator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY4:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_vibrator_level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY5:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_onclick_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY6:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_up_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY7:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_down_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY8:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_left_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY9:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_right_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY10:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "tw_leo_tweaks"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ball_1"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ball_2"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ball_3"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ball_4"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ball_6"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ball_0"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ball_7"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ball_8"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "ball_9"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "ball_10"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "ball_11"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ball_12"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ball_14"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "ball_15"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "ball_16"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "ball_17"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ball_18"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/FloatBallFragment;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->BallIcon:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/FloatBallFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/FloatBallFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/fragment/FloatBallFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/fragment/FloatBallFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/fragment/FloatBallFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/fragment/FloatBallFragment;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private setDateOptions()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public disablePreferences()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "BallibratoDisplay"

    const-string v2, "Ballactionlay"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mContext:Landroid/content/Context;

    const-string v0, "floatball_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "Ballarning"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mWarning:Lcom/leo/salt/preference/SaltSettingCardWarningPreference;

    const-string v1, "\u60ac\u6d6e\u7403\u652f\u6301:\u70b9\u51fb \u2191\u4e0a\u6ed1\u2193\u4e0b\u6ed1\u2190\u5de6\u6ed1\u2192\u53f3\u6ed1 \u4e0b\u6ed13ms\u5219\u9690\u85cf\u60ac\u6d6e\u7403(\u9700\u5f00\u542f\u6b64\u529f\u80fd) \u957f\u6309\u60ac\u6d6e\u7403\u53ef\u79fb\u52a8\u60ac\u6d6e\u7403\u4f4d\u7f6e"

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCardWarningPreference;->setWarningSetting(Ljava/lang/String;)V

    const-string v0, "BallibratoDisplay"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mColor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v0, "Ballactionlay"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mColor2:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v0, "qs_floatball_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v1, "floatball_entries"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    const-string v1, "floatball_values"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->BallIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setDrawableArray([Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "icon_select"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallPreference:Lcom/leo/salt/preference/SaltSettingIconListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingIconListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "floclick"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY6:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallUP"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY7:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallDown"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY8:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallLeft"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY9:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallRight"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY10:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "Ballsize"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY3:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/4 v3, 0x1

    div-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallLevel"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    sget-object v0, Lcom/leo/salt/fragment/FloatBallFragment;->KEY5:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallVibrator"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mVibrator:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mVibrator:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY4:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mVibrator:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallConceal"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY1:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "BallDisplay"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/FloatBallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    sget-object v2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, v3}, Lcom/leo/salt/fragment/FloatBallFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->setDateOptions()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/FloatBallFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->disablePreferences()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object p2, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mContext:Landroid/content/Context;

    const-string v0, "grid_Blacklist"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Blacklist(Landroid/content/Context;)V

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v2, "_short"

    const-string v3, "99"

    const-string v4, "88"

    const/4 v5, 0x1

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY6:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/FloatBallFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/FloatBallFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/FloatBallFragment$1;-><init>(Lcom/leo/salt/fragment/FloatBallFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mClick:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v5

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_5

    sget-object p1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY7:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/FloatBallFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/FloatBallFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/FloatBallFragment$2;-><init>(Lcom/leo/salt/fragment/FloatBallFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mUP:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v5

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_8

    sget-object p1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY8:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/FloatBallFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/FloatBallFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/FloatBallFragment$3;-><init>(Lcom/leo/salt/fragment/FloatBallFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_7
    :goto_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mDown:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v5

    :cond_8
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_b

    sget-object p1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY9:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/FloatBallFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/FloatBallFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/FloatBallFragment$4;-><init>(Lcom/leo/salt/fragment/FloatBallFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_a
    :goto_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLeft:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v5

    :cond_b
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    if-ne p1, v1, :cond_e

    sget-object p1, Lcom/leo/salt/fragment/FloatBallFragment;->KEY10:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/FloatBallFragment;->launchAppSPicker(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mString:Ljava/lang/String;

    new-instance v0, Lcom/leo/salt/fragment/FloatBallFragment$5;

    invoke-direct {v0, p0, p0}, Lcom/leo/salt/fragment/FloatBallFragment$5;-><init>(Lcom/leo/salt/fragment/FloatBallFragment;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    iget-object v0, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mPicker:Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;->pickShortcut()V

    :cond_d
    :goto_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mRight:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v5

    :cond_e
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_f

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY3:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_f
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mLevel:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_10

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY5:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_10
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mVibrator:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_11

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY4:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_11
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mConceal:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_12

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY1:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_12
    iget-object v1, p0, Lcom/leo/salt/fragment/FloatBallFragment;->mFloatBallDisplay:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_13

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/leo/salt/fragment/FloatBallFragment;->KEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/FloatBallFragment;->setDateOptions()V

    :cond_13
    return v5
.end method
