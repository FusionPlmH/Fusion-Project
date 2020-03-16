.class public final synthetic La/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:La/n;


# direct methods
.method public synthetic constructor <init>(La/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g;->a:La/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, La/g;->a:La/n;

    invoke-virtual {v0, p1, p2}, La/n;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method
