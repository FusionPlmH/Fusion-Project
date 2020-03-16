.class final Lcom/leo/salt/MainActivity$setPower$dialog$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/MainActivity;->setPower()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "i",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/MainActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p2}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p2}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p2}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p2}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p2}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/MainActivity$setPower$dialog$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p2}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/utils/root/Helpers$Companion;->LeoRestartMeun(Landroid/content/Context;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
