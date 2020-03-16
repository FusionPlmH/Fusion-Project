.class final Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;
.super Ljava/lang/Object;
.source "DeviceProductModel.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/DeviceProductModel;->templateChooser()V
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
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "which",
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
.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/DeviceProductModel;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030028

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    const-string v0, "codeStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$splitCodeStr(Lcom/leo/salt/tools/constants/DeviceProductModel;Ljava/lang/String;)V

    return-void
.end method
