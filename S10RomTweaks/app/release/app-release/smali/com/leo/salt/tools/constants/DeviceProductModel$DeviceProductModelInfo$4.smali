.class final Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$4;
.super Ljava/lang/Object;
.source "DeviceProductModel.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/DeviceProductModel;->DeviceProductModelInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$4;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$4;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080082

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$4;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const p1, 0x7f10003a

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f1000df

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/widget/DialogView;->GlobaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLandroid/graphics/drawable/Drawable;)V

    return-void
.end method
