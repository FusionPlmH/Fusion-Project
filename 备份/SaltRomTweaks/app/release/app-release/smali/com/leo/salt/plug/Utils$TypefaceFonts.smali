.class public Lcom/leo/salt/plug/Utils$TypefaceFonts;
.super Landroid/text/style/MetricAffectingSpan;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/plug/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceFonts"
.end annotation


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/plug/Utils$TypefaceFonts;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private static setTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/plug/Utils$TypefaceFonts;->typeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/leo/salt/plug/Utils$TypefaceFonts;->setTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/plug/Utils$TypefaceFonts;->typeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/leo/salt/plug/Utils$TypefaceFonts;->setTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
