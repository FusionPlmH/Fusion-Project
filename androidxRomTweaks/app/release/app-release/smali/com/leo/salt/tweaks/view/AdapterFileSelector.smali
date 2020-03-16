.class public Lcom/leo/salt/tweaks/view/AdapterFileSelector;
.super Landroid/widget/BaseAdapter;
.source "AdapterFileSelector.java"


# instance fields
.field private clickSelected:Z

.field private currentDir:Ljava/io/File;

.field private extension:Ljava/lang/String;

.field private fileArray:[Ljava/io/File;

.field private fileDelete:Ljava/lang/Runnable;

.field private fileSelected:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private hasParent:Z

.field private leaveRootDir:Z

.field private longClickDelete:Z

.field private progressBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

.field private rootDir:Ljava/lang/String;

.field private selectedFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->clickSelected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->longClickDelete:Z

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    const-string v1, "/"

    iput-object v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->rootDir:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->leaveRootDir:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->init(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;ZZLjava/lang/Runnable;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->clickSelected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->longClickDelete:Z

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    const-string v1, "/"

    iput-object v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->rootDir:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->leaveRootDir:Z

    iput-boolean p8, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->leaveRootDir:Z

    iput-boolean p5, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->clickSelected:Z

    iput-boolean p6, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->longClickDelete:Z

    iput-object p7, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileDelete:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->init(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;)V

    return-void
.end method

.method public static FileView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$102(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->selectedFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileSelected:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileDelete:Ljava/lang/Runnable;

    return-object p0
.end method

.method private init(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->rootDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileSelected:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->progressBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    if-eqz p4, :cond_1

    const-string p2, "."

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p4, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->extension:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->extension:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    return-void
.end method

.method private loadDir(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->progressBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    const-string v1, "load_data"

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->FileView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileArray:[Ljava/io/File;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileArray:[Ljava/io/File;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileArray:[Ljava/io/File;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileArray:[Ljava/io/File;

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

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->selectedFile:Ljava/io/File;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-boolean p2, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    const v0, 0x7f09000d

    const v1, 0x7f0c0052

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "..."

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/leo/salt/tweaks/view/AdapterFileSelector$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector$1;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tweaks/view/AdapterFileSelector$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/leo/salt/tweaks/view/AdapterFileSelector$2;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Ljava/io/File;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0c0054

    invoke-static {p2, p3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x100000

    const-string p3, "%.2f"

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-gez v7, :cond_3

    new-array v1, v6, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v5

    const-string p3, "%sKB"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x40000000

    cmp-long v7, v1, v3

    if-gez v7, :cond_4

    new-array v1, v6, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v5

    const-string p3, "%sMB"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    new-array v1, v6, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v5

    const-string p3, "%sGB"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const v1, 0x7f09000c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p3, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->clickSelected:Z

    if-eqz p3, :cond_5

    new-instance p3, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;

    invoke-direct {p3, p0, p2, p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector$3;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Landroid/view/View;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    iget-boolean p3, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->longClickDelete:Z

    if-eqz p3, :cond_6

    new-instance p3, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;

    invoke-direct {p3, p0, p2, p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector$4;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Landroid/view/View;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public goParent()Z
    .locals 2

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$loadDir$2$AdapterFileSelector(Ljava/io/File;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->leaveRootDir:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->rootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->rootDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->hasParent:Z

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$kFvkmvwa6kUMoi9yrKKvyi0moNw;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$kFvkmvwa6kUMoi9yrKKvyi0moNw;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    aget-object v5, v0, v2

    aput-object v5, v0, v3

    aput-object v4, v0, v2

    goto :goto_3

    :cond_2
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-ne v4, v5, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    aget-object v4, v0, v3

    aget-object v5, v0, v2

    aput-object v5, v0, v3

    aput-object v4, v0, v2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->fileArray:[Ljava/io/File;

    :cond_6
    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->currentDir:Ljava/io/File;

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$5iK49B2RHxFuqMsGBNJNR7vWKIs;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$5iK49B2RHxFuqMsGBNJNR7vWKIs;-><init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$0$AdapterFileSelector(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->extension:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$null$1$AdapterFileSelector()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->progressBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->hideDialog()V

    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->loadDir(Ljava/io/File;)V

    :cond_0
    return-void
.end method
