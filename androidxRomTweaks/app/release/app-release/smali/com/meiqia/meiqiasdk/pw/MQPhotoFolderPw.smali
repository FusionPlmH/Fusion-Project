.class public Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;
.super Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;
.source "MQPhotoFolderPw.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;,
        Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderViewHolder;,
        Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;
    }
.end annotation


# static fields
.field public static final ANIM_DURATION:I = 0x12c


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;

.field private mContentLv:Landroid/widget/ListView;

.field private mCurrentPosition:I

.field private mFolderAdapter:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;

.field private mRootLl:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;)V
    .locals 6

    sget v2, Lcom/meiqia/meiqiasdk/R$layout;->mq_pw_photo_folder:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;-><init>(Landroid/app/Activity;ILandroid/view/View;II)V

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mCallback:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;

    return-void
.end method

.method static synthetic access$001(Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;)V
    .locals 0

    invoke-super {p0}, Lcom/meiqia/meiqiasdk/pw/MQBasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mWindowRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mRootLl:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mRootLl:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mCallback:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;->executeDismissAnim()V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    new-instance v3, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$1;

    invoke-direct {v3, p0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$1;-><init>(Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mCurrentPosition:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->root_ll:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mRootLl:Landroid/widget/LinearLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_lv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->root_ll:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->dismiss()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mCallback:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mCurrentPosition:I

    if-eq p2, p3, :cond_0

    invoke-interface {p1, p3}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$Callback;->onSelectedFolder(I)V

    :cond_0
    iput p3, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->dismiss()V

    return-void
.end method

.method protected processLogic()V
    .locals 2

    const/high16 v0, 0x1030000

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x70000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;-><init>(Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mFolderAdapter:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mFolderAdapter:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meiqia/meiqiasdk/model/ImageFolderModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mFolderAdapter:Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw$FolderAdapter;->setDatas(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->showAsDropDown(Landroid/view/View;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mWindowRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mContentLv:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mRootLl:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/pw/MQPhotoFolderPw;->mRootLl:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
