.class Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;
.super Ljava/lang/Object;
.source "SeekBarPreferenceCham.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-virtual {p1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v2}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$500(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1002fc

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$500(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$500(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v2}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$000(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-static {v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$500(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->access$002(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;I)I

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-virtual {v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateView()V

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-virtual {v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-virtual {p1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1002fb

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;->this$0:Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;

    invoke-virtual {p1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1002fd

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0
.end method
