.class Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;
.super Ljava/lang/Thread;
.source "ManageAutoStarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->startAutoStartApp(Lcom/leo/salt/tools/autostarts/AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

.field final synthetic val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;Lcom/leo/salt/tools/autostarts/AppItem;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    iput-object p2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;

    iget-object v1, v1, Lcom/leo/salt/tools/autostarts/AppItem;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;

    iget-object v2, v2, Lcom/leo/salt/tools/autostarts/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {v2}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$400(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {v2}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$400(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "%s/%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$3;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-virtual {v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->flush()V

    return-void
.end method
