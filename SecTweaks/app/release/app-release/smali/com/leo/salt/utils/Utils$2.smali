.class final Lcom/leo/salt/utils/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/Utils;->StartActivity(ILandroid/app/Activity;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cls:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/Utils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/leo/salt/utils/Utils$2;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/utils/Utils$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/leo/salt/utils/Utils$2;->val$cls:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/leo/salt/utils/Utils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
