.class final Lcom/leo/salt/widget/DialogUtil$23;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/DialogUtil;->Translator(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/DialogUtil$23;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/widget/DialogUtil$23;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->language(Landroid/content/Context;)V

    new-instance p1, Lcom/leo/salt/widget/LogDialog;

    iget-object p2, p0, Lcom/leo/salt/widget/DialogUtil$23;->val$context:Landroid/content/Context;

    sget-object v0, Lcom/leo/salt/MainActivity;->Companion:Lcom/leo/salt/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/MainActivity$Companion;->getMChangelogUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/widget/DialogUtil$23;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/leo/salt/widget/LogDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
