.class Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IntentDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppIcon:Landroid/widget/ImageView;

.field mAppNames:Landroid/widget/TextView;

.field mAppPackage:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
