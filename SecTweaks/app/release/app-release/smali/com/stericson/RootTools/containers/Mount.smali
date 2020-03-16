.class public Lcom/stericson/RootTools/containers/Mount;
.super Ljava/lang/Object;
.source "Mount.java"


# instance fields
.field final mDevice:Ljava/io/File;

.field final mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mMountPoint:Ljava/io/File;

.field final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Mount;->mDevice:Ljava/io/File;

    iput-object p2, p0, Lcom/stericson/RootTools/containers/Mount;->mMountPoint:Ljava/io/File;

    iput-object p3, p0, Lcom/stericson/RootTools/containers/Mount;->mType:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashSet;

    const-string p2, ","

    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Mount;->mFlags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getDevice()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Mount;->mDevice:Ljava/io/File;

    return-object v0
.end method

.method public getFlags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Mount;->mFlags:Ljava/util/Set;

    return-object v0
.end method

.method public getMountPoint()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Mount;->mMountPoint:Ljava/io/File;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Mount;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s on %s type %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/stericson/RootTools/containers/Mount;->mDevice:Ljava/io/File;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/stericson/RootTools/containers/Mount;->mMountPoint:Ljava/io/File;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/stericson/RootTools/containers/Mount;->mType:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/stericson/RootTools/containers/Mount;->mFlags:Ljava/util/Set;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
