.class public Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;
.super Landroid/app/AlertDialog;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/widget/DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeViewDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->initCodeView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initCodeView(Landroid/content/Context;)V
    .locals 9

    const-string v0, "open_source_name"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_source_name_info"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c007c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;->setView(Landroid/view/View;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    const-string v6, "message"

    const-string v7, "name"

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aget-object v8, v0, v3

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v1, v3

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v1, 0x7f0c005b

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    new-array v8, v3, [I

    fill-array-data v8, :array_0

    move-object v3, v0

    move-object v4, p1

    move v6, v1

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const p1, 0x7f0901a8

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setMaxOverScrollY(I)V

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog$CodeViewItemOnClick;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogView$CodeViewDialog;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0900dd
        0x7f0900dc
    .end array-data
.end method
