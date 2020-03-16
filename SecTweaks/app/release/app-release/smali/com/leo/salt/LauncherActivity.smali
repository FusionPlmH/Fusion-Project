.class public final Lcom/leo/salt/LauncherActivity;
.super Lcom/leo/salt/base/BaseActivity;
.source "LauncherActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0003J\u0008\u0010\u000c\u001a\u00020\u0008H\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u0006H\u0014J\u0014\u0010\u0010\u001a\u00020\u00082\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/leo/salt/LauncherActivity;",
        "Lcom/leo/salt/base/BaseActivity;",
        "()V",
        "Background",
        "Landroid/widget/LinearLayout;",
        "hasRoot",
        "",
        "checkRoot",
        "",
        "next",
        "Ljava/lang/Runnable;",
        "skip",
        "hideBottomUIMenu",
        "initLayout",
        "",
        "initStatusBarColor",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private Background:Landroid/widget/LinearLayout;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private hasRoot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHasRoot$p(Lcom/leo/salt/LauncherActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/LauncherActivity;->hasRoot:Z

    return p0
.end method

.method public static final synthetic access$setHasRoot$p(Lcom/leo/salt/LauncherActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/LauncherActivity;->hasRoot:Z

    return-void
.end method

.method private final checkRoot(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref",
            "CommitPrefEdits"
        }
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/Constants;->GLOBAL_SPF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->GLOBAL_SPF_DISABLE_ENFORCE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->forceGetRoot()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/LauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/LauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/LauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/LauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/LauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final hideBottomUIMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0025

    return v0
.end method

.method protected initStatusBarColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/LauncherActivity;->hideBottomUIMenu()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    const-string v1, "decorView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/leo/salt/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/leo/salt/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const p1, 0x7f090175

    invoke-virtual {p0, p1}, Lcom/leo/salt/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leo/salt/LauncherActivity;->Background:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/leo/salt/LauncherActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/LauncherActivity$onCreate$1;-><init>(Lcom/leo/salt/LauncherActivity;)V

    check-cast p1, Ljava/lang/Runnable;

    new-instance v0, Lcom/leo/salt/LauncherActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/LauncherActivity$onCreate$2;-><init>(Lcom/leo/salt/LauncherActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/LauncherActivity;->checkRoot(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    sget p1, Lcom/leo/salt/R$id;->root_access_text:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/LauncherActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728 \u68c0\u67e5ROOT\u6743\u9650"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/leo/salt/R$id;->app_versions:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/LauncherActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/salt/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/leo/salt/utils/AndroidUtils;->customization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
