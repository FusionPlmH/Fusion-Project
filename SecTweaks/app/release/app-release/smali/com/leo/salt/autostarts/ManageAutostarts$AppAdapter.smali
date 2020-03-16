.class Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/autostarts/ManageAutostarts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/autostarts/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/leo/salt/autostarts/ManageAutostarts;


# direct methods
.method public constructor <init>(Lcom/leo/salt/autostarts/ManageAutostarts;Landroid/view/LayoutInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/leo/salt/autostarts/AppItem;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/leo/salt/autostarts/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/autostarts/AppItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-static {p2}, Lcom/leo/salt/autostarts/ManageAutostarts;->access$300(Lcom/leo/salt/autostarts/ManageAutostarts;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0054

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0900c6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object v0

    iget-object v0, v0, Lcom/leo/salt/autostarts/AppItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f09002f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object v0

    iget-object v0, v0, Lcom/leo/salt/autostarts/AppItem;->appName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p3, 0x7f090180

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object v1

    iget-object v1, v1, Lcom/leo/salt/autostarts/AppItem;->status:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090034

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object p1

    iget-boolean p1, p1, Lcom/leo/salt/autostarts/AppItem;->checked:Z

    if-eqz p1, :cond_1

    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-object p2
.end method
