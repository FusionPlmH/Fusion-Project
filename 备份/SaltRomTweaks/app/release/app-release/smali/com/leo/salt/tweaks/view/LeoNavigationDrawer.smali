.class public Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;
.super Landroid/widget/FrameLayout;
.source "LeoNavigationDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;
    }
.end annotation


# instance fields
.field public mActivity:Lcom/leo/salt/tweaks/MainActivity;

.field public mCarrier:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mDATE:Landroid/widget/TextView;

.field private mLeoObserver:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;

.field public mbgCardView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public HideNavigationBar()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_hide_nav"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersive.navigation=apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leo_salt_hide_nav_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    const-string v2, "policy_control"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->HideNavigationBar()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mDATE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->getToday(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->DrawerCard(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->DrawerCardView(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->setCardView(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->DrawerCarrier(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->DrawerCarrierString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/utils/PrefUtils;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mCarrier:Landroid/widget/TextView;

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {v0}, Lcom/leo/salt/tweaks/MainActivity;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mActivity:Lcom/leo/salt/tweaks/MainActivity;

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mCarrier:Landroid/widget/TextView;

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mbgCardView:Landroid/widget/ImageView;

    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mDATE:Landroid/widget/TextView;

    new-instance v0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;-><init>(Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mLeoObserver:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mLeoObserver:Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer$LeoObserver;->observe()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->initView()V

    return-void
.end method

.method public setCardView(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mbgCardView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/leo/salt/utils/PrefUtils;->getLeoWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->mbgCardView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoNavigationDrawer;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "leo_timg"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
