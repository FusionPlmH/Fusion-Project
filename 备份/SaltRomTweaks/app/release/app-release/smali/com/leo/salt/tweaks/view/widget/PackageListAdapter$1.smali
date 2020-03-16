.class Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;
.super Landroid/os/Handler;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;->this$0:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;->this$0:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->access$000(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;->this$0:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->access$000(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;)Ljava/util/List;

    move-result-object v1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;->this$0:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->access$000(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->access$100(Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$1;->this$0:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;->notifyDataSetChanged()V

    return-void
.end method
