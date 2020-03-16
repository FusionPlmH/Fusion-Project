.class public Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CodeViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;

    invoke-virtual {v1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "https://square.github.io/picasso/"

    goto :goto_0

    :cond_1
    const-string p1, "https://github.com/bumptech/glide"

    goto :goto_0

    :cond_2
    const-string p1, "https://github.com/pnikosis/materialish-progress"

    goto :goto_0

    :cond_3
    const-string p1, "https://github.com/pedant/sweet-alert-dialog"

    goto :goto_0

    :cond_4
    const-string p1, "https://developer.android.google.cn/index.html"

    :goto_0
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;->openUrl(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->dismiss()V

    return-void
.end method
