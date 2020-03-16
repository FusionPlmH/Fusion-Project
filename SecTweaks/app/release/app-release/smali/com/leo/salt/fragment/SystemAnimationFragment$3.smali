.class Lcom/leo/salt/fragment/SystemAnimationFragment$3;
.super Ljava/lang/Object;
.source "SystemAnimationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/SystemAnimationFragment;->setlocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/SystemAnimationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$3;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15

    move-object v0, p0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    const-string v2, "\u6b63\u5728\u5b89\u88c5\u767e\u5ea6\u5b9a\u4f4d"

    iget-object v3, v0, Lcom/leo/salt/fragment/SystemAnimationFragment$3;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {v3}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$800(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "rm -rf /system/priv-app/AMapNetworkLocation"

    const-string v5, "rm -rf /system/priv-app/OfflineNetworkLocation_Baidu"

    const-string v6, "cp -r -a /system/leo/location/baidu/ system/priv-app/OfflineNetworkLocation_Baidu"

    const-string v7, "\u767e\u5ea6\u5b9a\u4f4d"

    invoke-virtual/range {v1 .. v7}, Lcom/leo/salt/utils/root/Helpers$Companion;->locationCode(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v8, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    const-string v9, "\u6b63\u5728\u5b89\u88c5\u9ad8\u5fb7\u5b9a\u4f4d"

    iget-object v1, v0, Lcom/leo/salt/fragment/SystemAnimationFragment$3;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {v1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$700(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "rm -rf /system/priv-app/OfflineNetworkLocation_Baidu"

    const-string v12, "rm -rf /system/priv-app/AMapNetworkLocation"

    const-string v13, "cp -r -a /system/leo/location/gaode/ system/priv-app/AMapNetworkLocation"

    const-string v14, "\u9ad8\u5fb7\u5b9a\u4f4d"

    invoke-virtual/range {v8 .. v14}, Lcom/leo/salt/utils/root/Helpers$Companion;->locationCode(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
