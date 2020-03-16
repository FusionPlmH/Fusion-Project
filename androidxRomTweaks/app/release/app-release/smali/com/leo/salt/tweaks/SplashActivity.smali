.class public final Lcom/leo/salt/tweaks/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/SplashActivity$CheckFileWirte;,
        Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;,
        Lcom/leo/salt/tweaks/SplashActivity$CheckRootSuccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0003\u0018\u0019\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0003J\u0008\u0010\u0014\u001a\u00020\u000cH\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002J\u0012\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/leo/salt/tweaks/SplashActivity;",
        "Landroid/app/Activity;",
        "()V",
        "hasRoot",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "getWebView",
        "()Landroid/webkit/WebView;",
        "setWebView",
        "(Landroid/webkit/WebView;)V",
        "ROMinfo",
        "",
        "show",
        "checkFileWrite",
        "checkPermissions",
        "checkRoot",
        "next",
        "Ljava/lang/Runnable;",
        "skip",
        "enterHomeActivity",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "CheckFileWirte",
        "CheckRootFail",
        "CheckRootSuccess",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private hasRoot:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkFileWrite(Lcom/leo/salt/tweaks/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/SplashActivity;->checkFileWrite()V

    return-void
.end method

.method public static final synthetic access$checkPermissions(Lcom/leo/salt/tweaks/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/SplashActivity;->checkPermissions()V

    return-void
.end method

.method public static final synthetic access$enterHomeActivity(Lcom/leo/salt/tweaks/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/SplashActivity;->enterHomeActivity()V

    return-void
.end method

.method public static final synthetic access$getHasRoot$p(Lcom/leo/salt/tweaks/SplashActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/tweaks/SplashActivity;->hasRoot:Z

    return p0
.end method

.method public static final synthetic access$next(Lcom/leo/salt/tweaks/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/SplashActivity;->next()V

    return-void
.end method

.method public static final synthetic access$setHasRoot$p(Lcom/leo/salt/tweaks/SplashActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/tweaks/SplashActivity;->hasRoot:Z

    return-void
.end method

.method private final checkFileWrite()V
    .locals 4

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm grant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private final checkPermissions()V
    .locals 2

    sget v0, Lcom/leo/salt/tweaks/R$id;->start_contract:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "start_contract"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/leo/salt/tweaks/SplashActivity$CheckFileWirte;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/SplashActivity$CheckFileWirte;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tweaks/SplashActivity;->checkRoot(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final checkRoot(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    sget-object p2, Lcom/leo/salt/utils/PrefUtils;->GLOBAL_SPF:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/leo/salt/tweaks/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sget-object v1, Lcom/leo/salt/utils/PrefUtils;->GLOBAL_SPF_DISABLE_ENFORCE:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance p2, Lcom/leo/salt/tools/constants/CheckRootStatus;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/leo/salt/tools/constants/CheckRootStatus;-><init>(Landroid/content/Context;Ljava/lang/Runnable;ZLjava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/leo/salt/tools/constants/CheckRootStatus;->forceGetRoot()V

    return-void
.end method

.method private final enterHomeActivity()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->NetworkCheckDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/leo/salt/tweaks/SplashActivity$CheckRootSuccess;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/SplashActivity$CheckRootSuccess;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tweaks/SplashActivity;->checkRoot(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->hasNetWork(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->NetworkCheck(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/leo/salt/tweaks/SplashActivity$CheckRootSuccess;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/SplashActivity$CheckRootSuccess;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/SplashActivity$CheckRootFail;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tweaks/SplashActivity;->checkRoot(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private final next()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/SplashActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final ROMinfo(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const/16 p1, 0x320

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {p1, v4, v3, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    check-cast p1, Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    check-cast p1, Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f0901af

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Lcom/leo/salt/tweaks/SplashActivity$ROMinfo$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/SplashActivity$ROMinfo$1;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast p1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->rom_logo:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "leologo"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->rom_versions:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/SplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->setContentView(I)V

    sget-object p1, Lcom/leo/salt/utils/PrefUtils;->CHARGE_SPF:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tweaks/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "first_open"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "rom_splash"

    const/16 v3, 0x8

    const-string v4, "start_contract"

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    sget v1, Lcom/leo/salt/tweaks/R$id;->start_contract:I

    invoke-virtual {p0, v1}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Lcom/leo/salt/tweaks/R$id;->rom_splash:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/leo/salt/tweaks/SplashActivity;->ROMinfo(Z)V

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/leo/salt/tweaks/SplashActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/SplashActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->LicenseInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget v0, Lcom/leo/salt/tweaks/R$id;->contract_confirm:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/tweaks/SplashActivity$onCreate$1;-><init>(Lcom/leo/salt/tweaks/SplashActivity;Landroid/content/SharedPreferences;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->contract_exit:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/leo/salt/tweaks/SplashActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/SplashActivity$onCreate$2;-><init>(Lcom/leo/salt/tweaks/SplashActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.webkit.WebView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget p1, Lcom/leo/salt/tweaks/R$id;->start_contract:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->rom_splash:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/SplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/leo/salt/tweaks/SplashActivity;->ROMinfo(Z)V

    :goto_0
    return-void
.end method

.method public final setWebView(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/SplashActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method
