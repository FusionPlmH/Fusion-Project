.class public Lcom/leo/salt/user/info/UserUsingHelpActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "UserUsingHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/user/info/UserUsingHelpActivity$fetchdata;
    }
.end annotation


# instance fields
.field public CN:Ljava/lang/String;

.field public CarId_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public CarNumber_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public CarNumber_list2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Carid:I

.field public Carnumber:Ljava/lang/String;

.field public Carnumber2:Ljava/lang/String;

.field public EN:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->data:Ljava/lang/String;

    const-string v0, "help_cn"

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->CN:Ljava/lang/String;

    const-string v0, "help_en"

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->EN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->Carnumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->Carnumber2:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->CarId_list:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->CarNumber_list:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->CarNumber_list2:Ljava/util/List;

    return-void
.end method

.method private intView()V
    .locals 1

    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/info/UserUsingHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/user/info/UserUsingHelpActivity;->mName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090034

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090225

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/info/UserUsingHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/info/UserUsingHelpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/user/info/UserUsingHelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f090226

    invoke-virtual {p0, p1}, Lcom/leo/salt/user/info/UserUsingHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v0, "leo_slide_meun_help"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/user/info/UserUsingHelpActivity;->intView()V

    new-instance p1, Lcom/leo/salt/user/info/UserUsingHelpActivity$fetchdata;

    invoke-direct {p1, p0}, Lcom/leo/salt/user/info/UserUsingHelpActivity$fetchdata;-><init>(Lcom/leo/salt/user/info/UserUsingHelpActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/leo/salt/user/info/UserUsingHelpActivity$fetchdata;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
