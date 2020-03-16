.class public final synthetic Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$XPEu0edFJER2dNJAl4EHk2ElMbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$XPEu0edFJER2dNJAl4EHk2ElMbc;->f$0:Lcom/leo/salt/tweaks/MainActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$XPEu0edFJER2dNJAl4EHk2ElMbc;->f$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/MainActivity;->lambda$BottomNavigationView$0$MainActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
