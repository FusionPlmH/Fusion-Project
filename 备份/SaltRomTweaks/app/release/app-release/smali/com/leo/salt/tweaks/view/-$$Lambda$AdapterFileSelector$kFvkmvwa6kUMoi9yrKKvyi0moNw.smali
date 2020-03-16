.class public final synthetic Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$kFvkmvwa6kUMoi9yrKKvyi0moNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$kFvkmvwa6kUMoi9yrKKvyi0moNw;->f$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$kFvkmvwa6kUMoi9yrKKvyi0moNw;->f$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->lambda$null$0$AdapterFileSelector(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
