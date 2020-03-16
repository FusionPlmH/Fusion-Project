.class public Lcom/leo/salt/preference/MyPreference;
.super Landroid/preference/Preference;
.source "MyPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0c008c

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/MyPreference;->setWidgetLayoutResource(I)V

    return-void
.end method
