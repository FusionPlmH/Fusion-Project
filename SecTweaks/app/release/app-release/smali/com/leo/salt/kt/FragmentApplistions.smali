.class public final Lcom/leo/salt/kt/FragmentApplistions;
.super Landroid/app/Fragment;
.source "FragmentApplistions.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/kt/FragmentApplistions$UpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentApplistions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentApplistions.kt\ncom/leo/salt/kt/FragmentApplistions\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,275:1\n37#2,2:276\n*E\n*S KotlinDebug\n*F\n+ 1 FragmentApplistions.kt\ncom/leo/salt/kt/FragmentApplistions\n*L\n152#1,2:276\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001@B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J&\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010)\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u00102\u001a\u00020#H\u0016J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0016J\u001a\u00107\u001a\u00020#2\u0006\u00108\u001a\u00020,2\u0008\u00100\u001a\u0004\u0018\u000101H\u0017J\u0008\u00109\u001a\u00020#H\u0002J\u0008\u0010:\u001a\u00020#H\u0002J,\u0010;\u001a\u00020#2\u001a\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019j\n\u0012\u0004\u0012\u00020\u001a\u0018\u0001`\u001b2\u0006\u0010=\u001a\u00020>H\u0002J\u0008\u0010?\u001a\u00020#H\u0003R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\"\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019j\n\u0012\u0004\u0012\u00020\u001a\u0018\u0001`\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u001c\u001a\u0016\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019j\n\u0012\u0004\u0012\u00020\u001a\u0018\u0001`\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010!\u001a\u0016\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019j\n\u0012\u0004\u0012\u00020\u001a\u0018\u0001`\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/leo/salt/kt/FragmentApplistions;",
        "Landroid/app/Fragment;",
        "()V",
        "MENU_RESET",
        "",
        "getMENU_RESET",
        "()I",
        "appListHelper",
        "Lcom/leo/salt/utils/ktshell/AppListHelper;",
        "appshelp",
        "",
        "getAppshelp",
        "()Ljava/lang/String;",
        "setAppshelp",
        "(Ljava/lang/String;)V",
        "appshelpEN",
        "getAppshelpEN",
        "setAppshelpEN",
        "appsurl",
        "getAppsurl",
        "setAppsurl",
        "appsurlEN",
        "getAppsurlEN",
        "setAppsurlEN",
        "backupedList",
        "Ljava/util/ArrayList;",
        "Lcom/leo/salt/utils/AppInfo;",
        "Lkotlin/collections/ArrayList;",
        "installedList",
        "myHandler",
        "Landroid/os/Handler;",
        "processBarDialog",
        "Lcom/leo/salt/kt/ProgressBarDialog;",
        "systemList",
        "getSelectedAppShowOptions",
        "",
        "apptype",
        "Lcom/leo/salt/utils/AppInfo$AppType;",
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
        "Lcom/leo/salt/kt/OverScrollListView;",
        "showHideAppDialog",
        "UpdateHandler",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final MENU_RESET:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private appListHelper:Lcom/leo/salt/utils/ktshell/AppListHelper;

.field private appshelp:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appshelpEN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appsurl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appsurlEN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private backupedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private installedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final myHandler:Landroid/os/Handler;

.field private processBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

.field private systemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/leo/salt/kt/FragmentApplistions$UpdateHandler;

    new-instance v1, Lcom/leo/salt/kt/FragmentApplistions$myHandler$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/kt/FragmentApplistions$myHandler$1;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/leo/salt/kt/FragmentApplistions$UpdateHandler;-><init>(Ljava/lang/Runnable;)V

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->myHandler:Landroid/os/Handler;

    const-string v0, "\u5e94\u7528\u7a0b\u5e8f\u7ba1\u7406\u5e2e\u52a9"

    iput-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelp:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurl:Ljava/lang/String;

    const-string v0, "Application management help"

    iput-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelpEN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->PPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps_en.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurlEN:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->MENU_RESET:I

    return-void
.end method

.method public static final synthetic access$getAppListHelper$p(Lcom/leo/salt/kt/FragmentApplistions;)Lcom/leo/salt/utils/ktshell/AppListHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appListHelper:Lcom/leo/salt/utils/ktshell/AppListHelper;

    if-nez p0, :cond_0

    const-string v0, "appListHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getBackupedList$p(Lcom/leo/salt/kt/FragmentApplistions;)Ljava/util/ArrayList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/kt/FragmentApplistions;->backupedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getInstalledList$p(Lcom/leo/salt/kt/FragmentApplistions;)Ljava/util/ArrayList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/kt/FragmentApplistions;->installedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMyHandler$p(Lcom/leo/salt/kt/FragmentApplistions;)Landroid/os/Handler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/kt/FragmentApplistions;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getProcessBarDialog$p(Lcom/leo/salt/kt/FragmentApplistions;)Lcom/leo/salt/kt/ProgressBarDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/kt/FragmentApplistions;->processBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    if-nez p0, :cond_0

    const-string v0, "processBarDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSelectedAppShowOptions(Lcom/leo/salt/kt/FragmentApplistions;Lcom/leo/salt/utils/AppInfo$AppType;)V
    .locals 0
    .param p1    # Lcom/leo/salt/utils/AppInfo$AppType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->getSelectedAppShowOptions(Lcom/leo/salt/utils/AppInfo$AppType;)V

    return-void
.end method

.method public static final synthetic access$getSystemList$p(Lcom/leo/salt/kt/FragmentApplistions;)Ljava/util/ArrayList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/kt/FragmentApplistions;->systemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$searchApp(Lcom/leo/salt/kt/FragmentApplistions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/kt/FragmentApplistions;->searchApp()V

    return-void
.end method

.method public static final synthetic access$setAppListHelper$p(Lcom/leo/salt/kt/FragmentApplistions;Lcom/leo/salt/utils/ktshell/AppListHelper;)V
    .locals 0
    .param p1    # Lcom/leo/salt/utils/ktshell/AppListHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appListHelper:Lcom/leo/salt/utils/ktshell/AppListHelper;

    return-void
.end method

.method public static final synthetic access$setBackupedList$p(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->backupedList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setInstalledList$p(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->installedList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setList(Lcom/leo/salt/kt/FragmentApplistions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/kt/FragmentApplistions;->setList()V

    return-void
.end method

.method public static final synthetic access$setListData(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/leo/salt/kt/OverScrollListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/kt/FragmentApplistions;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    return-void
.end method

.method public static final synthetic access$setProcessBarDialog$p(Lcom/leo/salt/kt/FragmentApplistions;Lcom/leo/salt/kt/ProgressBarDialog;)V
    .locals 0
    .param p1    # Lcom/leo/salt/kt/ProgressBarDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->processBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    return-void
.end method

.method public static final synthetic access$setSystemList$p(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->systemList:Ljava/util/ArrayList;

    return-void
.end method

.method private final getSelectedAppShowOptions(Lcom/leo/salt/utils/AppInfo$AppType;)V
    .locals 3

    const/4 v0, 0x0

    check-cast v0, Landroid/widget/Adapter;

    sget-object v1, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/leo/salt/R$id;->apps_backupedlist:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/kt/OverScrollListView;

    const-string v1, "apps_backupedlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/kt/OverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/leo/salt/R$id;->apps_systemlist:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/kt/OverScrollListView;

    const-string v1, "apps_systemlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/kt/OverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/leo/salt/R$id;->apps_userlist:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/kt/OverScrollListView;

    const-string v1, "apps_userlist"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/kt/OverScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/leo/salt/kt/AppListAdapter;

    invoke-virtual {v0}, Lcom/leo/salt/kt/AppListAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const v0, 0x7f100074

    invoke-virtual {p0, v0}, Lcom/leo/salt/kt/FragmentApplistions;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_2
    sget-object v1, Lcom/leo/salt/kt/FragmentApplistions$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    new-instance p1, Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v2, p0, Lcom/leo/salt/kt/FragmentApplistions;->myHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0, v2}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->selectBackupOptions()V

    goto :goto_1

    :pswitch_4
    new-instance p1, Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v2, p0, Lcom/leo/salt/kt/FragmentApplistions;->myHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0, v2}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->selectUserAppOptions()V

    goto :goto_1

    :pswitch_5
    new-instance p1, Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v2, p0, Lcom/leo/salt/kt/FragmentApplistions;->myHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v0, v2}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->selectSystemAppOptions()V

    :goto_1
    return-void

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.leo.salt.kt.AppListAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private final searchApp()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->installedList:Ljava/util/ArrayList;

    sget v1, Lcom/leo/salt/R$id;->apps_userlist:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/kt/OverScrollListView;

    const-string v2, "apps_userlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->systemList:Ljava/util/ArrayList;

    sget v1, Lcom/leo/salt/R$id;->apps_systemlist:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/kt/OverScrollListView;

    const-string v2, "apps_systemlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->backupedList:Ljava/util/ArrayList;

    sget v1, Lcom/leo/salt/R$id;->apps_backupedlist:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/kt/OverScrollListView;

    const-string v2, "apps_backupedlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->setListData(Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    return-void
.end method

.method private final setList()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->processBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    if-nez v0, :cond_0

    const-string v1, "processBarDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/leo/salt/kt/ProgressBarDialog;->showDialog$default(Lcom/leo/salt/kt/ProgressBarDialog;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/kt/FragmentApplistions$setList$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/kt/FragmentApplistions$setList$1;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private final setListData(Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;",
            "Lcom/leo/salt/kt/OverScrollListView;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/kt/FragmentApplistions$setListData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/kt/FragmentApplistions$setListData$1;-><init>(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/ArrayList;Lcom/leo/salt/kt/OverScrollListView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final showHideAppDialog()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v1, Lcom/leo/salt/utils/Constants;->APP_HIDE_HISTORY_SPF:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f100079

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    new-instance v6, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$1;

    invoke-direct {v6, v4}, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$1;-><init>(Ljava/util/ArrayList;)V

    check-cast v6, Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v5, v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v5, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;

    invoke-direct {v5, p0, v1, v0, v4}, Lcom/leo/salt/kt/FragmentApplistions$showHideAppDialog$2;-><init>(Lcom/leo/salt/kt/FragmentApplistions;Ljava/util/Map;Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

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
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/leo/salt/kt/FragmentApplistions;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAppshelp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelp:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppshelpEN()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelpEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppsurl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppsurlEN()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurlEN:Ljava/lang/String;

    return-object v0
.end method

.method public final getMENU_RESET()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->MENU_RESET:I

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/leo/salt/kt/FragmentApplistions;->MENU_RESET:I

    const/4 v0, 0x0

    const v1, 0x7f100358

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0800b2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0051

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentApplistions;->processBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    if-nez v0, :cond_0

    const-string v1, "processBarDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/leo/salt/kt/ProgressBarDialog;->hideDialog()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/leo/salt/kt/FragmentApplistions;->MENU_RESET:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/kt/FragmentApplistions;->showHideAppDialog()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "NewApi"
        }
    .end annotation

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/leo/salt/kt/ProgressBarDialog;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p2, v0}, Lcom/leo/salt/kt/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leo/salt/kt/FragmentApplistions;->processBarDialog:Lcom/leo/salt/kt/ProgressBarDialog;

    invoke-static {}, Lcom/leo/salt/utils/Utils;->isLunarSetting()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelp:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurl:Ljava/lang/String;

    move-object v4, p2

    move-object v5, v1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelpEN:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurlEN:Ljava/lang/String;

    move-object v4, p2

    move-object v5, v1

    :goto_0
    new-instance v2, Lcom/leo/salt/widget/WebDialog;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getActivity()Landroid/app/Activity;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/Context;

    sget-object v6, Lcom/leo/salt/utils/Constants;->APP_APPS:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/leo/salt/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const p2, 0x7f090045

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    const-string p2, "tab_1"

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v1, 0x7f09018d

    invoke-virtual {p2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v1, 0x7f100422

    invoke-virtual {p0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string p2, "tab_2"

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v1, 0x7f09018c

    invoke-virtual {p2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v1, 0x7f1003f7

    invoke-virtual {p0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string p2, "tab_3"

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v1, 0x7f09018b

    invoke-virtual {p2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    const v1, 0x7f1000ab

    invoke-virtual {p0, v1}, Lcom/leo/salt/kt/FragmentApplistions;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/kt/FragmentApplistions;->setHasOptionsMenu(Z)V

    sget p1, Lcom/leo/salt/R$id;->apps_userlist:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/kt/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0c002b

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/kt/OverScrollListView;->addHeaderView(Landroid/view/View;)V

    sget p1, Lcom/leo/salt/R$id;->apps_systemlist:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/kt/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/kt/OverScrollListView;->addHeaderView(Landroid/view/View;)V

    sget p1, Lcom/leo/salt/R$id;->apps_backupedlist:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/kt/OverScrollListView;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/kt/OverScrollListView;->addHeaderView(Landroid/view/View;)V

    new-instance p1, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$onItemLongClick$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$onItemLongClick$1;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast p1, Landroid/widget/AdapterView$OnItemLongClickListener;

    sget p2, Lcom/leo/salt/R$id;->apps_userlist:I

    invoke-virtual {p0, p2}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/kt/OverScrollListView;

    const-string v0, "apps_userlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/kt/OverScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget p2, Lcom/leo/salt/R$id;->apps_systemlist:I

    invoke-virtual {p0, p2}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/kt/OverScrollListView;

    const-string v0, "apps_systemlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/kt/OverScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget p2, Lcom/leo/salt/R$id;->apps_backupedlist:I

    invoke-virtual {p0, p2}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/kt/OverScrollListView;

    const-string v0, "apps_backupedlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/kt/OverScrollListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget p1, Lcom/leo/salt/R$id;->fab_apps_user:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$1;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/leo/salt/R$id;->fab_apps_system:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$2;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/leo/salt/R$id;->fab_apps_backuped:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$3;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/leo/salt/utils/ktshell/AppListHelper;

    invoke-virtual {p0}, Lcom/leo/salt/kt/FragmentApplistions;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p1, p2}, Lcom/leo/salt/utils/ktshell/AppListHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appListHelper:Lcom/leo/salt/utils/ktshell/AppListHelper;

    invoke-direct {p0}, Lcom/leo/salt/kt/FragmentApplistions;->setList()V

    sget p1, Lcom/leo/salt/R$id;->apps_search_box:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$4;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget p1, Lcom/leo/salt/R$id;->apps_search_box:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/FragmentApplistions;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lcom/leo/salt/kt/SearchTextWatcher;

    new-instance v0, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$5;

    invoke-direct {v0, p0}, Lcom/leo/salt/kt/FragmentApplistions$onViewCreated$5;-><init>(Lcom/leo/salt/kt/FragmentApplistions;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p2, v0}, Lcom/leo/salt/kt/SearchTextWatcher;-><init>(Ljava/lang/Runnable;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TabHost"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAppshelp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelp:Ljava/lang/String;

    return-void
.end method

.method public final setAppshelpEN(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appshelpEN:Ljava/lang/String;

    return-void
.end method

.method public final setAppsurl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurl:Ljava/lang/String;

    return-void
.end method

.method public final setAppsurlEN(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentApplistions;->appsurlEN:Ljava/lang/String;

    return-void
.end method
