.class Lcom/leo/salt/tweaks/view/BannerLayout$1;
.super Ljava/lang/Object;
.source "BannerLayout.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BannerLayout;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/BannerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$000(Lcom/leo/salt/tweaks/view/BannerLayout;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$100(Lcom/leo/salt/tweaks/view/BannerLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$200(Lcom/leo/salt/tweaks/view/BannerLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$100(Lcom/leo/salt/tweaks/view/BannerLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$100(Lcom/leo/salt/tweaks/view/BannerLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$400(Lcom/leo/salt/tweaks/view/BannerLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$000(Lcom/leo/salt/tweaks/view/BannerLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$1;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$300(Lcom/leo/salt/tweaks/view/BannerLayout;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
