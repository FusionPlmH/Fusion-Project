.class Lcom/leo/salt/preference/MultipleChoicePreference$Item;
.super Ljava/lang/Object;
.source "MultipleChoicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/MultipleChoicePreference;
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

.field final synthetic this$0:Lcom/leo/salt/preference/MultipleChoicePreference;


# direct methods
.method private constructor <init>(Lcom/leo/salt/preference/MultipleChoicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/MultipleChoicePreference$Item;->this$0:Lcom/leo/salt/preference/MultipleChoicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/preference/MultipleChoicePreference;Lcom/leo/salt/preference/MultipleChoicePreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/MultipleChoicePreference$Item;-><init>(Lcom/leo/salt/preference/MultipleChoicePreference;)V

    return-void
.end method
