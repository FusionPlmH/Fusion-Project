.class public final synthetic Lcom/leo/salt/feedback/-$$Lambda$FeedBackChina$XSreUPHrzVBDwzkDQHJCfgA9mxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/feedback/-$$Lambda$FeedBackChina$XSreUPHrzVBDwzkDQHJCfgA9mxE;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/feedback/-$$Lambda$FeedBackChina$XSreUPHrzVBDwzkDQHJCfgA9mxE;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leo/salt/feedback/FeedBackChina;->lambda$PermissionHome$0(Landroid/content/Context;Lcom/leo/SweetAlert/SweetAlertDialog;)V

    return-void
.end method