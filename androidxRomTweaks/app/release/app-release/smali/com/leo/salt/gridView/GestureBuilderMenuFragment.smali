.class public Lcom/leo/salt/gridView/GestureBuilderMenuFragment;
.super Landroid/app/Fragment;
.source "GestureBuilderMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$G21estureBuilderGridViewOnClick;,
        Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mKyesGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initGridView(Landroid/view/View;)V
    .locals 14

    const/16 v0, 0xb

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    const-string v1, "com.samsung.android.bixby.service"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const-string v1, "android"

    const-string v3, "tw_ic_do_poweroff"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const-string v3, "menu_ic_assistant_menu"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "sem_resolver_deviceshare_sc_ic"

    invoke-static {v1, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v6, v3

    const-string v1, "com.sec.android.app.launcher"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v7, 0x4

    aput-object v1, v6, v7

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v8, 0x5

    aput-object v1, v6, v8

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v9, 0x6

    aput-object v1, v6, v9

    iget-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    const-string v10, "ball_2"

    invoke-static {v1, v10}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v10, 0x7

    aput-object v1, v6, v10

    iget-object v1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    const-string v11, "ic_pop_path"

    invoke-static {v1, v11}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v11, 0x8

    aput-object v1, v6, v11

    const-string v1, "com.sec.android.app.soundalive"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->appICON(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v12, 0x9

    aput-object v1, v6, v12

    const-string v1, "com.android.settings"

    const-string v13, "se10_wipe_fingerprint"

    invoke-static {v1, v13}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArrayDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v13, 0xa

    aput-object v1, v6, v13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keypress_bixby_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "keypress_power_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "keypress_navigation_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "grid_screen_three_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "grid_screen_home_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "grid_other_statusbar_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "grid_keyguard_gesture"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "grid_floatball"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "grid_minipop"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f10030a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "keypress_fingerprint_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->GridTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const v1, 0x7f09013f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    invoke-static {v3}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "G97"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "gesture_summary"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v7, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v7}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$G21estureBuilderGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$G21estureBuilderGridViewOnClick;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v7, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/leo/salt/tweaks/view/widget/ListViewAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v7}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mKyesGridView:Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    new-instance v0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;

    invoke-direct {v0, p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment$GestureBuilderGridViewOnClick;-><init>(Lcom/leo/salt/gridView/GestureBuilderMenuFragment;)V

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public GridTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->initGridView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/leo/salt/gridView/GestureBuilderMenuFragment;->mView:Landroid/view/View;

    return-object p1
.end method
