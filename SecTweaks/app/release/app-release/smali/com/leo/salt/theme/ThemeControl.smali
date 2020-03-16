.class public Lcom/leo/salt/theme/ThemeControl;
.super Ljava/lang/Object;
.source "ThemeControl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/theme/ThemeControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/theme/ThemeControl;->isChanged()Z

    return-void
.end method

.method public static themeArr()[I
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f1100cd
        0x7f1100d2
        0x7f1100dc
        0x7f1100da
        0x7f1100d8
        0x7f1100d9
        0x7f1100d3
        0x7f1100cc
        0x7f1100d4
        0x7f1100ce
        0x7f1100db
        0x7f1100d1
        0x7f1100d7
        0x7f1100d5
        0x7f1100cf
        0x7f1100d6
        0x7f1100d0
        0x7f1100c8
    .end array-data
.end method


# virtual methods
.method public getTheme(Landroid/content/Context;)I
    .locals 2

    const-string v0, "theme"

    const v1, 0x7f1100cd

    invoke-static {p1, v0, v1}, Lcom/leo/salt/theme/Utils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getThemePosition()I
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/theme/ThemeControl;->mContext:Landroid/content/Context;

    const-string v1, "themePosition"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/leo/salt/theme/Utils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/theme/ThemeControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/leo/salt/theme/ThemeControl;->getTheme(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/leo/salt/theme/ThemeControl;->mCurrentTheme:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v0, p0, Lcom/leo/salt/theme/ThemeControl;->mCurrentTheme:I

    return v1
.end method

.method public setTheme(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/theme/ThemeControl;->mContext:Landroid/content/Context;

    const-string v1, "theme"

    invoke-static {v0, v1, p1}, Lcom/leo/salt/theme/Utils;->putIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setThemePosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/theme/ThemeControl;->mContext:Landroid/content/Context;

    const-string v1, "themePosition"

    invoke-static {v0, v1, p1}, Lcom/leo/salt/theme/Utils;->putIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
