.class Lcom/leo/salt/down/download/FileTask$1;
.super Ljava/lang/Object;
.source "FileTask.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/down/download/FileTask;->saveRangeFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/down/download/FileTask;

.field final synthetic val$range:Lcom/leo/salt/down/data/Ranges;

.field final synthetic val$saveFile:Ljava/io/File;

.field final synthetic val$tempFile:Ljava/io/File;

.field final synthetic val$tempI:I


# direct methods
.method constructor <init>(Lcom/leo/salt/down/download/FileTask;ILcom/leo/salt/down/data/Ranges;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/down/download/FileTask$1;->this$0:Lcom/leo/salt/down/download/FileTask;

    iput p2, p0, Lcom/leo/salt/down/download/FileTask$1;->val$tempI:I

    iput-object p3, p0, Lcom/leo/salt/down/download/FileTask$1;->val$range:Lcom/leo/salt/down/data/Ranges;

    iput-object p4, p0, Lcom/leo/salt/down/download/FileTask$1;->val$saveFile:Ljava/io/File;

    iput-object p5, p0, Lcom/leo/salt/down/download/FileTask$1;->val$tempFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/down/download/FileTask$1;->this$0:Lcom/leo/salt/down/download/FileTask;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/down/download/FileTask;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/down/download/FileTask$1;->this$0:Lcom/leo/salt/down/download/FileTask;

    iget v2, p0, Lcom/leo/salt/down/download/FileTask$1;->val$tempI:I

    iget-object v3, p0, Lcom/leo/salt/down/download/FileTask$1;->val$range:Lcom/leo/salt/down/data/Ranges;

    iget-object v4, p0, Lcom/leo/salt/down/download/FileTask$1;->val$saveFile:Ljava/io/File;

    iget-object v5, p0, Lcom/leo/salt/down/download/FileTask$1;->val$tempFile:Ljava/io/File;

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/leo/salt/down/download/FileTask;->access$000(Lcom/leo/salt/down/download/FileTask;Lokhttp3/Response;ILcom/leo/salt/down/data/Ranges;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
