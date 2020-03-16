.class final Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;
.super Ljava/lang/Object;
.source "AppListAdapter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/AppListAdapter;->sortAppList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "l",
        "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
        "kotlin.jvm.PlatformType",
        "r",
        "compare"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;

    invoke-direct {v0}, Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;-><init>()V

    sput-object v0, Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;->INSTANCE:Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/leo/salt/tweaks/view/widget/Appinfo;Lcom/leo/salt/tweaks/view/widget/Appinfo;)I
    .locals 5

    iget-object v0, p1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabledState:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabledState:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gez v2, :cond_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/Appinfo;

    check-cast p2, Lcom/leo/salt/tweaks/view/widget/Appinfo;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tools/constants/AppListAdapter$sortAppList$1;->compare(Lcom/leo/salt/tweaks/view/widget/Appinfo;Lcom/leo/salt/tweaks/view/widget/Appinfo;)I

    move-result p1

    return p1
.end method
