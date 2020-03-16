.class final Lcom/leo/service/plug/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/service/plug/Utils;->screenshot(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/service/plug/Utils$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0xd0

    invoke-static {p0, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0xd1

    invoke-static {p0, v0}, Lcom/leo/service/plug/Utils;->setLeoNavKeypressAction(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-wide/16 v0, 0x258

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/leo/service/plug/Utils$1;->val$context:Landroid/app/Activity;

    new-instance v3, Lcom/leo/service/plug/-$$Lambda$Utils$1$H_0Y9axfFCei6xT7IB6SOkFE0tg;

    invoke-direct {v3, v2}, Lcom/leo/service/plug/-$$Lambda$Utils$1$H_0Y9axfFCei6xT7IB6SOkFE0tg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/leo/service/plug/Utils$1;->val$context:Landroid/app/Activity;

    new-instance v3, Lcom/leo/service/plug/-$$Lambda$Utils$1$bYIsJQGolNntqQl4w6mrvt2y5zY;

    invoke-direct {v3, v2}, Lcom/leo/service/plug/-$$Lambda$Utils$1$bYIsJQGolNntqQl4w6mrvt2y5zY;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object p2, p0, Lcom/leo/service/plug/Utils$1;->val$context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
