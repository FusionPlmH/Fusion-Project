.class public Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityTitles:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final packageName:Ljava/lang/String;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->activityTitles:Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->activityTitles:Ljava/util/TreeSet;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)I
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->compareTo(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)I

    move-result p1

    return p1
.end method
