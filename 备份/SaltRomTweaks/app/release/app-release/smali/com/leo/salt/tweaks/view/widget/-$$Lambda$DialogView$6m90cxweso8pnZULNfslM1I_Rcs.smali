.class public final synthetic Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/-$$Lambda$DialogView$6m90cxweso8pnZULNfslM1I_Rcs;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->lambda$AppPackageVersionsError$18(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/leo/SweetAlert/SweetAlertDialog;)V

    return-void
.end method
