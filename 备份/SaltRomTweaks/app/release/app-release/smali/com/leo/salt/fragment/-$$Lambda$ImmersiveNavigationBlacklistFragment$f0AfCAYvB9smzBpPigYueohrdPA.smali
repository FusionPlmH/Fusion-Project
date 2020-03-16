.class public final synthetic Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;

.field private final synthetic f$1:Landroid/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;->f$0:Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;->f$1:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;->f$0:Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;

    iget-object v1, p0, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;->f$1:Landroid/preference/Preference;

    invoke-virtual {v0, v1, p1, p2}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->lambda$onPreferenceClick$2$ImmersiveNavigationBlacklistFragment(Landroid/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method
