.class Landroid/support/v7/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p2, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    iget-boolean p2, p2, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    iget v1, v1, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    iget v1, v1, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference$1;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
