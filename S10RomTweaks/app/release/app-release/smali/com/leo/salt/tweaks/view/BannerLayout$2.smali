.class Lcom/leo/salt/tweaks/view/BannerLayout$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/BannerLayout;->setViews(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$502(Lcom/leo/salt/tweaks/view/BannerLayout;I)I

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$600(Lcom/leo/salt/tweaks/view/BannerLayout;)I

    move-result v1

    rem-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$700(Lcom/leo/salt/tweaks/view/BannerLayout;I)V

    return-void
.end method
