.class Lcom/leo/salt/fragment/LogThatShitFragment$2;
.super Ljava/lang/Object;
.source "LogThatShitFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/LogThatShitFragment;->logZipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/LogThatShitFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/LogThatShitFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/LogThatShitFragment$2;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "application/zip"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.SUBJECT"

    const-string v0, "Log that shit"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/leo/salt/fragment/LogThatShitFragment;->access$100()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/LogThatShitFragment$2;->this$0:Lcom/leo/salt/fragment/LogThatShitFragment;

    const-string v0, "\u5206\u4eab\u65e5\u5fd7"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/leo/salt/fragment/LogThatShitFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
