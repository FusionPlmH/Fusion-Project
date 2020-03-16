.class public Lcom/leo/salt/tweaks/amber/CleanActivity;
.super Landroid/app/Activity;
.source "CleanActivity.java"


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private rotateImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/amber/CleanActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected hideBottomUIMenu()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/CleanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/CleanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/CleanActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680080

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/CleanActivity;->hideBottomUIMenu()V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/CleanActivity;->setContentView(I)V

    const p1, 0x7f0900d8

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/CleanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->rotateImage:Landroid/widget/ImageView;

    const p1, 0x7f01000c

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->animation:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->animation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/leo/salt/tweaks/amber/CleanActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/amber/CleanActivity$1;-><init>(Lcom/leo/salt/tweaks/amber/CleanActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->rotateImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/CleanActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
