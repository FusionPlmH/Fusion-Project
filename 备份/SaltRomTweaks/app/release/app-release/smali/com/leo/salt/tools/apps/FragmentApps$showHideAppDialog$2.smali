.class final Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;
.super Ljava/lang/Object;
.source "FragmentApps.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/apps/FragmentApps;->showHideAppDialog()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "which",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $all:Ljava/util/Map;

.field final synthetic $selected:Ljava/util/ArrayList;

.field final synthetic $spf:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/leo/salt/tools/apps/FragmentApps;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/apps/FragmentApps;Ljava/util/Map;Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    iput-object p2, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$all:Ljava/util/Map;

    iput-object p3, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$spf:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$selected:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$all:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$spf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$selected:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->$selected:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "selected[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "pm unhide "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "pm enable "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    invoke-static {p1}, Lcom/leo/salt/tools/apps/FragmentApps;->access$getProcessBarDialog$p(Lcom/leo/salt/tools/apps/FragmentApps;)Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object p1

    iget-object v1, p0, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;->this$0:Lcom/leo/salt/tools/apps/FragmentApps;

    const-string v2, "apps_recover"

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/apps/FragmentApps;->AppsTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2$1;-><init>(Lcom/leo/salt/tools/apps/FragmentApps$showHideAppDialog$2;Ljava/lang/StringBuffer;Landroid/content/SharedPreferences$Editor;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method
