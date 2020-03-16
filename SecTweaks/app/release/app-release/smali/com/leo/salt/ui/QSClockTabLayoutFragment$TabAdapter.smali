.class Lcom/leo/salt/ui/QSClockTabLayoutFragment$TabAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "QSClockTabLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/ui/QSClockTabLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/leo/salt/fragment/PulldownQSClockFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownQSClockFragment;-><init>()V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/leo/salt/fragment/PulldownDateFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/PulldownDateFragment;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/ui/QSClockTabLayoutFragment;->access$000()[I

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
