.class public final synthetic Lcom/leo/salt/tweaks/base/-$$Lambda$BasePreferenceFragment$vt6_DP21TdujD4uusMVapiQomuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/tweaks/base/BasePreferenceFragment;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/base/-$$Lambda$BasePreferenceFragment$vt6_DP21TdujD4uusMVapiQomuw;->f$0:Lcom/leo/salt/tweaks/base/BasePreferenceFragment;

    iput-object p2, p0, Lcom/leo/salt/tweaks/base/-$$Lambda$BasePreferenceFragment$vt6_DP21TdujD4uusMVapiQomuw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/base/-$$Lambda$BasePreferenceFragment$vt6_DP21TdujD4uusMVapiQomuw;->f$0:Lcom/leo/salt/tweaks/base/BasePreferenceFragment;

    iget-object v1, p0, Lcom/leo/salt/tweaks/base/-$$Lambda$BasePreferenceFragment$vt6_DP21TdujD4uusMVapiQomuw;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->lambda$keySendBroadcast$0$BasePreferenceFragment(Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
