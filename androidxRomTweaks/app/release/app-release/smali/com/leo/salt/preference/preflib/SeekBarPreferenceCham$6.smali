.class Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;
.super Ljava/lang/Object;
.source "SeekBarPreferenceCham.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$600(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$700(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$600(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$702(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;I)I

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$800(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    :cond_0
    return-void
.end method
