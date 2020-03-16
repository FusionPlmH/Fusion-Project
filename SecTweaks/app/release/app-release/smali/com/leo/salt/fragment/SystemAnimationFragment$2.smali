.class Lcom/leo/salt/fragment/SystemAnimationFragment$2;
.super Ljava/lang/Object;
.source "SystemAnimationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/SystemAnimationFragment;->GoogleServicesInstall()V
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

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {p2}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$400(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "com.google.android.gms"

    invoke-static {p2, v1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {p2}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$500(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {v1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$600(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {p2}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$100(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "com.google.android.gms"

    invoke-static {p2, v1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {p2}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$200(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {v1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$300(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/fragment/SystemAnimationFragment$2;->this$0:Lcom/leo/salt/fragment/SystemAnimationFragment;

    invoke-static {p2}, Lcom/leo/salt/fragment/SystemAnimationFragment;->access$000(Lcom/leo/salt/fragment/SystemAnimationFragment;)Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    move-result-object p2

    const-string v0, "http://ota.leorom.cc/leo/Google/GoogleServicesPackage.zip"

    invoke-virtual {p2, v0}, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->startDownload(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
