.class public Landroid/support/design/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HEADER:Ljava/lang/String; = "android:menu:header"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private callback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field headerLayout:Landroid/widget/LinearLayout;

.field iconTintList:Landroid/content/res/ColorStateList;

.field private id:I

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field itemHorizontalPadding:I

.field itemIconPadding:I

.field layoutInflater:Landroid/view/LayoutInflater;

.field menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private menuView:Landroid/support/design/internal/NavigationMenuView;

.field final onClickListener:Landroid/view/View$OnClickListener;

.field paddingSeparator:I

.field private paddingTopDefault:I

.field textAppearance:I

.field textAppearanceSet:Z

.field textColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuPresenter$1;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingTopDefault:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingTopDefault:I

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    return-void
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getCheckedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->id:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->itemIconPadding:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 3

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/internal/NavigationMenuView;

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {p1, p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    :cond_0
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Landroid/support/design/R$layout;->design_navigation_item_header:I

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_1
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    return-object p1
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingSeparator:I

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->callback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v1, :cond_1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->menuView:Landroid/support/design/internal/NavigationMenuView;

    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->callback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1    # Landroid/support/v7/view/menu/MenuItemImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->id:I

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->itemIconPadding:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->textAppearance:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    :cond_0
    return-void
.end method
