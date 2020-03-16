.class Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;
.super Ljava/lang/Thread;
.source "ManageAutoStarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->closeAutoStartApp(Lcom/leo/salt/tools/autostarts/AppItem;)V
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

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    iput-object p2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;

    iget-object v2, v2, Lcom/leo/salt/tools/autostarts/AppItem;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->val$appItem:Lcom/leo/salt/tools/autostarts/AppItem;

    iget-object v4, v4, Lcom/leo/salt/tools/autostarts/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {v4}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$400(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {v3}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$400(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "%s/%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$2;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-virtual {v0}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->flush()V

    return-void
.end method
