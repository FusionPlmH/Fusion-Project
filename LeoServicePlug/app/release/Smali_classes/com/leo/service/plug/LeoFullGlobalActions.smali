.class public abstract Lcom/leo/service/plug/LeoFullGlobalActions;
.super Lcom/leo/service/plug/LeoGlobalActions;
.source "LeoFullGlobalActions.java"


# instance fields
.field public BG:I

.field decorView:Landroid/view/View;

.field public mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/leo/service/plug/LeoGlobalActions;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/leo/service/plug/LeoFullGlobalActions;->BG:I

    return-void
.end method


# virtual methods
.method public Background()V
    .registers 4

    .line 48
    invoke-virtual {p0}, Lcom/leo/service/plug/LeoFullGlobalActions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/service/plug/LeoFullGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iget-object v0, p0, Lcom/leo/service/plug/LeoFullGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/service/plug/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/service/plug/LeoFullGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {v0, v1}, Lcom/leo/service/plug/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    const/4 v1, 0x5

    .line 51
    invoke-virtual {v0, v1}, Lcom/leo/service/plug/LeoGlobalBlur;->radius(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    const/16 v1, 0xa

    .line 52
    invoke-virtual {v0, v1}, Lcom/leo/service/plug/LeoGlobalBlur;->scale(I)Lcom/leo/service/plug/LeoGlobalBlur;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/leo/service/plug/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/leo/service/plug/LeoFullGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lcom/leo/service/plug/LeoFullGlobalActions;->decorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 34
    invoke-super {p0, p1}, Lcom/leo/service/plug/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 42
    invoke-super {p0}, Lcom/leo/service/plug/LeoGlobalActions;->onResume()V

    return-void
.end method
