.class public final synthetic La/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/i0;


# instance fields
.field private final synthetic a:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/i;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La/i;->a:Landroid/app/Application;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, La/n;->a(Landroid/app/Application;Ljava/io/File;)V

    return-void
.end method
