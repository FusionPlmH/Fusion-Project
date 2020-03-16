.class public Lcom/leo/salt/ui/list/AdapterFileSelector;
.super Landroid/widget/BaseAdapter;
.source "AdapterFileSelector.java"


# instance fields
.field private currentDir:Ljava/io/File;

.field private extension:Ljava/lang/String;

.field private fileArray:[Ljava/io/File;

.field private fileSelected:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private progressBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

.field private selectedFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/kt/ProgressBarDialog;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->fileSelected:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->progressBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    if-eqz p4, :cond_1

    const-string p2, "."

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p4, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->extension:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->extension:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/leo/salt/ui/list/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/ui/list/AdapterFileSelector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->extension:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/leo/salt/ui/list/AdapterFileSelector;[Ljava/io/File;)[Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->fileArray:[Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$202(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->currentDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$300(Lcom/leo/salt/ui/list/AdapterFileSelector;)Lcom/leo/salt/kt/ProgressBarDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->progressBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/ui/list/AdapterFileSelector;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/ui/list/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$602(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->selectedFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$700(Lcom/leo/salt/ui/list/AdapterFileSelector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->fileSelected:Ljava/lang/Runnable;

    return-object p0
.end method

.method private loadDir(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->progressBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/leo/salt/kt/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/ui/list/AdapterFileSelector$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/ui/list/AdapterFileSelector$1;-><init>(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->fileArray:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->fileArray:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->selectedFile:Ljava/io/File;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/leo/salt/ui/list/AdapterFileSelector;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0c0045

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/ui/list/AdapterFileSelector$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/leo/salt/ui/list/AdapterFileSelector$2;-><init>(Lcom/leo/salt/ui/list/AdapterFileSelector;Ljava/io/File;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0c004b

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090008

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/leo/salt/ui/list/AdapterFileSelector$3;

    invoke-direct {p3, p0, p2, p1}, Lcom/leo/salt/ui/list/AdapterFileSelector$3;-><init>(Lcom/leo/salt/ui/list/AdapterFileSelector;Landroid/view/View;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const p3, 0x7f090009

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public goParent()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/leo/salt/ui/list/AdapterFileSelector;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/leo/salt/ui/list/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
