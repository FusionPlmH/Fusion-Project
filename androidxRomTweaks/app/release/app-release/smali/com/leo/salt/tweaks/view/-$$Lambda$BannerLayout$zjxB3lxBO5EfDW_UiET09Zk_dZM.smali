.class public final synthetic Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/view/BannerLayout;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/view/BannerLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;->f$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    iput p2, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;->f$0:Lcom/leo/salt/tweaks/view/BannerLayout;

    iget v1, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$BannerLayout$zjxB3lxBO5EfDW_UiET09Zk_dZM;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tweaks/view/BannerLayout;->lambda$getImageView$0$BannerLayout(ILandroid/view/View;)V

    return-void
.end method
