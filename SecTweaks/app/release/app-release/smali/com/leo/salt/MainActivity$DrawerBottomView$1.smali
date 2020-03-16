.class final Lcom/leo/salt/MainActivity$DrawerBottomView$1;
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

    iput-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xfa

    iget-object v0, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/leo/salt/update/DownloadActivity;

    invoke-static {p1, v0, v1}, Lcom/leo/salt/utils/Utils;->StartActivity(ILandroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->Promptdonate(Landroid/app/Activity;)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/MainActivity$DrawerBottomView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method
