.class Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;
.super Ljava/lang/Object;
.source "SaltSettingAppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field package_Name:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
