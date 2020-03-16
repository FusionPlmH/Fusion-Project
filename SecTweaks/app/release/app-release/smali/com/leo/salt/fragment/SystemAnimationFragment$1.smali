.class Lcom/leo/salt/fragment/SystemAnimationFragment$1;
.super Ljava/lang/Object;
.source "SystemAnimationFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/fragment/SystemAnimationFragment;
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

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$1;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$1;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    check-cast p2, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    invoke-static {p1, p2}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$002(Lcom/leo/salt/fragment/SystemAnimationFragment;Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;)Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
