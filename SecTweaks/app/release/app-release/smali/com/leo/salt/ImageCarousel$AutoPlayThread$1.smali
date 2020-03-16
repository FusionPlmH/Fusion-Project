.class Lcom/leo/salt/ImageCarousel$AutoPlayThread$1;
.super Ljava/lang/Object;
.source "ImageCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ImageCarousel$AutoPlayThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/ImageCarousel$AutoPlayThread;


# direct methods
.method constructor <init>(Lcom/leo/salt/ImageCarousel$AutoPlayThread;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread$1;->this$1:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread$1;->this$1:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    iget-object v0, v0, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$700(Lcom/leo/salt/ImageCarousel;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/ImageCarousel$AutoPlayThread$1;->this$1:Lcom/leo/salt/ImageCarousel$AutoPlayThread;

    iget-object v1, v1, Lcom/leo/salt/ImageCarousel$AutoPlayThread;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v1}, Lcom/leo/salt/ImageCarousel;->access$700(Lcom/leo/salt/ImageCarousel;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
