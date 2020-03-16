.class final Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;
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

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    const-string v0, "animation_boot_usinghelp"

    invoke-virtual {p2, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    const-string v0, "animation_boot_info"

    invoke-virtual {p2, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040013

    sget-object v0, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3$builder$1;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3$builder$1;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
