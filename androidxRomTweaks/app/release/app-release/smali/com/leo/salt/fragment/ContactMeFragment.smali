.class public Lcom/leo/salt/fragment/ContactMeFragment;
.super Landroid/app/Fragment;
.source "ContactMeFragment.java"


# instance fields
.field BodyTitle:Landroid/widget/TextView;

.field NameTitle:Landroid/widget/TextView;

.field mBody:Landroid/widget/EditText;

.field mCancel:Landroid/widget/TextView;

.field mName:Landroid/widget/EditText;

.field mSubmit:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public Name()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.boot.em.model"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.build.display.id"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->getKenel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$mail$0$ContactMeFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$mail$1$ContactMeFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message/rfc822"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "leo@leorom.cc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mail_title"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nROM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mBody:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mail_chooser"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "mail_null"

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/resource/Resource;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public mail()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/leo/salt/fragment/-$$Lambda$ContactMeFragment$izTAI-Nr3xb0fddNUz5TUtVJoTI;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/-$$Lambda$ContactMeFragment$izTAI-Nr3xb0fddNUz5TUtVJoTI;-><init>(Lcom/leo/salt/fragment/ContactMeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mSubmit:Landroid/widget/TextView;

    new-instance v1, Lcom/leo/salt/fragment/-$$Lambda$ContactMeFragment$o7uqAHh0fFJ7cT4RJl7MxaGSGaA;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/-$$Lambda$ContactMeFragment$o7uqAHh0fFJ7cT4RJl7MxaGSGaA;-><init>(Lcom/leo/salt/fragment/ContactMeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    const p2, 0x7f09006b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mCancel:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mCancel:Landroid/widget/TextView;

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    const p2, 0x7f09006c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mSubmit:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mSubmit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "mail_send"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    const p2, 0x7f0900e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mName:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    const p2, 0x7f0900e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mBody:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    const-string p2, "name_title"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->NameTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->NameTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "mail_name"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    const-string p2, "body_title"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->BodyTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->BodyTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "mail_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ContactMeFragment;->mail()V

    iget-object p1, p0, Lcom/leo/salt/fragment/ContactMeFragment;->mView:Landroid/view/View;

    return-object p1
.end method
