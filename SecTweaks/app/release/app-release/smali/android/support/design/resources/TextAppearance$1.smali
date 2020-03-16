.class Landroid/support/design/resources/TextAppearance$1;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/resources/TextAppearance;

.field final synthetic val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Landroid/support/design/resources/TextAppearance;Landroid/text/TextPaint;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iput-object p2, p0, Landroid/support/design/resources/TextAppearance$1;->val$textPaint:Landroid/text/TextPaint;

    iput-object p3, p0, Landroid/support/design/resources/TextAppearance$1;->val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    invoke-static {v0}, Landroid/support/design/resources/TextAppearance;->access$200(Landroid/support/design/resources/TextAppearance;)V

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/resources/TextAppearance;->access$102(Landroid/support/design/resources/TextAppearance;Z)Z

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iget v1, v0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/resources/TextAppearance;->access$002(Landroid/support/design/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    iget-object v1, p0, Landroid/support/design/resources/TextAppearance$1;->val$textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->this$0:Landroid/support/design/resources/TextAppearance;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/resources/TextAppearance;->access$102(Landroid/support/design/resources/TextAppearance;Z)Z

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance$1;->val$callback:Landroid/support/v4/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
