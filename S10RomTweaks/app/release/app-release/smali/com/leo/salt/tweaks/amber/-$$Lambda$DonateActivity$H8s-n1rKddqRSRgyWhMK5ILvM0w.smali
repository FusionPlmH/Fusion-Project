.class public final synthetic Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/amber/DonateActivity;

.field private final synthetic f$1:Landroid/widget/TextView;

.field private final synthetic f$2:Landroid/widget/TextView;

.field private final synthetic f$3:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/amber/DonateActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$0:Lcom/leo/salt/tweaks/amber/DonateActivity;

    iput-object p2, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$0:Lcom/leo/salt/tweaks/amber/DonateActivity;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/-$$Lambda$DonateActivity$H8s-n1rKddqRSRgyWhMK5ILvM0w;->f$3:Landroid/widget/TextView;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/leo/salt/tweaks/amber/DonateActivity;->lambda$showCopyDialog$0$DonateActivity(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
