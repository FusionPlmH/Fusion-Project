.class public final Lcom/leo/salt/tools/apps/FragmentApps;
.super Landroid/app/Fragment;
.source "FragmentApps.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/apps/FragmentApps$UpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentApps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentApps.kt\ncom/leo/salt/tools/apps/FragmentApps\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,284:1\n37#2,2:285\n*E\n*S KotlinDebug\n*F\n+ 1 FragmentApps.kt\ncom/leo/salt/tools/apps/FragmentApps\n*L\n158#1,2:285\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u00014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u001d\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010&\u001a\u00020\u0017H\u0016J\u0010\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J\u001a\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020 2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0017J\u0008\u0010-\u001a\u00020\u0017H\u0002J\u0008\u0010.\u001a\u00020\u0017H\u0002J,\u0010/\u001a\u00020\u00172\u001a\u00100\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\u000c2\u0006\u00101\u001a\u000202H\u0002J\u0008\u00103\u001a\u00020\u0017H\u0003R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/leo/salt/tools/apps/FragmentApps;",
        "Landroid/app/Fragment;",
        "()V",
        "MENU_RESET",
        "",
        "getMENU_RESET",
        "()I",
        "appListHelper",
        "Lcom/leo/salt/tools/constants/AppListHelper;",
        "backupedList",
        "Ljava/util/ArrayList;",
        "Lcom/leo/salt/tools/constants/AppInfo;",
        "Lkotlin/collections/ArrayList;",
        "installedList",
        "myHandler",
        "Landroid/os/Handler;",
        "processBarDialog",
        "Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;",
        "systemList",
        "AppsTextView",
        "",
        "STR",
        "getSelectedAppShowOptions",
        "",
        "apptype",
        "Lcom/leo/salt/tools/constants/AppInfo$AppType;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDetach",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onViewCreated",
        "view",
        "searchApp",
        "setList",
        "setListData",
        "dl",
        "lv",
        "Lcom/leo/salt/tweaks/view/widget/OverScrollListView;",
        "showHideAppDialog",
        "UpdateHandler",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final MENU_RESET:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private appListHelper:Lcom/leo/salt/tools/constants/AppListHelper;

.field private backupedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private installedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final myHandler:Landroid/os/Handler;

.field private processBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

.field private systemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/leo/salt/tools/apps/FragmentApps$UpdateHandler;

    new-instance v1, Lcom/leo/salt/tools/apps/FragmentApps$myHandler$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/apps/FragmentApps$myHandler$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/leo/salt/tools/apps/FragmentApps$UpdateHandler;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->myHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->MENU_RESET:I

    return-void
.end method

.method public static final synthetic access$getAppListHelper$p(Lcom/leo/salt/tools/apps/FragmentApps;)Lcom/leo/salt/tools/constants/AppListHelper;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->appListHelper:Lcom/leo/salt/tools/constants/AppListHelper;

    if-nez p0, :cond_0

    const-string v0, "appListHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getBackupedList$p(Lcom/leo/salt/tools/apps/FragmentApps;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->backupedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getInstalledList$p(Lcom/leo/salt/tools/apps/FragmentApps;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->installedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMyHandler$p(Lcom/leo/salt/tools/apps/FragmentApps;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getProcessBarDialog$p(Lcom/leo/salt/tools/apps/FragmentApps;)Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->processBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    if-nez p0, :cond_0

    const-string v0, "processBarDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSelectedAppShowOptions(Lcom/leo/salt/tools/apps/FragmentApps;Lcom/leo/salt/tools/constants/AppInfo$AppType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->getSelectedAppShowOptions(Lcom/leo/salt/tools/constants/AppInfo$AppType;)V

    return-void
.end method

.method public static final synthetic access$getSystemList$p(Lcom/leo/salt/tools/apps/FragmentApps;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->systemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$searchApp(Lcom/leo/salt/tools/apps/FragmentApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->searchApp()V

    return-void
.end method

.method public static final synthetic access$setAppListHelper$p(Lcom/leo/salt/tools/apps/FragmentApps;Lcom/leo/salt/tools/constants/AppListHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->appListHelper:Lcom/leo/salt/tools/constants/AppListHelper;

    return-void
.end method

.method public static final synthetic access$setBackupedList$p(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->backupedList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setInstalledList$p(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->installedList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setList(Lcom/leo/salt/tools/apps/FragmentApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->setList()V

    return-void
.end method

.method public static final synthetic access$setListData(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/tools/apps/FragmentApps;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V

    return-void
.end method

.method public static final synthetic access$setProcessBarDialog$p(Lcom/leo/salt/tools/apps/FragmentApps;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->processBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    return-void
.end method

.method public static final synthetic access$setSystemList$p(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->systemList:Ljava/util/ArrayList;

    return-void
.end method

.method private final getSelectedAppShowOptions(Lcom/leo/salt/tools/constants/AppInfo$AppType;)V
    .locals 5

    const/4 v0, 0x0

    check-cast v0, Landroid/widget/Adapter;

    sget-object v1, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/leo/salt/tweaks/R$id;->apps_backupedlist:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v1, "apps_backupedlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    goto :goto_0

    :cond_1
    sget v0, Lcom/leo/salt/tweaks/R$id;->apps_systemlist:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v1, "apps_systemlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    goto :goto_0

    :cond_2
    sget v0, Lcom/leo/salt/tweaks/R$id;->apps_userlist:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v1, "apps_userlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    if-eqz v0, :cond_c

    check-cast v0, Lcom/leo/salt/tools/apps/AppListAdapter;

    invoke-virtual {v0}, Lcom/leo/salt/tools/apps/AppListAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v0, "app_selected_none"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->AppsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_5
    sget-object v1, Lcom/leo/salt/tools/apps/FragmentApps$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/leo/salt/tools/constants/DialogAppOptions;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v2, p0, Lcom/leo/salt/tools/apps/FragmentApps;->myHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0, v2}, Lcom/leo/salt/tools/constants/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DialogAppOptions;->selectBackupOptions()V

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/leo/salt/tools/constants/DialogAppOptions;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    iget-object v2, p0, Lcom/leo/salt/tools/apps/FragmentApps;->myHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0, v2}, Lcom/leo/salt/tools/constants/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DialogAppOptions;->selectUserAppOptions()V

    goto :goto_1

    :cond_a
    new-instance p1, Lcom/leo/salt/tools/constants/DialogAppOptions;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    iget-object v2, p0, Lcom/leo/salt/tools/apps/FragmentApps;->myHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0, v2}, Lcom/leo/salt/tools/constants/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DialogAppOptions;->selectSystemAppOptions()V

    :goto_1
    return-void

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.leo.salt.tools.apps.AppListAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final searchApp()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->installedList:Ljava/util/ArrayList;

    sget v1, Lcom/leo/salt/tweaks/R$id;->apps_userlist:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v2, "apps_userlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tools/apps/FragmentApps;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->systemList:Ljava/util/ArrayList;

    sget v1, Lcom/leo/salt/tweaks/R$id;->apps_systemlist:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v2, "apps_systemlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tools/apps/FragmentApps;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->backupedList:Ljava/util/ArrayList;

    sget v1, Lcom/leo/salt/tweaks/R$id;->apps_backupedlist:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v2, "apps_backupedlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tools/apps/FragmentApps;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V

    return-void
.end method

.method private final setList()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->processBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    if-nez v0, :cond_0

    const-string v1, "processBarDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->showDialog$default(Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tools/apps/FragmentApps$setList$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/apps/FragmentApps$setList$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private final setListData(Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;",
            "Lcom/leo/salt/tweaks/view/widget/OverScrollListView;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/tools/apps/FragmentApps$setListData$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/ArrayList;Lcom/leo/salt/tweaks/view/widget/OverScrollListView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final showHideAppDialog()V
    .locals 7

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v1, Lcom/leo/salt/utils/PrefUtils;->APP_HIDE_HISTORY_SPF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "spf"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "apps_hide_record"

    invoke-virtual {p0, v6}, Lcom/leo/salt/tools/apps/FragmentApps;->AppsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    check-cast v3, Ljava/util/Collection;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, [Ljava/lang/CharSequence;

    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toBooleanArray(Ljava/util/Collection;)[Z

    move-result-object v3

    new-instance v6, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$1;

    invoke-direct {v6, v4}, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$1;-><init>(Ljava/util/ArrayList;)V

    check-cast v6, Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v5, v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v5, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;

    invoke-direct {v5, p0, v1, v0, v4}, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/Map;Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final AppsTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "STR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Resource.getStringIdentifier(context, STR)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getMENU_RESET()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->MENU_RESET:I

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/leo/salt/tools/apps/FragmentApps;->MENU_RESET:I

    const-string v0, "\u91cd\u7f6e"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080085

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c005c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps;->processBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    if-nez v0, :cond_0

    const-string v1, "processBarDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->hideDialog()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->MENU_RESET:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->showHideAppDialog()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SafetyDonateDialogView(Landroid/app/Activity;)V

    :cond_0
    new-instance p2, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p2, v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leo/salt/tools/apps/FragmentApps;->processBarDialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    const p2, 0x7f090050

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    const-string p2, "tab_1"

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v0, 0x7f090199

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-string v0, "use_apps"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->AppsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string p2, "tab_2"

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v0, 0x7f090198

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-string v0, "system_apps"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->AppsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string p2, "tab_3"

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v0, 0x7f090197

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const-string v0, "backups_apps"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/FragmentApps;->AppsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->setHasOptionsMenu(Z)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->apps_userlist:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0c0033

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->addHeaderView(Landroid/view/View;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->apps_systemlist:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->addHeaderView(Landroid/view/View;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->apps_backupedlist:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->addHeaderView(Landroid/view/View;)V

    new-instance p1, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$onItemLongClick$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$onItemLongClick$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast p1, Landroid/widget/AdapterView$OnItemLongClickListener;

    sget p2, Lcom/leo/salt/tweaks/R$id;->apps_userlist:I

    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v0, "apps_userlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget p2, Lcom/leo/salt/tweaks/R$id;->apps_systemlist:I

    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v0, "apps_systemlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget p2, Lcom/leo/salt/tweaks/R$id;->apps_backupedlist:I

    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;

    const-string v0, "apps_backupedlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/tweaks/view/widget/OverScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->fab_apps_user:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->fab_apps_system:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$2;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->fab_apps_backuped:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$3;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/leo/salt/tools/constants/AppListHelper;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p1, p2}, Lcom/leo/salt/tools/constants/AppListHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps;->appListHelper:Lcom/leo/salt/tools/constants/AppListHelper;

    invoke-direct {p0}, Lcom/leo/salt/tools/apps/FragmentApps;->setList()V

    sget p1, Lcom/leo/salt/tweaks/R$id;->apps_search_box:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$4;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->apps_search_box:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/FragmentApps;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lcom/leo/salt/tools/constants/SearchTextWatcher;

    new-instance v0, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$5;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/apps/FragmentApps$onViewCreated$5;-><init>(Lcom/leo/salt/tools/apps/FragmentApps;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p2, v0}, Lcom/leo/salt/tools/constants/SearchTextWatcher;-><init>(Ljava/lang/Runnable;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TabHost"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
