.class final Lcom/leo/salt/MainActivity$initBottomNavigationView$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/MainActivity;->initBottomNavigationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onNavigationItemSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/MainActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f09010e

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/leo/salt/MainActivity;->access$switchFragment(Lcom/leo/salt/MainActivity;II)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1, v0}, Lcom/leo/salt/MainActivity;->access$setMLastfragment$p(Lcom/leo/salt/MainActivity;I)V

    :cond_0
    return v1

    :cond_1
    const v2, 0x7f09010f

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/leo/salt/MainActivity;->access$switchFragment(Lcom/leo/salt/MainActivity;II)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1, v1}, Lcom/leo/salt/MainActivity;->access$setMLastfragment$p(Lcom/leo/salt/MainActivity;I)V

    :cond_2
    return v1

    :cond_3
    const v2, 0x7f090102

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/leo/salt/MainActivity;->access$switchFragment(Lcom/leo/salt/MainActivity;II)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1, v0}, Lcom/leo/salt/MainActivity;->access$setMLastfragment$p(Lcom/leo/salt/MainActivity;I)V

    :cond_4
    return v1

    :cond_5
    const v2, 0x7f09010c

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMLastfragment$p(Lcom/leo/salt/MainActivity;)I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/leo/salt/MainActivity;->access$switchFragment(Lcom/leo/salt/MainActivity;II)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initBottomNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1, v0}, Lcom/leo/salt/MainActivity;->access$setMLastfragment$p(Lcom/leo/salt/MainActivity;I)V

    :cond_6
    return v1

    :cond_7
    return v0
.end method
