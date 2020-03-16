.class public Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
.super Ljava/lang/Object;
.source "FloatingToolbarMenuBuilder.java"


# instance fields
.field private menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public addItem(II)Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
    .locals 3

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public addItem(III)Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public addItem(IILjava/lang/String;)Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;)Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
    .locals 3

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;I)Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public build()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingToolbarMenuBuilder;->menuBuilder:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method
