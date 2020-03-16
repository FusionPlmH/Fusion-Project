.class public Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;
.super Ljava/lang/Object;
.source "MessageFormInputModel.java"


# instance fields
.field public hint:Ljava/lang/String;

.field public inputType:I

.field public key:Ljava/lang/String;

.field public required:Z

.field public singleLine:Z

.field public tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->singleLine:Z

    iput v0, p0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    return-void
.end method
