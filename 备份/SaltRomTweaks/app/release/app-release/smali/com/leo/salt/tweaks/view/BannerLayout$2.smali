.class Lcom/leo/salt/tweaks/view/BannerLayout$2;
.super Ljava/lang/Object;
.source "BannerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/BannerLayout;->getImageView(Ljava/lang/String;I)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/BannerLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    iput p2, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$500(Lcom/leo/salt/tweaks/view/BannerLayout;)Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->this$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->access$500(Lcom/leo/salt/tweaks/view/BannerLayout;)Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/leo/salt/tweaks/view/BannerLayout$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/leo/salt/tweaks/view/BannerLayout$OnBannerItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
