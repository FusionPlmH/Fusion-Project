.class Lcom/leo/salt/fragment/HwKyesFragment$1;
.super Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;
.source "HwKyesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/HwKyesFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/HwKyesFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/HwKyesFragment;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/HwKyesFragment$1;->this$0:Lcom/leo/salt/fragment/HwKyesFragment;

    invoke-direct {p0, p2}, Lcom/leo/salt/tweaks/view/widget/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onListViewItemClickActivity(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object p3, p0, Lcom/leo/salt/fragment/HwKyesFragment$1;->this$0:Lcom/leo/salt/fragment/HwKyesFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/fragment/HwKyesFragment$1;->this$0:Lcom/leo/salt/fragment/HwKyesFragment;

    invoke-virtual {v1}, Lcom/leo/salt/fragment/HwKyesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "shortcut_select"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff3b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff3d"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/leo/salt/fragment/HwKyesFragment;->showSnack(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/fragment/HwKyesFragment$1;->this$0:Lcom/leo/salt/fragment/HwKyesFragment;

    invoke-static {p2}, Lcom/leo/salt/fragment/HwKyesFragment;->access$000(Lcom/leo/salt/fragment/HwKyesFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/leo/salt/fragment/HwKyesFragment$1;->this$0:Lcom/leo/salt/fragment/HwKyesFragment;

    invoke-static {p3}, Lcom/leo/salt/fragment/HwKyesFragment;->access$100(Lcom/leo/salt/fragment/HwKyesFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method