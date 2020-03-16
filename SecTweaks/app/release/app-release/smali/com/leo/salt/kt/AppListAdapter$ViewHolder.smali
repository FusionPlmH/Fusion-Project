.class public final Lcom/leo/salt/kt/AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/kt/AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008\u00a8\u0006!"
    }
    d2 = {
        "Lcom/leo/salt/kt/AppListAdapter$ViewHolder;",
        "",
        "(Lcom/leo/salt/kt/AppListAdapter;)V",
        "enabledStateText",
        "Landroid/widget/TextView;",
        "getEnabledStateText$app_release",
        "()Landroid/widget/TextView;",
        "setEnabledStateText$app_release",
        "(Landroid/widget/TextView;)V",
        "imgView",
        "Landroid/widget/ImageView;",
        "getImgView$app_release",
        "()Landroid/widget/ImageView;",
        "setImgView$app_release",
        "(Landroid/widget/ImageView;)V",
        "itemChecke",
        "Landroid/widget/CheckBox;",
        "getItemChecke$app_release",
        "()Landroid/widget/CheckBox;",
        "setItemChecke$app_release",
        "(Landroid/widget/CheckBox;)V",
        "itemPath",
        "getItemPath$app_release",
        "setItemPath$app_release",
        "itemText",
        "getItemText$app_release",
        "setItemText$app_release",
        "itemTitle",
        "getItemTitle$app_release",
        "setItemTitle$app_release",
        "wranStateText",
        "getWranStateText$app_release",
        "setWranStateText$app_release",
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
.field private enabledStateText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imgView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private itemChecke:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private itemPath:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private itemText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private itemTitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/leo/salt/kt/AppListAdapter;

.field private wranStateText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/leo/salt/kt/AppListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->this$0:Lcom/leo/salt/kt/AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnabledStateText$app_release()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->enabledStateText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getImgView$app_release()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->imgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getItemChecke$app_release()Landroid/widget/CheckBox;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemChecke:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final getItemPath$app_release()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemPath:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getItemText$app_release()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getItemTitle$app_release()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getWranStateText$app_release()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->wranStateText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setEnabledStateText$app_release(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->enabledStateText:Landroid/widget/TextView;

    return-void
.end method

.method public final setImgView$app_release(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->imgView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setItemChecke$app_release(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1    # Landroid/widget/CheckBox;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemChecke:Landroid/widget/CheckBox;

    return-void
.end method

.method public final setItemPath$app_release(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemPath:Landroid/widget/TextView;

    return-void
.end method

.method public final setItemText$app_release(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    return-void
.end method

.method public final setItemTitle$app_release(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->itemTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setWranStateText$app_release(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/kt/AppListAdapter$ViewHolder;->wranStateText:Landroid/widget/TextView;

    return-void
.end method
