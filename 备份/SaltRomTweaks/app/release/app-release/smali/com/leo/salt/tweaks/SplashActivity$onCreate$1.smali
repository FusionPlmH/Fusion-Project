.class final Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SplashActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/SplashActivity;->onCreate(Landroid/os/Bundle;)V
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
        0xf
    }
.end annotation


# instance fields
.field final synthetic $config:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/leo/salt/tweaks/SplashActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/SplashActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;->this$0:Lcom/leo/salt/tweaks/SplashActivity;

    iput-object p2, p0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;->$config:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;->this$0:Lcom/leo/salt/tweaks/SplashActivity;

    sget v0, Lcom/leo/salt/tweaks/R$id;->start_contract:I

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "start_contract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;->this$0:Lcom/leo/salt/tweaks/SplashActivity;

    sget v0, Lcom/leo/salt/tweaks/R$id;->rom_splash:I

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "rom_splash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;->this$0:Lcom/leo/salt/tweaks/SplashActivity;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/SplashActivity;->ROMinfo(Z)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;->$config:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "first_open"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
