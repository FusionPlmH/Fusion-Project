.class Lcom/leo/salt/preference/SeekBarPreferenceCham$3;
.super Ljava/lang/Object;
.source "SeekBarPreferenceCham.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/SeekBarPreferenceCham;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/SeekBarPreferenceCham;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SeekBarPreferenceCham;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SeekBarPreferenceCham$3;->this$0:Lcom/leo/salt/preference/SeekBarPreferenceCham;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/preference/SeekBarPreferenceCham$3;->this$0:Lcom/leo/salt/preference/SeekBarPreferenceCham;

    invoke-static {p1}, Lcom/leo/salt/preference/SeekBarPreferenceCham;->access$300(Lcom/leo/salt/preference/SeekBarPreferenceCham;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SeekBarPreferenceCham$3;->this$0:Lcom/leo/salt/preference/SeekBarPreferenceCham;

    invoke-static {v0}, Lcom/leo/salt/preference/SeekBarPreferenceCham;->access$000(Lcom/leo/salt/preference/SeekBarPreferenceCham;)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/preference/SeekBarPreferenceCham$3;->this$0:Lcom/leo/salt/preference/SeekBarPreferenceCham;

    invoke-static {v1}, Lcom/leo/salt/preference/SeekBarPreferenceCham;->access$100(Lcom/leo/salt/preference/SeekBarPreferenceCham;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/leo/salt/preference/SeekBarPreferenceCham$3;->this$0:Lcom/leo/salt/preference/SeekBarPreferenceCham;

    invoke-static {v1}, Lcom/leo/salt/preference/SeekBarPreferenceCham;->access$200(Lcom/leo/salt/preference/SeekBarPreferenceCham;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
