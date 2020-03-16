.class final Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;
.super Ljava/lang/Object;
.source "ThermalAddin.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/ThermalAddin;->showOption()V
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
        0xd
    }
.end annotation


# instance fields
.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/ThermalAddin;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/ThermalAddin;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;->this$0:Lcom/leo/salt/utils/ktshell/ThermalAddin;

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;->this$0:Lcom/leo/salt/utils/ktshell/ThermalAddin;

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->access$closeThermal(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;->this$0:Lcom/leo/salt/utils/ktshell/ThermalAddin;

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->access$resumeThermal(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;->this$0:Lcom/leo/salt/utils/ktshell/ThermalAddin;

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->access$removeThermal(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
