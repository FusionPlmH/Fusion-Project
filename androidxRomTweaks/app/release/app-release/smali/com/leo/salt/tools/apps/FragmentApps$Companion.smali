.class public final Lcom/leo/salt/tools/apps/FragmentApps$Companion;
.super Ljava/lang/Object;
.source "FragmentApps.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/apps/FragmentApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/leo/salt/tools/apps/FragmentApps$Companion;",
        "",
        "()V",
        "createPage",
        "Landroid/app/Fragment;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/apps/FragmentApps$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPage()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-direct {v0}, Lcom/leo/salt/tools/apps/FragmentApps;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method
