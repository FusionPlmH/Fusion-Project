.class public Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;
.super Landroid/text/style/MetricAffectingSpan;
.source "SaltConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/salt/SaltConfigCenter;
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

    iput-object p1, p0, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private setTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;->typeface:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;->setTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;->typeface:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;->setTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
