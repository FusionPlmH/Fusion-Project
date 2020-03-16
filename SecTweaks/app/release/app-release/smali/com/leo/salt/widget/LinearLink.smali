.class public Lcom/leo/salt/widget/LinearLink;
.super Landroid/widget/LinearLayout;
.source "LinearLink.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static INFO_ATTR_ULR:Ljava/lang/String; = "LeoURL"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/widget/LinearLink;->ini_params(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ini_params(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object p1, Lcom/leo/salt/widget/LinearLink;->INFO_ATTR_ULR:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/widget/LinearLink;->mUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/widget/LinearLink;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/salt/widget/LinearLink;->setClickable(Z)V

    invoke-virtual {p0, p0}, Lcom/leo/salt/widget/LinearLink;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private openUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leo/salt/activity/WebViewActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/widget/LinearLink;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/widget/LinearLink;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/widget/LinearLink;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
