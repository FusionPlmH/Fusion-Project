.class Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow$1;
.super Ljava/lang/Object;
.source "MQBasePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->init(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow$1;->this$0:Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow$1;->this$0:Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
