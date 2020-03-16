.class public abstract La/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/io/File;

.field public static b:Landroid/content/res/Resources;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, La/q;->a:Ljava/io/File;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dyn"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, La/q;->a:Ljava/io/File;

    sget-object p0, La/q;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_1
    sget-object p0, La/q;->a:Ljava/io/File;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, La/q;->b:Landroid/content/res/Resources;

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
