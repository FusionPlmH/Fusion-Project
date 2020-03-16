.class public final synthetic Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tools/wifi/ViewActivity;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tools/wifi/ViewActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;->f$0:Lcom/leo/salt/tools/wifi/ViewActivity;

    iput p2, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;->f$1:I

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;->f$0:Lcom/leo/salt/tools/wifi/ViewActivity;

    iget v1, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->lambda$null$1$ViewActivity(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
