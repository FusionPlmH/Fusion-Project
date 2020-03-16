.class public Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;
.super Ljava/lang/Object;
.source "BatteryPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BatteryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onListItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/view/BatteryPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

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

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    iget-object p2, p1, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteries:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    iget-object p2, p2, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->batterypkg:Ljava/lang/String;

    iget-object p4, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    iget-object p4, p4, Lcom/leo/salt/tweaks/view/BatteryPicker;->mBatteries:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    iget-object p3, p3, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2, p3}, Lcom/leo/salt/tweaks/view/BatteryPicker;->access$1000(Lcom/leo/salt/tweaks/view/BatteryPicker;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$onListItemClick;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/BatteryPicker;->finish()V

    return-void
.end method
