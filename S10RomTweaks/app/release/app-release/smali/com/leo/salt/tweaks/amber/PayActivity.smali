.class public Lcom/leo/salt/tweaks/amber/PayActivity;
.super Landroid/app/Activity;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;,
        Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tweaks/amber/PayActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PayActivity;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/PayActivity;->getWindow()Landroid/view/Window;

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
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x680080

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/PayActivity;->hideBottomUIMenu()V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/PayActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0c0027

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->setContentView(I)V

    const p1, 0x7f09010c

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity;->mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity;->mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PayActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/tweaks/amber/PayActivity$PayGridViewAdapter;-><init>(Lcom/leo/salt/tweaks/amber/PayActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PayActivity;->mGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/amber/PayActivity$GridViewItemOnClick;-><init>(Lcom/leo/salt/tweaks/amber/PayActivity;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method