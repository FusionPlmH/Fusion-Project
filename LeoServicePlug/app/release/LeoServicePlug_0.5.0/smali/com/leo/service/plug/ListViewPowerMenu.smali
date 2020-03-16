.class public Lcom/leo/service/plug/ListViewPowerMenu;
.super Lcom/leo/service/plug/LeoGlobalActions;
.source "ListViewPowerMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/service/plug/ListViewPowerMenu$GridViewItemOnClick;,
        Lcom/leo/service/plug/ListViewPowerMenu$setAdapterView;
    }
.end annotation


# instance fields
.field private mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/service/plug/LeoGlobalActions;-><init>()V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .locals 1

    const v0, 0x7f060005

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewPowerMenu;->setLeoTheme()V

    invoke-super {p0, p1}, Lcom/leo/service/plug/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewPowerMenu;->Background()V

    const p1, 0x7f050006

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/service/plug/OverScrollListView;

    iput-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    new-instance v0, Lcom/leo/service/plug/ListViewPowerMenu$setAdapterView;

    invoke-direct {v0, p0, p0}, Lcom/leo/service/plug/ListViewPowerMenu$setAdapterView;-><init>(Lcom/leo/service/plug/ListViewPowerMenu;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    new-instance v0, Lcom/leo/service/plug/ListViewPowerMenu$GridViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/service/plug/ListViewPowerMenu$GridViewItemOnClick;-><init>(Lcom/leo/service/plug/ListViewPowerMenu;)V

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setFastScrollEnabled(Z)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setFadingEdgeLength(I)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setDividerHeight(I)V

    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu;->mOverScrollGridView:Lcom/leo/service/plug/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/service/plug/ListViewPowerMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_power_menu_scroll_number"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/leo/service/plug/OverScrollListView;->setMaxOverScrollY(I)V

    const p1, 0x7f05000a

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewPowerMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/ListViewPowerMenu;->setTextReminderStyele(Landroid/widget/TextView;)V

    return-void
.end method
