.class public Lcom/stericson/RootTools/containers/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# instance fields
.field group:Ljava/lang/String;

.field other:Ljava/lang/String;

.field permissions:I

.field symlink:Ljava/lang/String;

.field type:Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPermissions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPermissions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    iget v0, p0, Lcom/stericson/RootTools/containers/Permissions;->permissions:I

    return v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->symlink:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPermissions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    return-void
.end method

.method public setGroupPermissions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    return-void
.end method

.method public setOtherPermissions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    return-void
.end method

.method public setPermissions(I)V
    .locals 0

    iput p1, p0, Lcom/stericson/RootTools/containers/Permissions;->permissions:I

    return-void
.end method

.method public setSymlink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->symlink:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    return-void
.end method

.method public setUserPermissions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    return-void
.end method
