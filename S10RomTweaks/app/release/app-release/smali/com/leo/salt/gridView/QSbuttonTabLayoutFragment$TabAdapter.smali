.class Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment$TabAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "QSbuttonTabLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment$TabAdapter;->this$0:Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/leo/salt/fragment/PulldownNotificationShelfFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownNotificationShelfFragment;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/leo/salt/fragment/PulldownButtonsFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownButtonsFragment;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lcom/leo/salt/fragment/PulldownQSButtonsFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownQSButtonsFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment$TabAdapter;->this$0:Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;

    invoke-static {v0}, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;->access$100(Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/gridView/QSbuttonTabLayoutFragment;->access$000()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method