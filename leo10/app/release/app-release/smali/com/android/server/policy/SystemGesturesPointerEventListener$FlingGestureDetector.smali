.class final Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v3

    const-wide/16 v6, 0x1388

    add-long/2addr v3, v6

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    float-to-int v9, v3

    move/from16 v3, p4

    float-to-int v10, v3

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    invoke-virtual/range {v6 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v3, v1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J

    return v5
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    return v0
.end method
