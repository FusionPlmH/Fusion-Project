.class public final synthetic Lcom/leo/salt/tweaks/view/-$$Lambda$AppPicker$LoadApplications$RzOQsIW2LzEnrrSfqvLBnEbX-Ko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AppPicker$LoadApplications$RzOQsIW2LzEnrrSfqvLBnEbX-Ko;->f$0:Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/-$$Lambda$AppPicker$LoadApplications$RzOQsIW2LzEnrrSfqvLBnEbX-Ko;->f$0:Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/leo/salt/tweaks/view/AppPicker$LoadApplications;->lambda$onPostExecute$0$AppPicker$LoadApplications(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
