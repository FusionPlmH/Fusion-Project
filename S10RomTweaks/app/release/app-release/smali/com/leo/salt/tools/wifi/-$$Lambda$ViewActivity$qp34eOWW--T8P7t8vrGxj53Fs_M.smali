.class public final synthetic Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tools/wifi/ViewActivity;

.field private final synthetic f$1:Landroid/content/ClipboardManager;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tools/wifi/ViewActivity;Landroid/content/ClipboardManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;->f$0:Lcom/leo/salt/tools/wifi/ViewActivity;

    iput-object p2, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;->f$1:Landroid/content/ClipboardManager;

    iput p3, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;->f$0:Lcom/leo/salt/tools/wifi/ViewActivity;

    iget-object v1, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;->f$1:Landroid/content/ClipboardManager;

    iget v2, p0, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/leo/salt/tools/wifi/ViewActivity;->lambda$null$0$ViewActivity(Landroid/content/ClipboardManager;ILandroid/content/DialogInterface;I)V

    return-void
.end method
