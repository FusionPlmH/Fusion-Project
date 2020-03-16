.class public Lcom/leo/salt/activity/PingActivity;
.super Lcom/leo/salt/base/BaseActivity;
.source "PingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/activity/PingActivity$KeeperThread;,
        Lcom/leo/salt/activity/PingActivity$PingThread;
    }
.end annotation


# static fields
.field private static cannotReachStr:Ljava/lang/String; = null

.field private static exitPingStr:Ljava/lang/String; = null

.field private static failPingStr:Ljava/lang/String; = null

.field private static finishPingStr:Ljava/lang/String; = null

.field private static final msgKey1:I = 0x1

.field private static final pingRes:Ljava/lang/String; = "pingRes"

.field private static startPingStr:Ljava/lang/String;

.field private static stopLastPingStr:Ljava/lang/String;

.field private static stopPingStr:Ljava/lang/String;

.field private static timeOutStr:Ljava/lang/String;


# instance fields
.field private cancel_btn:Landroid/widget/Button;

.field private ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

.field private keeperThread:Lcom/leo/salt/activity/PingActivity$KeeperThread;

.field private mHandler:Landroid/os/Handler;

.field volatile pingIsAlive:Z

.field private pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

.field private show_txt:Landroid/widget/TextView;

.field private start_btn:Landroid/widget/Button;

.field private tst:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/leo/salt/activity/PingActivity$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/activity/PingActivity$1;-><init>(Lcom/leo/salt/activity/PingActivity;)V

    iput-object v0, p0, Lcom/leo/salt/activity/PingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/leo/salt/activity/PingActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/activity/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/activity/PingActivity;->failPingStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/leo/salt/activity/PingActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/activity/PingActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/activity/PingActivity;->cannotReachStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/activity/PingActivity;->finishPingStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/activity/PingActivity;->timeOutStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/leo/salt/activity/PingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/activity/PingActivity;->show_txt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leo/salt/activity/PingActivity;)Lcom/leo/salt/activity/PingActivity$PingThread;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    return-object p0
.end method

.method private getToolbarViews()V
    .locals 2

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Lcom/leo/salt/activity/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/leo/salt/activity/PingActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f10038c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private initAutoComplete(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V
    .locals 5

    const-string p1, "network_url"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/activity/PingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "history"

    const-string v2, "www.leorom.cc"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000a

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    array-length v3, p1

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-direct {p1, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/leo/salt/activity/PingActivity$2;

    invoke-direct {p1, p0}, Lcom/leo/salt/activity/PingActivity$2;-><init>(Lcom/leo/salt/activity/PingActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private saveHistory(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V
    .locals 4

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "network_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/activity/PingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "history"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private setTimeToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->tst:Landroid/widget/Toast;

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->tst:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c0023

    return v0
.end method

.method protected initStatusBarColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/activity/PingActivity;->tst:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090053

    if-eq p1, v0, :cond_4

    const v0, 0x7f09017e

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$PingThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/leo/salt/activity/PingActivity;->stopLastPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/activity/PingActivity;->setTimeToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$PingThread;->interrupt()V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->keeperThread:Lcom/leo/salt/activity/PingActivity$KeeperThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$KeeperThread;->interrupt()V

    :cond_2
    sget-object p1, Lcom/leo/salt/activity/PingActivity;->startPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/activity/PingActivity;->setTimeToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$PingThread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/leo/salt/activity/PingActivity$PingThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/activity/PingActivity$PingThread;-><init>(Lcom/leo/salt/activity/PingActivity;Lcom/leo/salt/activity/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    new-instance p1, Lcom/leo/salt/activity/PingActivity$KeeperThread;

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/activity/PingActivity$KeeperThread;-><init>(Lcom/leo/salt/activity/PingActivity;Lcom/leo/salt/activity/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->keeperThread:Lcom/leo/salt/activity/PingActivity$KeeperThread;

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/activity/PingActivity;->pingIsAlive:Z

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$PingThread;->start()V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->keeperThread:Lcom/leo/salt/activity/PingActivity$KeeperThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$KeeperThread;->start()V

    const-string p1, "history"

    iget-object v0, p0, Lcom/leo/salt/activity/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/activity/PingActivity;->saveHistory(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$PingThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/leo/salt/activity/PingActivity;->stopPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/activity/PingActivity;->setTimeToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$PingThread;->interrupt()V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->keeperThread:Lcom/leo/salt/activity/PingActivity$KeeperThread;

    invoke-virtual {p1}, Lcom/leo/salt/activity/PingActivity$KeeperThread;->interrupt()V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/leo/salt/activity/PingActivity;->exitPingStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leo/salt/activity/PingActivity;->setTimeToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09017e

    invoke-virtual {p0, p1}, Lcom/leo/salt/activity/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->start_btn:Landroid/widget/Button;

    const p1, 0x7f090053

    invoke-virtual {p0, p1}, Lcom/leo/salt/activity/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->cancel_btn:Landroid/widget/Button;

    const p1, 0x7f0900d3

    invoke-virtual {p0, p1}, Lcom/leo/salt/activity/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    const p1, 0x7f09016d

    invoke-virtual {p0, p1}, Lcom/leo/salt/activity/PingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->show_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100399

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->startPingStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1003e2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->stopLastPingStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1003e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->stopPingStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100169

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->exitPingStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100170

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->failPingStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->cannotReachStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->finishPingStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10040d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/activity/PingActivity;->timeOutStr:Ljava/lang/String;

    invoke-static {p0}, Lcom/leo/salt/theme/Utils;->StatusBarColor(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->start_btn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/activity/PingActivity;->cancel_btn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/leo/salt/activity/PingActivity$PingThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/activity/PingActivity$PingThread;-><init>(Lcom/leo/salt/activity/PingActivity;Lcom/leo/salt/activity/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->pingThread:Lcom/leo/salt/activity/PingActivity$PingThread;

    new-instance p1, Lcom/leo/salt/activity/PingActivity$KeeperThread;

    invoke-direct {p1, p0, v0}, Lcom/leo/salt/activity/PingActivity$KeeperThread;-><init>(Lcom/leo/salt/activity/PingActivity;Lcom/leo/salt/activity/PingActivity$1;)V

    iput-object p1, p0, Lcom/leo/salt/activity/PingActivity;->keeperThread:Lcom/leo/salt/activity/PingActivity$KeeperThread;

    invoke-direct {p0}, Lcom/leo/salt/activity/PingActivity;->getToolbarViews()V

    const-string p1, "history"

    iget-object v0, p0, Lcom/leo/salt/activity/PingActivity;->ipaddr_etxt:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/activity/PingActivity;->initAutoComplete(Ljava/lang/String;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/activity/PingActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
