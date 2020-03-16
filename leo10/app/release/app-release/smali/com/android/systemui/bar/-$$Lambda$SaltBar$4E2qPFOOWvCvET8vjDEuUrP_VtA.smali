.class public final synthetic Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bar/SaltBar;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bar/SaltBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;->f$0:Lcom/android/systemui/bar/SaltBar;

    iput p2, p0, Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;->f$0:Lcom/android/systemui/bar/SaltBar;

    iget v1, p0, Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/bar/SaltBar;->lambda$setSaltDeviceInfoWithTag$0$SaltBar(ILandroid/view/View;)V

    return-void
.end method
