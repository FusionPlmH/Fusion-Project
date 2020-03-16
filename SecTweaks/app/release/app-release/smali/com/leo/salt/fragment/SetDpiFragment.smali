.class public Lcom/leo/salt/fragment/SetDpiFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SetDpiFragment.java"


# instance fields
.field dpi:Ljava/lang/String;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/fragment/SetDpiFragment;->dpi:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/SetDpiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getReboot()V

    return-void
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/SetDpiFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/SetDpiFragment;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/fragment/SetDpiFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/SetDpiFragment;->getRebootAction(Ljava/lang/String;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SetDpiFragment;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/SetDpiFragment;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method private getReboot()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u91cd\u65b0\u542f\u52a8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u7531\u4e8e\u4f60\u66f4\u6539\u4e86\u7cfb\u7edf\u5c4f\u5e55DPI<br />\u6211\u4eec\u63a8\u8350\u4f60\u91cd\u65b0\u542f\u52a8\uff01<br /><br /><b><font color=\"#FF0080\">\u5f53\u7136\u8fd9\u4e2a\u4e0d\u662f\u5fc5\u987b\u7684\uff01<br /><br /></font></b><font color=\"#2894FF\">\u6211\u4eec\u53ea\u662f\u5efa\u8bae\uff01<br /><br /></font><br /><font color=\"#FF0000\">\u4f60\u662f\u5426\u51b3\u5b9a\u91cd\u65b0\u542f\u52a8</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/leo/salt/fragment/SetDpiFragment$5;

    invoke-direct {v2, p0}, Lcom/leo/salt/fragment/SetDpiFragment$5;-><init>(Lcom/leo/salt/fragment/SetDpiFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u91cd\u65b0\u542f\u52a8"

    new-instance v2, Lcom/leo/salt/fragment/SetDpiFragment$6;

    invoke-direct {v2, p0}, Lcom/leo/salt/fragment/SetDpiFragment$6;-><init>(Lcom/leo/salt/fragment/SetDpiFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getRebootAction(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/stericson/RootShell/execution/Command;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v3, v2}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/SetDpiFragment;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SetDpiFragment;->values:Ljava/util/List;

    new-instance p1, Ljava/io/File;

    const-string v0, "/system/build.prop"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "ro.sf.lcd_density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SetDpiFragment;->dpi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0047

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0c002e

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SetDpiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/leo/salt/fragment/SetDpiFragment;->dpi:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/leo/salt/fragment/SetDpiFragment;->getIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const v4, 0x7f10038b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/leo/salt/fragment/SetDpiFragment;->dpi:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/leo/salt/fragment/SetDpiFragment$4;

    invoke-direct {v2, p0, v3}, Lcom/leo/salt/fragment/SetDpiFragment$4;-><init>(Lcom/leo/salt/fragment/SetDpiFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/leo/salt/fragment/SetDpiFragment$3;

    invoke-direct {v2, p0}, Lcom/leo/salt/fragment/SetDpiFragment$3;-><init>(Lcom/leo/salt/fragment/SetDpiFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10034a

    new-instance v2, Lcom/leo/salt/fragment/SetDpiFragment$2;

    invoke-direct {v2, p0}, Lcom/leo/salt/fragment/SetDpiFragment$2;-><init>(Lcom/leo/salt/fragment/SetDpiFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/fragment/SetDpiFragment$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/SetDpiFragment$1;-><init>(Lcom/leo/salt/fragment/SetDpiFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
