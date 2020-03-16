.class Lcom/leo/salt/tweaks/view/AdapterFileSelector$1;
.super Ljava/lang/Object;
.source "AdapterFileSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/AdapterFileSelector;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/AdapterFileSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$1;->this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AdapterFileSelector$1;->this$0:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->goParent()Z

    return-void
.end method
