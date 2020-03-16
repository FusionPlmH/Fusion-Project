.class Lcom/leo/salt/tweaks/view/AppPicker$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private packageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/leo/salt/tweaks/view/AppPicker;


# direct methods
.method private constructor <init>(Lcom/leo/salt/tweaks/view/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->appList:Ljava/util/List;

    iput-object p5, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/tweaks/view/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;Lcom/leo/salt/tweaks/view/AppPicker$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;-><init>(Lcom/leo/salt/tweaks/view/AppPicker;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->appList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->appList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->appList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0c0034

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_2

    const p3, 0x7f090036

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SDK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {v3}, Lcom/leo/salt/tweaks/view/AppPicker;->access$1000(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android_versions"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {v3}, Lcom/leo/salt/tweaks/view/AppPicker;->access$1100(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "system_apps"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->this$0:Lcom/leo/salt/tweaks/view/AppPicker;

    invoke-static {v3}, Lcom/leo/salt/tweaks/view/AppPicker;->access$1200(Lcom/leo/salt/tweaks/view/AppPicker;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "use_apps"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f090035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/AppPicker$Adapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object p2
.end method
