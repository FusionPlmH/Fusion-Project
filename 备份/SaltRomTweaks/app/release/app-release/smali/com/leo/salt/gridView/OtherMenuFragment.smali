.class public Lcom/leo/salt/gridView/OtherMenuFragment;
.super Landroid/app/Fragment;
.source "OtherMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;,
        Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;,
        Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewAdapter;,
        Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;,
        Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewAdapter;,
        Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;
    }
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field private mAdvancedGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mAdvancedName:Landroid/widget/TextView;

.field public mContext:Landroid/app/Activity;

.field private mSystemGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mSystemName:Landroid/widget/TextView;

.field private mUrlGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

.field private mUrlName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private SamsungGoodLuck()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GoodLock"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "goodLock_items"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$P1y7styzSws4iq1pcpduoZCBuzM;

    invoke-direct {v2, p0}, Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$P1y7styzSws4iq1pcpduoZCBuzM;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$qBelv_Exth3I6wlJGrv1bKGquco;->INSTANCE:Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$qBelv_Exth3I6wlJGrv1bKGquco;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/gridView/OtherMenuFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->SamsungGoodLuck()V

    return-void
.end method

.method private initGridView(Landroid/view/View;)V
    .locals 3

    const-string v0, "grid_system"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mSystemGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mSystemGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewAdapter;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mSystemGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/OtherMenuFragment$SystemGridViewOnClick;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_advanced"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mAdvancedGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mAdvancedGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewAdapter;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mAdvancedGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v1, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;

    invoke-direct {v1, p0}, Lcom/leo/salt/gridView/OtherMenuFragment$AdvancedGridViewOnClick;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "grid_url"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mUrlGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mUrlGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewAdapter;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mUrlGridView:Lcom/leo/salt/tweaks/view/widget/LineGridView;

    new-instance v0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/LineGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initValues(Landroid/view/View;)V
    .locals 1

    const-string v0, "grid_system_name"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mSystemName:Landroid/widget/TextView;

    const-string v0, "grid_advanced_name"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mAdvancedName:Landroid/widget/TextView;

    const-string v0, "grid_url_name"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mUrlName:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mUrlName:Landroid/widget/TextView;

    const-string v0, "grid_url_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mAdvancedName:Landroid/widget/TextView;

    const-string v0, "grid_advanced_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mSystemName:Landroid/widget/TextView;

    const-string v0, "grid_system_title"

    invoke-virtual {p0, v0}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$NetworkMode$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$SamsungGoodLuck$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public NetworkMode()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "grid_network"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "network_items"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$PALS-tJDeSI9bqOLxgXa8XAN0K8;

    invoke-direct {v2, p0}, Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$PALS-tJDeSI9bqOLxgXa8XAN0K8;-><init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$dLVg2ki7giiL0qjFO5NBaZUiOEo;->INSTANCE:Lcom/leo/salt/gridView/-$$Lambda$OtherMenuFragment$dLVg2ki7giiL0qjFO5NBaZUiOEo;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public componetName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "/"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$NetworkMode$2$OtherMenuFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.hiddennetworksetting"

    const-string v0, "com.samsung.hiddennetworksetting.MainActivity"

    invoke-virtual {p0, p2, v0}, Lcom/leo/salt/gridView/OtherMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.leo.ACTION_PING"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p2, "com.android.settings"

    const-string v0, "com.android.settings.RadioInfo"

    invoke-virtual {p0, p2, v0}, Lcom/leo/salt/gridView/OtherMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$SamsungGoodLuck$0$OtherMenuFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "goodlock_item_4"

    invoke-virtual {p0, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.systemui.navillera"

    const-string v1, "com.samsung.systemui.navillera.presentation.view.MainSettingActivity"

    invoke-static {p1, v0, v1, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "goodlock_item_3"

    invoke-virtual {p0, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.pluginrecents"

    const-string v1, "com.samsung.android.pluginrecents.setting.SettingsActivity"

    invoke-static {p1, v0, v1, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "goodlock_item_2"

    invoke-virtual {p0, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.edgelightingeffectunit"

    const-string v1, "com.samsung.android.edgelightingeffectunit.activity.EdgeLightingUnitActivity"

    invoke-static {p1, v0, v1, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "goodlock_item_1"

    invoke-virtual {p0, p2}, Lcom/leo/salt/gridView/OtherMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.sidegesturepad"

    const-string v1, "com.samsung.android.sidegesturepad.settings.SGPSettingsActivity"

    invoke-static {p1, v0, v1, p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SamsungGoodLock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0086

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/OtherMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mContext:Landroid/app/Activity;

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/OtherMenuFragment;->initValues(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/OtherMenuFragment;->initGridView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method
