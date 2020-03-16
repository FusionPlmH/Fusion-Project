.class final Lcom/leo/salt/MainActivity$DrawerBottomView$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/MainActivity;->DrawerBottomView()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
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

    iput-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$2;->this$0:Lcom/leo/salt/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$2;->this$0:Lcom/leo/salt/MainActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/leo/salt/MainActivity;->access$setMIntent$p(Lcom/leo/salt/MainActivity;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$2;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMIntent$p(Lcom/leo/salt/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/activity/SubActivity$FragmentType;->Tools:Lcom/leo/salt/activity/SubActivity$FragmentType;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$2;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$2;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMIntent$p(Lcom/leo/salt/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
