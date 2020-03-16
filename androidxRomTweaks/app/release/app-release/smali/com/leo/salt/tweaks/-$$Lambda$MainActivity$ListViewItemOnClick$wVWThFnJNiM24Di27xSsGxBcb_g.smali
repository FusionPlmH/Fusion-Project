.class public final synthetic Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;->f$0:Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;

    iput p2, p0, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;->f$0:Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;

    iget v1, p0, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;->f$1:I

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->lambda$onItemClick$0$MainActivity$ListViewItemOnClick(I)V

    return-void
.end method
