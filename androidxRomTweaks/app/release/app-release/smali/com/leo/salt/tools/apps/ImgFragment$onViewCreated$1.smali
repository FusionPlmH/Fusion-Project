.class final Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "ImgFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/ImgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/apps/ImgFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/ImgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x1040013

    const/high16 p4, 0x1040000

    const-string p5, "backup_file_repea"

    const-string v0, "backup_file_exists"

    const/4 v1, 0x0

    const-string v2, "backup_space_small"

    const-string v3, "img"

    const/16 v4, 0x64

    const-string v5, "extension"

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "zip"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getZIP_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/tools/apps/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getEFS_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/tools/apps/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/tools/apps/ImgFragment;->GetSDFreeSizeMB()J

    move-result-wide v5

    int-to-long v3, v4

    cmp-long p3, v5, v3

    if-gez p3, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p1, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_0
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/efs.img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {v0, p5}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$5;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$5;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$6;

    invoke-direct {p3, p0}, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$6;-><init>(Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SaveEFS()V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getRECOVERY_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/tools/apps/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/tools/apps/ImgFragment;->GetSDFreeSizeMB()J

    move-result-wide v5

    int-to-long v3, v4

    cmp-long p3, v5, v3

    if-gez p3, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p1, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_4
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/recovery.img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {v0, p5}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$3;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$3;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$4;

    invoke-direct {p3, p0}, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$4;-><init>(Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-direct {p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SaveRecovery()V

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/leo/salt/tools/apps/ActivityFileSelector;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getBOOT_IMG_SELECTOR()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/leo/salt/tools/apps/ImgFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/tools/apps/ImgFragment;->GetSDFreeSizeMB()J

    move-result-wide v5

    int-to-long v3, v4

    cmp-long p3, v5, v3

    if-gez p3, :cond_8

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p1, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_8
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/boot.img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p3, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {v0, p5}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$1;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$1;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$2;

    invoke-direct {p3, p0}, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1$builder$2;-><init>(Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_a
    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object p2, p0, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;->this$0:Lcom/leo/salt/tools/apps/ImgFragment;

    invoke-virtual {p2}, Lcom/leo/salt/tools/apps/ImgFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SaveBoot()V

    :goto_0
    return-void

    nop

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
