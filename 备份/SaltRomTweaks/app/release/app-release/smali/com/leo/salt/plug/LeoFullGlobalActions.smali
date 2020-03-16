.class public abstract Lcom/leo/salt/plug/LeoFullGlobalActions;
.super Lcom/leo/salt/plug/LeoGlobalActions;
.source "LeoFullGlobalActions.java"


# instance fields
.field public BG:I

.field decorView:Landroid/view/View;

.field public mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/plug/LeoGlobalActions;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/plug/LeoFullGlobalActions;->BG:I

    return-void
.end method


# virtual methods
.method public Background()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/plug/LeoFullGlobalActions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/plug/LeoFullGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/leo/salt/plug/LeoFullGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/plug/LeoGlobalBlur;->with(Landroid/content/Context;)Lcom/leo/salt/plug/LeoGlobalBlur;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/plug/LeoFullGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/leo/salt/plug/LeoGlobalBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/leo/salt/plug/LeoGlobalBlur;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/leo/salt/plug/LeoGlobalBlur;->radius(I)Lcom/leo/salt/plug/LeoGlobalBlur;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/leo/salt/plug/LeoGlobalBlur;->scale(I)Lcom/leo/salt/plug/LeoGlobalBlur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/plug/LeoGlobalBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/leo/salt/plug/LeoFullGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/leo/salt/plug/LeoFullGlobalActions;->decorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/plug/LeoGlobalActions;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/plug/LeoGlobalActions;->onResume()V

    return-void
.end method
