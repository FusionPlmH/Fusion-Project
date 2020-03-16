.class public Lcom/leo/salt/tweaks/view/widget/ListViewFruit;
.super Ljava/lang/Object;
.source "ListViewFruit.java"


# instance fields
.field private Summary:[Ljava/lang/String;

.field private imageId:[Landroid/graphics/drawable/Drawable;

.field private name:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->name:[Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->imageId:[Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->Summary:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageId()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->imageId:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->name:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->Summary:[Ljava/lang/String;

    return-object v0
.end method

.method public setImageId([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->imageId:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setName([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->name:[Ljava/lang/String;

    return-void
.end method

.method public setSummary([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/ListViewFruit;->Summary:[Ljava/lang/String;

    return-void
.end method
