.class Lcom/leo/salt/utils/AppListTask$1;
.super Ljava/lang/Object;
.source "AppListTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/AppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/leo/salt/utils/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/AppListTask;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/AppListTask;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/AppListTask$1;->this$0:Lcom/leo/salt/utils/AppListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/leo/salt/utils/AppInfo;Lcom/leo/salt/utils/AppInfo;)I
    .locals 1

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object p1, p1, Lcom/leo/salt/utils/AppInfo;->mAppName:Ljava/lang/String;

    iget-object p2, p2, Lcom/leo/salt/utils/AppInfo;->mAppName:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/leo/salt/utils/AppInfo;

    check-cast p2, Lcom/leo/salt/utils/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/utils/AppListTask$1;->compare(Lcom/leo/salt/utils/AppInfo;Lcom/leo/salt/utils/AppInfo;)I

    move-result p1

    return p1
.end method
