.class public final synthetic Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

.field private final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;->f$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;->f$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AdapterFileSelector$T1dKBgAbyh7K8_KqluChW4UrhFk;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->lambda$loadDir$2$AdapterFileSelector(Ljava/io/File;)V

    return-void
.end method
