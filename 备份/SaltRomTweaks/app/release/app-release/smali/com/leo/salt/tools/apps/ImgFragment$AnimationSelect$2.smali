.class final Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;
.super Ljava/lang/Object;
.source "ImgFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ImgFragment;->AnimationSelect()V
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
.field final synthetic this$0:Lcom/leo/salt/tools/apps/ImgFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ImgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p1, :cond_2

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const-string p2, "(dialog as AlertDialog).listView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const-string p2, "extension"

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {v0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "qmg"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getBOOT_QMG_SELECTOR()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {v0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "zip"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getBOOT_zip_QMG_SELECTOR()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.AlertDialog"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
