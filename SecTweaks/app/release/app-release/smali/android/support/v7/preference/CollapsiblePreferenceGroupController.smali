.class final Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasExpandablePreference:Z

.field final mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    iput-object p2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;"
        }
    .end annotation

    new-instance v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    iget-object v1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    new-instance p2, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;-><init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_8

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    instance-of v7, v6, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_4
    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_8

    :cond_5
    invoke-direct {p0, v6}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v6

    if-eqz v1, :cond_7

    iget-boolean v7, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested expand buttons are not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v8

    if-ge v5, v8, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    :goto_6
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v0

    if-le v5, v0, :cond_c

    invoke-direct {p0, p1, v3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-boolean p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    return-object v2
.end method


# virtual methods
.method public createVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method
