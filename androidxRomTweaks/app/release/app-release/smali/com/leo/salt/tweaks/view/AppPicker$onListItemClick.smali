.class public Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onListItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/AppPicker;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/view/AppPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$000(Lcom/leo/salt/tweaks/view/AppPicker;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$100(Lcom/leo/salt/tweaks/view/AppPicker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p2}, Lcom/leo/salt/tweaks/view/AppPicker;->access$100(Lcom/leo/salt/tweaks/view/AppPicker;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ApplicationInfo;

    iget-object p4, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p4}, Lcom/leo/salt/tweaks/view/AppPicker;->access$200(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p2, Lcom/leo/salt/tweaks/view/AppPicker;->friendlyAppString:Ljava/lang/String;

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-virtual {p2, p1}, Lcom/leo/salt/tweaks/view/AppPicker;->setPackage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/AppPicker;->setPackageActivity(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$000(Lcom/leo/salt/tweaks/view/AppPicker;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->access$300(Lcom/leo/salt/tweaks/view/AppPicker;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/AppPicker;->setPackageActivity(Landroid/content/pm/ActivityInfo;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/AppPicker;->finish()V

    return-void
.end method
