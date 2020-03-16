.class Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;
.super Ljava/lang/Object;
.source "CustomBatteryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/CustomBatteryDialog;
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

.field final synthetic this$0:Lcom/leo/salt/preference/CustomBatteryDialog;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/CustomBatteryDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->this$0:Lcom/leo/salt/preference/CustomBatteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->batterypkg:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->compilername:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->name:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->originalauthor:Ljava/lang/String;

    return-void
.end method
