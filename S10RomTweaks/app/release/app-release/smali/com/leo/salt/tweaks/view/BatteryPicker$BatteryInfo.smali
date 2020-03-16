.class Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BatteryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryInfo"
.end annotation


# instance fields
.field batterypkg:Ljava/lang/String;

.field compilername:Ljava/lang/String;

.field fullicon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field originalauthor:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/BatteryPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->batterypkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->compilername:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->originalauthor:Ljava/lang/String;

    return-void
.end method
