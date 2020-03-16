.class Lcom/leo/salt/ImageCarousel$1;
.super Ljava/lang/Object;
.source "ImageCarousel.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ImageCarousel;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ImageCarousel;


# direct methods
.method constructor <init>(Lcom/leo/salt/ImageCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$000(Lcom/leo/salt/ImageCarousel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$200(Lcom/leo/salt/ImageCarousel;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v1}, Lcom/leo/salt/ImageCarousel;->access$100(Lcom/leo/salt/ImageCarousel;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$400(Lcom/leo/salt/ImageCarousel;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v1}, Lcom/leo/salt/ImageCarousel;->access$300(Lcom/leo/salt/ImageCarousel;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0}, Lcom/leo/salt/ImageCarousel;->access$400(Lcom/leo/salt/ImageCarousel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/leo/salt/ImageCarousel$1;->this$0:Lcom/leo/salt/ImageCarousel;

    invoke-static {v0, p1}, Lcom/leo/salt/ImageCarousel;->access$302(Lcom/leo/salt/ImageCarousel;I)I

    return-void
.end method
