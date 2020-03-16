.class public final synthetic Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/CheckBox;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$0:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$0:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$QHmFgzzuBADL1klIHRFG6Nkqoxs;->f$3:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/widget/DialogView;->lambda$dialogCheck$15(Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
