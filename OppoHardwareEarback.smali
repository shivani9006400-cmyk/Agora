# classes13.dex

.class public Lio/agora/rtc/audio/OppoHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static TAG:Ljava/lang/String; = "AG-OPPO"


# instance fields
.field private clsMediaClient:Ljava/lang/Class;

.field private clsMediaUnit:Ljava/lang/Class;

.field private clsOnConnectionSucceedListener:Ljava/lang/Class;

.field private isConnected:Z

.field private mClsInited:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mClsInited:Z

    .line 4
    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/audio/OppoHardwareEarback;->initialize()V

    return-void
.end method

.method public static synthetic access$002(Lio/agora/rtc/audio/OppoHardwareEarback;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    return p1
.end method

.method public static synthetic access$100(Lio/agora/rtc/audio/OppoHardwareEarback;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lio/agora/rtc/audio/OppoHardwareEarback;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    return-object p0
.end method

.method public static hasMediaUnitClass()Z
    .registers 3

    const-string v0, "com.coloros.ocs.mediaunit.MediaUnit"

    .line 1
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.coloros.ocs.mediaunit.MediaUnitClient"

    .line 2
    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.coloros.ocs.base.common.api.OnConnectionSucceedListener"

    .line 3
    invoke-static {v2}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    if-nez v2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x1

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mClsInited:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_34

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaUnit:Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "getMediaClient"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v3, v5, v4}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 4
    iget-object v1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    const-string v2, "release"

    new-array v3, v7, [Ljava/lang/Class;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3, v4}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public enableEarbackFeature(Z)I
    .registers 11

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mClsInited:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7d

    .line 3
    iget-boolean v2, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    if-eqz v2, :cond_7d

    .line 4
    iget-object v2, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaUnit:Ljava/lang/Class;

    const/4 v3, 0x0

    const-string v4, "getMediaClient"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v2, v3, v4, v6, v7}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_75

    const-string v2, "addOnConnectionSucceedListener"

    if-eqz p1, :cond_4e

    if-eqz v0, :cond_74

    .line 5
    :try_start_29
    iget-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v3, v5, [Ljava/lang/Class;

    iget-object v4, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    aput-object v4, v3, v8

    new-instance v4, Lio/agora/rtc/audio/OppoHardwareEarback$2;

    invoke-direct {v4, p0, v0}, Lio/agora/rtc/audio/OppoHardwareEarback$2;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;Ljava/lang/Object;)V

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v3, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Class;

    iget-object v6, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    aput-object v6, v4, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v3, v0, v2, v4, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :cond_4e
    if-eqz v0, :cond_74

    .line 7
    iget-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v3, v5, [Ljava/lang/Class;

    iget-object v4, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    aput-object v4, v3, v8

    new-instance v4, Lio/agora/rtc/audio/OppoHardwareEarback$3;

    invoke-direct {v4, p0, v0}, Lio/agora/rtc/audio/OppoHardwareEarback$3;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;Ljava/lang/Object;)V

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    iget-object v3, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Class;

    iget-object v6, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    aput-object v6, v4, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v3, v0, v2, v4, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_74} :catch_75

    :cond_74
    :goto_74
    return v8

    :catch_75
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    :cond_7d
    return v1
.end method

.method public initialize()V
    .registers 9

    const-string v0, "com.coloros.ocs.mediaunit.MediaUnit"

    .line 1
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaUnit:Ljava/lang/Class;

    const-string v0, "com.coloros.ocs.mediaunit.MediaUnitClient"

    .line 2
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    const-string v0, "com.coloros.ocs.base.common.api.OnConnectionSucceedListener"

    .line 3
    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    .line 4
    iget-object v1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaUnit:Ljava/lang/Class;

    if-eqz v1, :cond_6d

    if-nez v0, :cond_23

    goto :goto_6d

    :cond_23
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mClsInited:Z

    .line 6
    :try_start_26
    iget-object v2, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_6d

    const/4 v3, 0x0

    const-string v4, "getMediaClient"

    new-array v5, v0, [Ljava/lang/Class;

    .line 7
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v1, v3, v4, v5, v6}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 8
    iget-object v2, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    iget-object v4, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    aput-object v4, v3, v7

    new-instance v4, Lio/agora/rtc/audio/OppoHardwareEarback$1;

    invoke-direct {v4, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$1;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsMediaClient:Ljava/lang/Class;

    const-string v4, "addOnConnectionSucceedListener"

    new-array v5, v0, [Ljava/lang/Class;

    iget-object v6, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->clsOnConnectionSucceedListener:Ljava/lang/Class;

    aput-object v6, v5, v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v7

    invoke-static {v3, v1, v4, v5, v0}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_64} :catch_65

    goto :goto_6d

    :catch_65
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .registers 2

    iget-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mClsInited:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setHardwareEarbackVolume(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
