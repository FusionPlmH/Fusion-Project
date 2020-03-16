.class Lcom/leo/salt/tools/wifi/WiFiAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WiFiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/wifi/WiFiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public password:Landroid/widget/TextView;

.field public ssid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/leo/salt/tools/wifi/WiFiAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/wifi/WiFiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/WiFiAdapter$ViewHolder;->this$0:Lcom/leo/salt/tools/wifi/WiFiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
