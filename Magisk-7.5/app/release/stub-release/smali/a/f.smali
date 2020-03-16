.class public final synthetic La/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:La/m;


# direct methods
.method public synthetic constructor <init>(La/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/f;->a:La/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, La/f;->a:La/m;

    invoke-virtual {v0, p1, p2}, La/m;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method
