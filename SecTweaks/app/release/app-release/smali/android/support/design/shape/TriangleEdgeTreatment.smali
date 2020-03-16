.class public Landroid/support/design/shape/TriangleEdgeTreatment;
.super Landroid/support/design/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/shape/EdgeTreatment;-><init>()V

    iput p1, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->size:F

    iput-boolean p2, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->inside:Z

    return-void
.end method


# virtual methods
.method public getEdgePath(FFLandroid/support/design/shape/ShapePath;)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iget v1, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->size:F

    mul-float v1, v1, p2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    iget-boolean v1, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->inside:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->size:F

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->size:F

    neg-float v1, v1

    :goto_0
    mul-float v1, v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    iget v1, p0, Landroid/support/design/shape/TriangleEdgeTreatment;->size:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p3, v0, v2}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    invoke-virtual {p3, p1, v2}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
