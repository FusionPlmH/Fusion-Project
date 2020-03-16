.class public abstract Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;
.super Landroid/widget/PopupWindow;
.source "MQBasePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mWindowRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, p5, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-direct {p0, p1, p3}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->init(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->initView()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->setListener()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->processLogic()V

    return-void
.end method

.method private init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow$1;-><init>(Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->mAnchorView:Landroid/view/View;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->mWindowRootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected getViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Landroid/view/View;",
            ">(I)TVT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract initView()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected abstract processLogic()V
.end method

.method protected abstract setListener()V
.end method

.method public abstract show()V
.end method
