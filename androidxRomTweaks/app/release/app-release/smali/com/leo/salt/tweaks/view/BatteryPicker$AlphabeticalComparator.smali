.class public Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;
.super Ljava/lang/Object;
.source "BatteryPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BatteryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlphabeticalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/text/Collator;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/view/BatteryPicker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;->instance:Ljava/text/Collator;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public compare(Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;)I
    .locals 1

    iget-object v0, p1, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;->instance:Ljava/text/Collator;

    iget-object v0, p1, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    check-cast p2, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tweaks/view/BatteryPicker$AlphabeticalComparator;->compare(Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;)I

    move-result p1

    return p1
.end method
