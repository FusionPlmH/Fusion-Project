.class Lcom/leo/salt/preference/AppMultiSelectListPreference$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/AppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/AppMultiSelectListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/AppMultiSelectListPreference$MyApplicationInfo;->this$0:Lcom/leo/salt/preference/AppMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
