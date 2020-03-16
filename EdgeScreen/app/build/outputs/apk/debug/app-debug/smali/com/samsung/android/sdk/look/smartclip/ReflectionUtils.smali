.class Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;
.super Ljava/lang/Object;
.source "SlookSmartClip.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    move-object v4, v0

    array-length v0, v3

    new-array v5, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_1
    array-length v6, v3

    if-lt v0, v6, :cond_a

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v9, :cond_1

    goto :goto_5

    :cond_1
    aget-object v10, v8, v0

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    array-length v13, v3

    if-ne v12, v13, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    array-length v14, v11

    if-lt v13, v14, :cond_2

    goto :goto_4

    :cond_2
    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_4

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v5, v13

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    goto :goto_6

    :cond_4
    aget-object v14, v3, v13

    if-eqz v14, :cond_7

    aget-object v14, v11, v13

    aget-object v15, v3, v13

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v12, 0x1

    nop

    :goto_4
    if-nez v12, :cond_6

    move-object v6, v10

    nop

    :goto_5
    if-eqz v6, :cond_5

    invoke-virtual {v6, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "() method"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    goto :goto_7

    :cond_7
    nop

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    goto :goto_7

    :cond_9
    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    aget-object v6, v3, v0

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_b

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_b
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_c

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_c
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_d

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_d
    instance-of v7, v6, Ljava/lang/Byte;

    if-eqz v7, :cond_e

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_e
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_f

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_f
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_10

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_10
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_11

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_11
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_12

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v0

    goto :goto_8

    :cond_12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v0

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
