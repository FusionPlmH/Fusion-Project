.class public Lcom/leo/salt/tweaks/MainActivity$intSettings;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "intSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;
    }
.end annotation


# instance fields
.field public mNightModel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/MainActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0901b2

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->mNightModel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->mNightModel:Landroid/widget/TextView;

    new-instance v1, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/MainActivity$intSettings$DNightModelOnClickListener;-><init>(Lcom/leo/salt/tweaks/MainActivity$intSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b1

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$2000(Lcom/leo/salt/tweaks/MainActivity;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/leo/salt/tweaks/MainActivity$intSettings$1;-><init>(Lcom/leo/salt/tweaks/MainActivity$intSettings;Lcom/leo/salt/tweaks/MainActivity;Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method


# virtual methods
.method public setAndroidNativeLightStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    :goto_0
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$intSettings;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method
