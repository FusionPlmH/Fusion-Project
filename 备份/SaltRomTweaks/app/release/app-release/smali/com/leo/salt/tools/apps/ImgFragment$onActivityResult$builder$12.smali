.class final Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;
.super Ljava/lang/Object;
.source "ImgFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ImgFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "which",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/ImgFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;->$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;->$path:Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->FlashBootAnimation(Ljava/lang/String;I)V

    return-void
.end method
