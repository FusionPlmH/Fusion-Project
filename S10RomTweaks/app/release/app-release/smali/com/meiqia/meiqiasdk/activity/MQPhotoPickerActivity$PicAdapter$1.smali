.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;
.super Ljava/lang/Object;
.source "MQPhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->setFlagClickListener(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iput p2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object p1

    iget v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$600(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedCount()I

    move-result v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v1, v1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$700(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicAdapter;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;->access$600(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V

    :goto_2
    return-void
.end method
