.class public Lcom/bumptech/glide/request/animation/NoAnimation;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/NoAnimation<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/request/animation/NoAnimation;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/NoAnimation;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;

    new-instance v0, Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bumptech/glide/request/animation/NoAnimation;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;

    return-object v0
.end method

.method public static get()Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION:Lcom/bumptech/glide/request/animation/NoAnimation;

    return-object v0
.end method

.method public static getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/animation/NoAnimation;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    return-object v0
.end method


# virtual methods
.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
