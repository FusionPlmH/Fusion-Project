.class public Lcom/leo/salt/preference/CustomBatteryDialog;
.super Landroid/app/Dialog;
.source "CustomBatteryDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;,
        Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;,
        Lcom/leo/salt/preference/CustomBatteryDialog$AlphabeticalComparator;
    }
.end annotation


# instance fields
.field private authorPreText:Ljava/lang/String;

.field private compilerPreText:Ljava/lang/String;

.field protected mBatteries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;

.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->authorPreText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->compilerPreText:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mBatteries:Ljava/util/List;

    const v0, 0x7f100123

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/CustomBatteryDialog;->setTitle(I)V

    const v0, 0x7f100121

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->authorPreText:Ljava/lang/String;

    const v0, 0x7f100122

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->compilerPreText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mPm:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "leorom.intent.category.BATTERY_MODULE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/leo/salt/preference/CustomBatteryDialog;->addNewBatteryInfoFromPKG(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mBatteries:Ljava/util/List;

    new-instance v0, Lcom/leo/salt/preference/CustomBatteryDialog$AlphabeticalComparator;

    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/preference/CustomBatteryDialog$AlphabeticalComparator;-><init>(Lcom/leo/salt/preference/CustomBatteryDialog;Landroid/content/Context;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/leo/salt/preference/CustomBatteryDialog$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/preference/CustomBatteryDialog$1;-><init>(Lcom/leo/salt/preference/CustomBatteryDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lcom/leo/salt/preference/CustomBatteryLA;

    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0031

    iget-object v4, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mBatteries:Ljava/util/List;

    invoke-direct {p1, v2, v3, v4}, Lcom/leo/salt/preference/CustomBatteryLA;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/CustomBatteryDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/CustomBatteryDialog;)Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mListener:Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;

    return-object p0
.end method

.method private addNewBatteryInfoFromPKG(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;-><init>(Lcom/leo/salt/preference/CustomBatteryDialog;)V

    iput-object p1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->batterypkg:Ljava/lang/String;

    const-string v1, "battery_name"

    const-string v2, "string"

    invoke-direct {p0, p1, v1, v2}, Lcom/leo/salt/preference/CustomBatteryDialog;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->authorPreText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icon_resource"

    const-string v3, "string"

    invoke-direct {p0, p1, v2, v3}, Lcom/leo/salt/preference/CustomBatteryDialog;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->originalauthor:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->compilerPreText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "packaging_name"

    const-string v3, "string"

    invoke-direct {p0, p1, v2, v3}, Lcom/leo/salt/preference/CustomBatteryDialog;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->compilername:Ljava/lang/String;

    const-string v1, "stat_sys_battery"

    const-string v2, "drawable"

    invoke-direct {p0, p1, v1, v2}, Lcom/leo/salt/preference/CustomBatteryDialog;->getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    iget-object p1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/leo/salt/preference/CustomBatteryDialog$BatteryInfo;->fullicon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mBatteries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/CustomBatteryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string p2, "drawable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "string"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public setOnBatteryPickedListener(Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/CustomBatteryDialog;->mListener:Lcom/leo/salt/preference/CustomBatteryDialog$OnBatteryPickedListener;

    return-void
.end method
