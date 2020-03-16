.class Lcom/leo/service/plug/tileservice/Leo$1;
.super Ljava/lang/Object;
.source "Leo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/service/plug/tileservice/Leo;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/service/plug/tileservice/Leo;


# direct methods
.method constructor <init>(Lcom/leo/service/plug/tileservice/Leo;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/service/plug/tileservice/Leo$1;->this$0:Lcom/leo/service/plug/tileservice/Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.leo.ROM_CONTROL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/service/plug/tileservice/Leo$1;->this$0:Lcom/leo/service/plug/tileservice/Leo;

    invoke-virtual {v1, v0}, Lcom/leo/service/plug/tileservice/Leo;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
