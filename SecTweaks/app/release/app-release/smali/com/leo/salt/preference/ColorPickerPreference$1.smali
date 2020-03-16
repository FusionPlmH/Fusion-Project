.class Lcom/leo/salt/preference/ColorPickerPreference$1;
.super Landroid/view/ViewOutlineProvider;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/ColorPickerPreference;->setPreviewColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/preference/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/ColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference$1;->this$0:Lcom/leo/salt/preference/ColorPickerPreference;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference$1;->this$0:Lcom/leo/salt/preference/ColorPickerPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
