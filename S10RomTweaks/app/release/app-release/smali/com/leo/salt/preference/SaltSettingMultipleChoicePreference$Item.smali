.class Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;
.super Ljava/lang/Object;
.source "SaltSettingMultipleChoicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field mIsSelected:Z

.field mKey:Ljava/lang/String;

.field mSummary:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;


# direct methods
.method private constructor <init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;->this$0:Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference$Item;-><init>(Lcom/leo/salt/preference/SaltSettingMultipleChoicePreference;)V

    return-void
.end method
