.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;
.super Lcom/meiqia/meiqiasdk/util/MQSimpleTextWatcher;
.source "MQConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/util/MQSimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 p3, 0x15

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p2, p3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setElevation(F)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_send_icon_white:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_send_back_pressed:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setElevation(F)V

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_send_icon_grey:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$17;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_send_back_normal:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
