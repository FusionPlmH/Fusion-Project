.class Lcom/leo/salt/activity/PingActivity$2;
.super Ljava/lang/Object;
.source "PingActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/activity/PingActivity;->initAutoComplete(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/activity/PingActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/activity/PingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity$2;->this$0:Lcom/leo/salt/activity/PingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-void
.end method
