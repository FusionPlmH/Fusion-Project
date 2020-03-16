.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;
.super Ljava/lang/Object;
.source "MQPhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicViewHolder"
.end annotation


# instance fields
.field public flagIv:Landroid/widget/ImageView;

.field public photoIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

.field public tipTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity$PicViewHolder;-><init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerActivity;)V

    return-void
.end method
