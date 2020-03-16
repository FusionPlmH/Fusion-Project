.class final Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "ImgFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/ImgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0004*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/AdapterView;",
        "kotlin.jvm.PlatformType",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "<anonymous parameter 3>",
        "",
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/kt/ImgFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/ImgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x7f080071

    const p4, 0x1040013

    const/high16 p5, 0x1040000

    const v0, 0x7f1000a7

    const v1, 0x7f1000a5

    const/4 v2, 0x0

    const v3, 0x7f1000aa

    const/16 v4, 0x64

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/kt/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extension"

    const-string p3, "zip"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getZIP_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/kt/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/kt/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extension"

    const-string p3, "img"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getEFS_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/kt/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->GetSDFreeSizeMB()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long p3, v5, v7

    if-gez p3, :cond_1

    iget-object p1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p1}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_1
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/efs.img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {v1}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$5;->INSTANCE:Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$5;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p5, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$6;

    invoke-direct {p3, p0}, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$6;-><init>(Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    const-string p3, "builder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    new-instance p1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-direct {p1, p2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->SaveEFS()V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/kt/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extension"

    const-string p3, "img"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getRECOVERY_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/kt/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->GetSDFreeSizeMB()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long p3, v5, v7

    if-gez p3, :cond_8

    iget-object p1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p1}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_8
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/recovery.img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {v1}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$3;->INSTANCE:Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$3;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p5, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$4;

    invoke-direct {p3, p0}, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$4;-><init>(Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    const-string p3, "builder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-nez p3, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {p3, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_c
    new-instance p1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-direct {p1, p2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->SaveRecovery()V

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/kt/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extension"

    const-string p3, "img"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getBOOT_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/kt/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->GetSDFreeSizeMB()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long p3, v5, v7

    if-gez p3, :cond_f

    iget-object p1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p1}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_f
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_13

    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/boot.img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {v1}, Lcom/leo/salt/kt/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$1;->INSTANCE:Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$1;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p5, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$2;

    invoke-direct {p3, p0}, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1$builder$2;-><init>(Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p4, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    const-string p3, "builder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-nez p3, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    invoke-virtual {p3, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    :cond_13
    new-instance p1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/kt/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/kt/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/kt/ImgFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->SaveBoot()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
