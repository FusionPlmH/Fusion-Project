.class Lcom/leo/salt/tweaks/updates/jQuery$2;
.super Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;
.source "jQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/updates/jQuery;->rollingPicture(Lcom/leo/salt/tweaks/MainActivity;Landroid/content/Context;Landroid/support/design/widget/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/updates/jQuery;

.field final synthetic val$mLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/updates/jQuery;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->this$0:Lcom/leo/salt/tweaks/updates/jQuery;

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->val$mLinearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;)V
    .locals 1

    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->EXPANDED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->val$mLinearLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->this$0:Lcom/leo/salt/tweaks/updates/jQuery;

    iget-object p1, p1, Lcom/leo/salt/tweaks/updates/jQuery;->mTextView:Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->this$0:Lcom/leo/salt/tweaks/updates/jQuery;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/updates/jQuery;->getVData()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;->COLLAPSED:Lcom/leo/salt/tweaks/base/AppBarStateChangeListener$State;

    const/16 v0, 0x8

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->val$mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/jQuery$2;->val$mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
