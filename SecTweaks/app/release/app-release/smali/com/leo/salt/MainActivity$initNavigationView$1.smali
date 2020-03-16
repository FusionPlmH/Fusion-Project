.class final Lcom/leo/salt/MainActivity$initNavigationView$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/MainActivity;->initNavigationView()V
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

    iput-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMAbout$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x800003

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result p1

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/leo/salt/widget/SourceDialog;

    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "license_cn.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Lcom/leo/salt/widget/SourceDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/leo/salt/widget/SourceDialog;

    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "license.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Lcom/leo/salt/widget/SourceDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMDonate$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/MainActivity;->setdonateregion()V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMPowerItem$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_6

    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.leoamber.powerservice"

    const-string v3, "com.leoamber.powerservice.Globalactions"

    invoke-direct {p1, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-virtual {p1, v0}, Lcom/leo/salt/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/MainActivity;->setPower()V

    :goto_1
    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMChangelog$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_8

    new-instance p1, Lcom/leo/salt/widget/LogDialog;

    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v3, Lcom/leo/salt/MainActivity;->Companion:Lcom/leo/salt/MainActivity$Companion;

    invoke-virtual {v3}, Lcom/leo/salt/MainActivity$Companion;->getMChangelogUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-virtual {v4}, Lcom/leo/salt/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10029f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v0, v3, v4}, Lcom/leo/salt/widget/LogDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMHelp$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/16 p1, 0xc8

    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Lcom/leo/salt/utils/Constants;->HelpUrl:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/leo/salt/utils/Utils;->StartWebActivity(ILandroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMShare$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "mContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100387

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Hello"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v5}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "mContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100388

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v5}, Lcom/leo/salt/MainActivity;->access$getMContext$p(Lcom/leo/salt/MainActivity;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "mContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100389

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/leo/salt/MainActivity;->access$shareText(Lcom/leo/salt/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/MainActivity;->access$getMReset$p(Lcom/leo/salt/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/leo/salt/widget/BackupsDialog;->newInstance(I)Lcom/leo/salt/widget/BackupsDialog;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    const-string v3, "backup_restore"

    invoke-virtual {p1, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    iget-object p1, p0, Lcom/leo/salt/MainActivity$initNavigationView$1;->this$0:Lcom/leo/salt/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/MainActivity;->access$getDrawerLayout$p(Lcom/leo/salt/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_e
    :goto_2
    return v1
.end method
