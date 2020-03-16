.class public Lcom/leo/salt/tweaks/amber/PingActivity;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.source "PingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;,
        Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;
    }
.end annotation


# static fields
.field private static final msgKey1:I = 0x1

.field private static final pingRes:Ljava/lang/String; = "pingRes"


# instance fields
.field private cancel_btn:Landroid/widget/TextView;

.field private cannotReachStr:Ljava/lang/String;

.field private dst_dsp:Landroid/widget/TextView;

.field private exitPingStr:Ljava/lang/String;

.field private failPingStr:Ljava/lang/String;

.field private finishPingStr:Ljava/lang/String;

.field private ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

.field private keeperThread:Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field volatile pingIsAlive:Z

.field private pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

.field private show_txt:Landroid/widget/TextView;

.field private startPingStr:Ljava/lang/String;

.field private start_btn:Landroid/widget/TextView;

.field private stopLastPingStr:Ljava/lang/String;

.field private stopPingStr:Ljava/lang/String;

.field private timeOutStr:Ljava/lang/String;

.field private tst:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;-><init>()V

    new-instance v0, Lcom/leo/salt/tweaks/amber/PingActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/amber/PingActivity$1;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->failPingStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->cannotReachStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->finishPingStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->timeOutStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->show_txt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/tweaks/amber/PingActivity;)Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    return-object p0
.end method

.method private initAutoComplete(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V
    .locals 5

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "network_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "history"

    const-string v2, "www.leorom.cc"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    const v3, 0x109000a

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    array-length v2, p1

    const/16 v4, 0x32

    if-le v2, v4, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/leo/salt/tweaks/amber/PingActivity$2;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/amber/PingActivity$2;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private saveHistory(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V
    .locals 4

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "network_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "www.leorom.cc"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "history"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private setTimeToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->tst:Landroid/widget/Toast;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->tst:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public PingTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090034

    return v0
.end method

.method protected initCollapsingTextText()Ljava/lang/String;
    .locals 1

    const-string v0, "ping_name"

    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0028

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->tst:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090071

    if-eq p1, v0, :cond_4

    const v0, 0x7f090192

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->stopLastPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->setTimeToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->interrupt()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->keeperThread:Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->interrupt()V

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->startPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->setTimeToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;Lcom/leo/salt/tweaks/amber/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    new-instance p1, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;Lcom/leo/salt/tweaks/amber/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->keeperThread:Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingIsAlive:Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->start()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->keeperThread:Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->start()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    const-string v0, "history"

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->saveHistory(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->stopPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->setTimeToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->interrupt()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->keeperThread:Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->interrupt()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->exitPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->setTimeToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/PingActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f090192

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->start_btn:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->start_btn:Landroid/widget/TextView;

    const-string v0, "ping_dsp"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090071

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->cancel_btn:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->cancel_btn:Landroid/widget/TextView;

    const-string v0, "cancel_dsp"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090127

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    const p1, 0x7f0901e4

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->show_txt:Landroid/widget/TextView;

    const-string p1, "start_ping"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->startPingStr:Ljava/lang/String;

    const-string p1, "stop_last_ping"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->stopLastPingStr:Ljava/lang/String;

    const-string p1, "stop_ping"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->stopPingStr:Ljava/lang/String;

    const-string p1, "exit_ping"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->exitPingStr:Ljava/lang/String;

    const-string p1, "fail_ping"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->failPingStr:Ljava/lang/String;

    const-string p1, "cannot_reach"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->cannotReachStr:Ljava/lang/String;

    const-string p1, "finish_ping"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->finishPingStr:Ljava/lang/String;

    const-string p1, "time_out"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->timeOutStr:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->start_btn:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->cancel_btn:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;Lcom/leo/salt/tweaks/amber/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingThread:Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    new-instance p1, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;Lcom/leo/salt/tweaks/amber/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->keeperThread:Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;

    const p1, 0x7f090191

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->dst_dsp:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->dst_dsp:Landroid/widget/TextView;

    const-string v0, "dst_dsp"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->PingTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    const-string v0, "history"

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity;->initAutoComplete(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
