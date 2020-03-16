.class Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "UIBGTabLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/UIBGTabLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/UIBGTabLayoutFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/UIBGTabLayoutFragment;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;->this$0:Lcom/leo/salt/gridView/UIBGTabLayoutFragment;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;->this$0:Lcom/leo/salt/gridView/UIBGTabLayoutFragment;

    invoke-static {v0}, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->access$000(Lcom/leo/salt/gridView/UIBGTabLayoutFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/leo/salt/fragment/PulldownNotificationFuzzy;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownNotificationFuzzy;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/leo/salt/fragment/StatusBarBackgroundFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/StatusBarBackgroundFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/gridView/UIBGTabLayoutFragment$TabAdapter;->this$0:Lcom/leo/salt/gridView/UIBGTabLayoutFragment;

    invoke-static {v0}, Lcom/leo/salt/gridView/UIBGTabLayoutFragment;->access$000(Lcom/leo/salt/gridView/UIBGTabLayoutFragment;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
