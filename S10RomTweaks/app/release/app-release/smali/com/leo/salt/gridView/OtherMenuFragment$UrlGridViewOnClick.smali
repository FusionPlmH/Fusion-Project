.class public Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;
.super Ljava/lang/Object;
.source "OtherMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/gridView/OtherMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlGridViewOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/gridView/OtherMenuFragment;


# direct methods
.method public constructor <init>(Lcom/leo/salt/gridView/OtherMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

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

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    const-string p2, "com.android.systemui"

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    const-string p4, "com.android.systemui.egg.MLandActivity"

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-virtual {p1, p2, p4}, Lcom/leo/salt/gridView/OtherMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-virtual {p1, p2, p4}, Lcom/leo/salt/gridView/OtherMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    const-string p3, "com.android.systemui.DessertCase"

    invoke-virtual {p1, p2, p3}, Lcom/leo/salt/gridView/OtherMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    const-string p2, "com.android.settings"

    const-string p3, "com.samsung.android.settings.location.SatelliteView"

    invoke-virtual {p1, p2, p3}, Lcom/leo/salt/gridView/OtherMenuFragment;->componetName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/gridView/OtherMenuFragment$UrlGridViewOnClick;->this$0:Lcom/leo/salt/gridView/OtherMenuFragment;

    invoke-virtual {p1}, Lcom/leo/salt/gridView/OtherMenuFragment;->NetworkMode()V

    :goto_0
    return-void
.end method
