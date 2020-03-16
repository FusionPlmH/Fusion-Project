.class Lcom/leo/salt/preference/CustomBatteryDialog$1;
.super Ljava/lang/Object;
.source "CustomBatteryDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/CustomBatteryDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/CustomBatteryDialog;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/CustomBatteryDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$1;->this$0:Lcom/leo/salt/preference/CustomBatteryDialog;

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

    iget-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$1;->this$0:Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-static {p1}, Lcom/leo/salt/preference/CustomBatteryDialog;->access$000(Lcom/leo/salt/preference/CustomBatteryDialog;)Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/preference/CustomBatteryDialog$1;->this$0:Lcom/leo/salt/preference/CustomBatteryDialog;

    iget-object p2, p2, Lcom/leo/salt/preference/CustomBatteryDialog;->mBatteries:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;

    iget-object p2, p2, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->batterypkg:Ljava/lang/String;

    iget-object p4, p0, Lcom/leo/salt/preference/CustomBatteryDialog$1;->this$0:Lcom/leo/salt/preference/CustomBatteryDialog;

    iget-object p4, p4, Lcom/leo/salt/preference/CustomBatteryDialog;->mBatteries:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;

    iget-object p3, p3, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p2, p3}, Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;->onBatteryPicked(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
