.class public final synthetic Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$gWlOyS05v4JjfrhP7bluQ1JBi2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/leo/salt/fragment/BlacklistFragment;

.field private final synthetic f$1:Landroid/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/leo/salt/fragment/BlacklistFragment;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$gWlOyS05v4JjfrhP7bluQ1JBi2I;->f$0:Lcom/leo/salt/fragment/BlacklistFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$gWlOyS05v4JjfrhP7bluQ1JBi2I;->f$1:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$gWlOyS05v4JjfrhP7bluQ1JBi2I;->f$0:Lcom/leo/salt/fragment/BlacklistFragment;

    iget-object v1, p0, Lcom/leo/salt/fragment/-$$Lambda$BlacklistFragment$gWlOyS05v4JjfrhP7bluQ1JBi2I;->f$1:Landroid/preference/Preference;

    invoke-virtual {v0, v1, p1, p2}, Lcom/leo/salt/fragment/BlacklistFragment;->lambda$onPreferenceClick$2$BlacklistFragment(Landroid/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method
