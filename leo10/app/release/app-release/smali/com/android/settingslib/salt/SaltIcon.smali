.class public Lcom/android/settingslib/salt/SaltIcon;
.super Ljava/lang/Object;
.source "SaltIcon.java"


# static fields
.field public static mDrawabe:Ljava/lang/String; = "drawable/stat_sys_"

.field public static mLeoStatusBarSignal5IconStyle:[[I

.field public static mLeoStatusBarWIFIActivity:[I

.field public static mLeoStatusBarWifiIconStyle:[[I

.field public static mSalt5GConnected:I

.field public static mSalt5GConnected10:I

.field public static mSalt5GConnectedstyle:I

.field public static mSalt5GConnectedstyle10:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settingslib/salt/SaltIcon;->mDrawabe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_type_signal_leo_5g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltIcon;->mSalt5GConnected:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settingslib/salt/SaltIcon;->mDrawabe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_type_signal_leo_5g_n10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltIcon;->mSalt5GConnected10:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settingslib/salt/SaltIcon;->mDrawabe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_connected_leo_5g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltIcon;->mSalt5GConnectedstyle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settingslib/salt/SaltIcon;->mDrawabe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data_connected_leo_5g_n10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settingslib/salt/SaltIcon;->mSalt5GConnectedstyle10:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChinaIconSignalStyle(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "signal_5_level"

    return-object p0

    :pswitch_0
    const-string p0, "signal_r"

    return-object p0

    :pswitch_1
    const-string p0, "signal_q"

    return-object p0

    :pswitch_2
    const-string p0, "signal_p"

    return-object p0

    :pswitch_3
    const-string p0, "signal_o"

    return-object p0

    :pswitch_4
    const-string p0, "signal_n"

    return-object p0

    :pswitch_5
    const-string p0, "signal_m"

    return-object p0

    :pswitch_6
    const-string p0, "signal_l"

    return-object p0

    :pswitch_7
    const-string p0, "signal_k"

    return-object p0

    :pswitch_8
    const-string p0, "signal_j"

    return-object p0

    :pswitch_9
    const-string p0, "signal_i"

    return-object p0

    :pswitch_a
    const-string p0, "signal_h"

    return-object p0

    :pswitch_b
    const-string p0, "signal_g"

    return-object p0

    :pswitch_c
    const-string p0, "signal_f"

    return-object p0

    :pswitch_d
    const-string p0, "signal_e"

    return-object p0

    :pswitch_e
    const-string p0, "signal_d"

    return-object p0

    :pswitch_f
    const-string p0, "signal_c"

    return-object p0

    :pswitch_10
    const-string p0, "signal_b"

    return-object p0

    :pswitch_11
    const-string p0, "signal_a"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static LeoWifiStyle(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "wifi_signal"

    return-object p0

    :pswitch_0
    const-string p0, "wifi_signal_o"

    return-object p0

    :pswitch_1
    const-string p0, "wifi_signal_n"

    return-object p0

    :pswitch_2
    const-string p0, "wifi_signal_m"

    return-object p0

    :pswitch_3
    const-string p0, "wifi_signal_l"

    return-object p0

    :pswitch_4
    const-string p0, "wifi_signal_k"

    return-object p0

    :pswitch_5
    const-string p0, "wifi_signal_j"

    return-object p0

    :pswitch_6
    const-string p0, "wifi_signal_i"

    return-object p0

    :pswitch_7
    const-string p0, "wifi_signal_h"

    return-object p0

    :pswitch_8
    const-string p0, "wifi_signal_g"

    return-object p0

    :pswitch_9
    const-string p0, "wifi_signal_f"

    return-object p0

    :pswitch_a
    const-string p0, "wifi_signal_e"

    return-object p0

    :pswitch_b
    const-string p0, "wifi_signal_d"

    return-object p0

    :pswitch_c
    const-string p0, "wifi_signal_c"

    return-object p0

    :pswitch_d
    const-string p0, "wifi_signal_b"

    return-object p0

    :pswitch_e
    const-string p0, "wifi_signal_a"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static Signal5IconStyle(ZI)V
    .locals 13

    sget-object v0, Lcom/android/settingslib/salt/SaltIcon;->mDrawabe:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_0_simplified_auto_rotate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_1_simplified_auto_rotate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_2_simplified_auto_rotate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_3_simplified_auto_rotate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_4_simplified_auto_rotate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_5_simplified_auto_rotate"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v1

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0_auto_rotate"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_1_auto_rotate"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_2_auto_rotate"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_3_auto_rotate"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_4_auto_rotate"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltIcon;->ChinaIconSignalStyle(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_5_auto_rotate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v1

    :cond_0
    const/4 p0, 0x2

    new-array p1, p0, [[I

    const/4 v0, 0x6

    new-array v8, v0, [I

    aput v3, v8, v2

    const/4 v9, 0x1

    aput v4, v8, v9

    aput v5, v8, p0

    const/4 v10, 0x3

    aput v6, v8, v10

    const/4 v11, 0x4

    aput v7, v8, v11

    const/4 v12, 0x5

    aput v1, v8, v12

    aput-object v8, p1, v2

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v4, v0, v9

    aput v5, v0, p0

    aput v6, v0, v10

    aput v7, v0, v11

    aput v1, v0, v12

    aput-object v0, p1, v9

    sput-object p1, Lcom/android/settingslib/salt/SaltIcon;->mLeoStatusBarSignal5IconStyle:[[I

    return-void
.end method

.method public static getLeoAndroidResource(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigFrame;->mSaltContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLeoResource(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLeoStatusBarIcons()V
    .locals 2

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigFrame;->mSaltContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarWifiIconEnabled:Z

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarWIFIIcon:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/SaltIcon;->updateLeoWifiIcons(ZI)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarSignalIconEnabled:Z

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarSignalIcon:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/SaltIcon;->Signal5IconStyle(ZI)V

    return-void
.end method

.method static updateLeoWifiIcons(ZI)V
    .locals 16

    sget-object v0, Lcom/android/settingslib/salt/SaltIcon;->mDrawabe:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "wifi_signal_no_inout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "wifi_signal_in"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "wifi_signal_out"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wifi_signal_inout"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v2

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/salt/SaltIcon;->LeoWifiStyle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v10

    const-string v0, "drawable/default_lock_wallpaper"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltIcon;->getLeoAndroidResource(Ljava/lang/String;)I

    move-result v12

    move v2, v12

    move v13, v2

    move v14, v13

    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [I

    const/4 v5, 0x0

    aput v12, v3, v5

    const/4 v7, 0x1

    aput v13, v3, v7

    const/4 v9, 0x2

    aput v14, v3, v9

    const/4 v11, 0x3

    aput v2, v3, v11

    sput-object v3, Lcom/android/settingslib/salt/SaltIcon;->mLeoStatusBarWIFIActivity:[I

    new-array v2, v9, [[I

    const/4 v3, 0x5

    new-array v12, v3, [I

    aput v1, v12, v5

    aput v4, v12, v7

    aput v6, v12, v9

    aput v8, v12, v11

    aput v10, v12, v0

    aput-object v12, v2, v5

    new-array v3, v3, [I

    aput v1, v3, v5

    aput v4, v3, v7

    aput v6, v3, v9

    aput v8, v3, v11

    aput v10, v3, v0

    aput-object v3, v2, v7

    sput-object v2, Lcom/android/settingslib/salt/SaltIcon;->mLeoStatusBarWifiIconStyle:[[I

    return-void
.end method

.method public static updateStatusBarIcons()V
    .locals 4

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigFrame;->mSaltContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarSignalIconEnabled:Z

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Leo_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    :goto_1
    sput v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    return-void
.end method
