.class public Lcom/leo/salt/tools/wifi/ViewActivity;
.super Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;
.source "ViewActivity.java"


# instance fields
.field backupPath:Ljava/lang/String;

.field context:Landroid/content/Context;

.field public mWifiState:Landroid/widget/TextView;

.field mainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field popup:Landroid/widget/PopupMenu;

.field sPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;-><init>()V

    iput-object p0, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->context:Landroid/content/Context;

    return-void
.end method

.method private doWork()V
    .locals 3

    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/leo/salt/tools/wifi/WiFiAdapter;

    iget-object v2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/tools/wifi/WiFiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$ueVVVbs2LJVtYYw-hY6TkrOHM8k;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$ueVVVbs2LJVtYYw-hY6TkrOHM8k;-><init>(Lcom/leo/salt/tools/wifi/ViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private onWork()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "waln_error"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->showSnack(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "waln_null"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->showSnack(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->doWork()V

    :goto_0
    return-void
.end method


# virtual methods
.method public WIFIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/leo/salt/tools/wifi/ReadFile;

    invoke-direct {v0, p1}, Lcom/leo/salt/tools/wifi/ReadFile;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/wifi/ReadFile;->getList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected initAppBarLayout()I
    .locals 1

    const v0, 0x7f090039

    return v0
.end method

.method protected initCollapsingTextText()Ljava/lang/String;
    .locals 1

    const-string v0, "waln_name"

    return-object v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c008e

    return v0
.end method

.method public synthetic lambda$doWork$2$ViewActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    new-instance p1, Landroid/widget/PopupMenu;

    invoke-direct {p1, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/high16 p4, 0x7f0d0000

    invoke-virtual {p1, p4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    new-instance p2, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;

    invoke-direct {p2, p0, p3}, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$a68nYcPKFvNxJVeAtnGJfx9u654;-><init>(Lcom/leo/salt/tools/wifi/ViewActivity;I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public synthetic lambda$null$0$ViewActivity(Landroid/content/ClipboardManager;ILandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p3, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string p3, "view"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-static {p3, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "waln_source_code"

    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x1040001

    invoke-virtual {p0, p2}, Lcom/leo/salt/tools/wifi/ViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->showSnack(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$1$ViewActivity(ILandroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x7f0900fa

    const-string v2, "psk"

    const-string v3, "\n"

    const-string v4, "ssid"

    const/4 v5, 0x0

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "waln_source_code"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "pos"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "view"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x1040001

    new-instance v2, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;

    invoke-direct {v2, p0, v0, p1}, Lcom/leo/salt/tools/wifi/-$$Lambda$ViewActivity$qp34eOWW--T8P7t8vrGxj53Fs_M;-><init>(Lcom/leo/salt/tools/wifi/ViewActivity;Landroid/content/ClipboardManager;I)V

    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v5, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "waln_ssid"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->showSnack(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v5, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "waln_code"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->showSnack(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSID: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "waln_password"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "waln_code_ssid"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->showSnack(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900fe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0901da

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mWifiState:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->context:Landroid/content/Context;

    const-string v1, "Backup"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/LastBackup"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->backupPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->sPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->sPath:Ljava/lang/String;

    const-string v0, "%20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "\u8def\u5f84\u4e0d\u80fd\u5305\u542b\u7a7a\u683c"

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->sPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->sPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->sPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    :goto_0
    invoke-direct {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->onWork()V

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mWifiState:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waln_total"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "waln_quantity"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "waln_refresh"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "waln_system_wifi"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "waln_error"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waln_total"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "waln_quantity"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/wifi/ViewActivity;->WIFIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseCollapsingToolbarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->sPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/wifi/ViewActivity;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/wifi/ViewActivity;->mainList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/leo/salt/tools/wifi/ViewActivity;->onWork()V

    return v1
.end method
