.class synthetic Lcom/leo/salt/tweaks/view/BannerLayout$3;
.super Ljava/lang/Object;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

.field static final synthetic $SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Shape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->values()[Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v2}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->centerTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->leftBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->leftTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->rightBottom:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Position:[I

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->rightTop:Lcom/leo/salt/tweaks/view/BannerLayout$Position;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Position;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->values()[Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Shape:[I

    :try_start_6
    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Shape:[I

    sget-object v3, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->rect:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/leo/salt/tweaks/view/BannerLayout$3;->$SwitchMap$com$leo$salt$tweaks$view$BannerLayout$Shape:[I

    sget-object v2, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->oval:Lcom/leo/salt/tweaks/view/BannerLayout$Shape;

    invoke-virtual {v2}, Lcom/leo/salt/tweaks/view/BannerLayout$Shape;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
