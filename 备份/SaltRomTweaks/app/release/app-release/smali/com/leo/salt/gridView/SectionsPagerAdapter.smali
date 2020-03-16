.class public Lcom/leo/salt/gridView/SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SectionsPagerAdapter.java"


# static fields
.field private static final TAB_TITLES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sadd"

    const-string v1, "dasdasdsadsad"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/gridView/SectionsPagerAdapter;->TAB_TITLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/leo/salt/gridView/SectionsPagerAdapter;->TAB_TITLES:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
