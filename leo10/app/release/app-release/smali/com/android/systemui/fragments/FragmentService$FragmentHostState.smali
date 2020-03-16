.class Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
.super Ljava/lang/Object;
.source "FragmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentHostState"
.end annotation


# instance fields
.field public mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/fragments/FragmentHostManager;

    iget-object v0, p1, Lcom/android/systemui/fragments/FragmentService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    invoke-direct {p2, v0, p1, v1}, Lcom/android/systemui/fragments/FragmentHostManager;-><init>(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method


# virtual methods
.method public getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v0
.end method

.method public handleSendConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public sendConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
