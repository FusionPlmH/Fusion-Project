.class final Lcom/leo/salt/tweaks/view/widget/DialogView$1;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogView;->Shortcut(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/tweaks/amber/AppsActivity;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "ic_app_manage"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "grid_apps"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.leo.ACTION_APPS"

    const-string v6, "ids_apps"

    invoke-static/range {v1 .. v6}, Lcom/leo/salt/tweaks/resource/Resource;->addShortCut(Landroid/content/Context;Ljava/lang/Class;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$1;->val$context:Landroid/content/Context;

    const-class v8, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "ic_ota"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "leo_slide_meun_update"

    invoke-static {p2, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.leo.ACTION_UPDATR"

    const-string v12, "ids_update"

    invoke-static/range {v7 .. v12}, Lcom/leo/salt/tweaks/resource/Resource;->addShortCut(Landroid/content/Context;Ljava/lang/Class;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
