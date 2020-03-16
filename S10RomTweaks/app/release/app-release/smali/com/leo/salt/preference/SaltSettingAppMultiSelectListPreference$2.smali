.class final Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$2;
.super Ljava/lang/Object;
.source "SaltSettingAppMultiSelectListPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$2;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$2;->collator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    check-cast p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$2;->compare(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;)I

    move-result p1

    return p1
.end method
