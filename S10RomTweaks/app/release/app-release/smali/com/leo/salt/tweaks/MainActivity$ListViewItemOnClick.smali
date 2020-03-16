.class public Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/MainActivity;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PositionStyle(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/BackupsDialog;->newInstance(I)Lcom/leo/salt/tweaks/view/widget/BackupsDialog;

    move-result-object v0

    const-string v1, "backup_restore"

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$700(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "share_info2"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "share"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "share_info"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/leo/salt/tweaks/view/widget/DialogView;->shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$600(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/leo/salt/user/info/UserUsingHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://www.leorom.cc/index.php/Changelog-CN.html"

    goto :goto_0

    :cond_0
    const-string p1, "https://www.leorom.cc/index.php/Changelog-EN.html"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/MainActivity;->access$400(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$500(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$300(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "leo_slide_meun_code"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->intCodeViewDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "file:///android_asset/FusionLeo_CN.html"

    goto :goto_1

    :cond_1
    const-string p1, "file:///android_asset/FusionLeo_EN.html"

    :goto_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/MainActivity;->access$200(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "team_thankyou"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->WebDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/leo/salt/tweaks/MainActivity;->access$100(Lcom/leo/salt/tweaks/MainActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/leo/salt/tweaks/amber/DonateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$onItemClick$0$MainActivity$ListViewItemOnClick(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->PositionStyle(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;

    invoke-direct {p2, p0, p3}, Lcom/leo/salt/tweaks/-$$Lambda$MainActivity$ListViewItemOnClick$wVWThFnJNiM24Di27xSsGxBcb_g;-><init>(Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;I)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/MainActivity$ListViewItemOnClick;->this$0:Lcom/leo/salt/tweaks/MainActivity;

    const p2, 0x7f0900d3

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return-void
.end method
