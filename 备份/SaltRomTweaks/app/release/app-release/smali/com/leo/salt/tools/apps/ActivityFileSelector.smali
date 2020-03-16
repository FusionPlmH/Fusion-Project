.class public final Lcom/leo/salt/tools/apps/ActivityFileSelector;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.source "ActivityFileSelector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u0006H\u0014J\u0008\u0010\u0012\u001a\u00020\u0010H\u0014J\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00102\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0014H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/leo/salt/tools/apps/ActivityFileSelector;",
        "Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;",
        "()V",
        "adapterFileSelector",
        "Lcom/leo/salt/tweaks/view/AdapterFileSelector;",
        "extension",
        "",
        "getExtension",
        "()Ljava/lang/String;",
        "setExtension",
        "(Ljava/lang/String;)V",
        "mSubtitle",
        "Landroid/widget/TextView;",
        "mSubtitleLayout",
        "Landroid/widget/LinearLayout;",
        "initAppBarLayout",
        "",
        "initCollapsingTextText",
        "initLayout",
        "intSettings",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onResume",
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

.field private adapterFileSelector:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

.field private extension:Ljava/lang/String;

.field private mSubtitle:Landroid/widget/TextView;

.field private mSubtitleLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAdapterFileSelector$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;)Lcom/leo/salt/tweaks/view/AdapterFileSelector;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->adapterFileSelector:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    return-object p0
.end method

.method public static final synthetic access$getMSubtitleLayout$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->mSubtitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$setAdapterFileSelector$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;Lcom/leo/salt/tweaks/view/AdapterFileSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->adapterFileSelector:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    return-void
.end method

.method public static final synthetic access$setMSubtitleLayout$p(Lcom/leo/salt/tools/apps/ActivityFileSelector;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->mSubtitleLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    return-object v0
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initCollapsingTextText()Ljava/lang/String;
    .locals 1

    const-string v0, "file_selector_name"

    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0023

    return v0
.end method

.method public final intSettings()V
    .locals 2

    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->mSubtitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v1, Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/apps/ActivityFileSelector$intSettings$1;-><init>(Lcom/leo/salt/tools/apps/ActivityFileSelector;)V

    check-cast v1, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0901b0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p1, 0x7f090003

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->intSettings()V

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "extension"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent.extras.getString(\"extension\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "."

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->mSubtitle:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file_selector"

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->FileView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xff3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xff3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->adapterFileSelector:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;->goParent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onResume()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u8bfb\u53d6\u6587\u4ef6\u7684\u6743\u9650\uff01"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    new-instance v2, Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tools/apps/ActivityFileSelector$onResume$1;-><init>(Lcom/leo/salt/tools/apps/ActivityFileSelector;)V

    check-cast v2, Ljava/lang/Runnable;

    new-instance v3, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/leo/salt/tweaks/view/AdapterFileSelector;-><init>(Ljava/io/File;Ljava/lang/Runnable;Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->adapterFileSelector:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    sget v0, Lcom/leo/salt/tweaks/R$id;->file_selector_list:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ActivityFileSelector;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const-string v1, "file_selector_list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->adapterFileSelector:Lcom/leo/salt/tweaks/view/AdapterFileSelector;

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/apps/ActivityFileSelector;->extension:Ljava/lang/String;

    return-void
.end method
