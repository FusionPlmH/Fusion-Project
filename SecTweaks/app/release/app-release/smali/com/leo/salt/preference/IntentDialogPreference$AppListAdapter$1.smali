.class Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;
.super Landroid/widget/Filter;
.source "IntentDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;


# direct methods
.method constructor <init>(Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    iget-object v3, v3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    iget-object v3, v3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/leo/salt/utils/AppInfo;

    iget-object v3, v3, Lcom/leo/salt/utils/AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    iget-object v3, v3, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iput-object p2, p1, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    iget-object p1, p0, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;

    invoke-virtual {p1}, Lcom/leo/salt/preference/IntentDialogPreference$AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
