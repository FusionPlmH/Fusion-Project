.class Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/IntentDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sections:[Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/preference/IntentDialogPreference;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/IntentDialogPreference;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leo/salt/utils/AppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->this$0:Lcom/leo/salt/preference/IntentDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/utils/AppInfo;

    iget-object v0, v0, Lcom/leo/salt/utils/AppInfo;->mAppName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;-><init>(Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Lcom/leo/salt/utils/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/utils/AppInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->getItem(I)Lcom/leo/salt/utils/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->this$0:Lcom/leo/salt/preference/IntentDialogPreference;

    invoke-static {p2}, Lcom/leo/salt/preference/IntentDialogPreference;->access$100(Lcom/leo/salt/preference/IntentDialogPreference;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0029

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;-><init>(Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;)V

    const v0, 0x7f09002f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    const v0, 0x7f090030

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    const v0, 0x7f09002e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/utils/AppInfo;

    iget-object v0, p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/leo/salt/utils/AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/leo/salt/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/leo/salt/utils/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
