.class public Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BatteryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BatteryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBatteries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/view/BatteryPicker;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->this$0:Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->mBatteries:Ljava/util/List;

    iput-object p4, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->mBatteries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0036

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090060

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f09005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09005c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09005e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->mBatteries:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    iget-object v3, v3, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->mBatteries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->mBatteries:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    iget-object p3, p3, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->compilername:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryAdapter;->mBatteries:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;

    iget-object p1, p1, Lcom/leo/salt/tweaks/view/BatteryPicker$BatteryInfo;->originalauthor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
