.class public Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SaltSettingAppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;


# direct methods
.method public constructor <init>(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->access$300(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->access$300(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->getItem(I)Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object p3, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p3, p2}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;

    move-result-object p2

    iget-object p3, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->getItem(I)Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;

    move-result-object v0

    iget-object v1, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->apppackage:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->package_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p2, p2, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-static {v0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->access$200(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-static {v1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->access$100(Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p3
.end method
