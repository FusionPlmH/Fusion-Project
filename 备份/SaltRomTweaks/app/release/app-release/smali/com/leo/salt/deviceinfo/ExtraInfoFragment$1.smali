.class Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;
.super Ljava/lang/Object;
.source "ExtraInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/deviceinfo/ExtraInfoFragment;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/leo/salt/deviceinfo/ExtraInfoFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/deviceinfo/ExtraInfoFragment;

    iput-object p2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;->this$0:Lcom/leo/salt/deviceinfo/ExtraInfoFragment;

    invoke-virtual {v0}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->getData()V

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
