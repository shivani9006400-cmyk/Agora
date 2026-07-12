# classes13.dex

.class public Lio/agora/rtc/gl/EglBase14;
.super Lio/agora/rtc/gl/EglBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglBase14$Context;
    }
.end annotation


# static fields
.field private static final CURRENT_SDK_VERSION:I

.field private static final EGLExt_SDK_VERSION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "EglBase14"


# instance fields
.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lio/agora/rtc/gl/EglBase14;->CURRENT_SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglBase14"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lio/agora/rtc/gl/EglBase14;->getEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 5
    invoke-static {v0, p2}, Lio/agora/rtc/gl/EglBase14;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p2

    iput-object p2, p0, Lio/agora/rtc/gl/EglBase14;->eglConfig:Landroid/opengl/EGLConfig;

    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1, v0, p2}, Lio/agora/rtc/gl/EglBase14;->createEglContext(Lio/agora/rtc/gl/EglBase14$Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/gl/EglBase14;->eglContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method public static synthetic access$000()I
    .registers 1

    sget v0, Lio/agora/rtc/gl/EglBase14;->CURRENT_SDK_VERSION:I

    return v0
.end method

.method private checkIsNotReleased()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglConfig:Landroid/opengl/EGLConfig;

    if-eqz v0, :cond_11

    return-void

    .line 2
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This object has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createEglContext(Lio/agora/rtc/gl/EglBase14$Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .registers 9

    if-eqz p0, :cond_13

    .line 1
    invoke-static {p0}, Lio/agora/rtc/gl/EglBase14$Context;->access$100(Lio/agora/rtc/gl/EglBase14$Context;)Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_b

    goto :goto_13

    .line 2
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid sharedContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_6c

    if-nez p0, :cond_1e

    .line 4
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    goto :goto_22

    .line 5
    :cond_1e
    invoke-static {p0}, Lio/agora/rtc/gl/EglBase14$Context;->access$100(Lio/agora/rtc/gl/EglBase14$Context;)Landroid/opengl/EGLContext;

    move-result-object p0

    .line 6
    :goto_22
    sget-object v2, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 7
    :try_start_26
    invoke-static {p1, p2, p0, v1, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 8
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v4

    const/16 v5, 0x3000

    if-eq v4, v5, :cond_44

    new-array v1, v0, [I

    const/16 v4, 0x3098

    aput v4, v1, v3

    const/4 v4, 0x1

    aput v0, v1, v4

    const/4 v0, 0x2

    const/16 v4, 0x3038

    aput v4, v1, v0

    .line 9
    invoke-static {p1, p2, p0, v1, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 10
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_69

    .line 11
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, p0, :cond_4a

    return-object v1

    .line 12
    :cond_4a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create EGL context: 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_69
    move-exception p0

    .line 14
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0

    :array_6c
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createSurfaceInternal(Ljava/lang/Object;)V
    .registers 6

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_11

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input must be either a Surface or SurfaceTexture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_11
    :goto_11
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase14;->checkIsNotReleased()V

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_52

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 5
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase14;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_33

    return-void

    .line 7
    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create window surface: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Already has an EGLSurface"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .registers 12

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    move-object v7, v0

    .line 1
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x0

    aget p1, v0, p0

    if-lez p1, :cond_25

    aget-object p0, v9, p0

    if-eqz p0, :cond_1d

    return-object p0

    .line 2
    :cond_1d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglChooseConfig returned null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_25
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to find any matching EGL config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglChooseConfig failed: 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getEglDisplay()Landroid/opengl/EGLDisplay;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 2
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_33

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object v1

    .line 4
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to initialize EGL14: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get EGL14 display: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isEGL14Supported()Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lio/agora/rtc/gl/EglBase14;->CURRENT_SDK_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". isEGL14Supported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x12

    if-lt v1, v4, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "EglBase14"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return v2
.end method


# virtual methods
.method public createDummyPbufferSurface()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lio/agora/rtc/gl/EglBase14;->createPbufferSurface(II)V

    return-void
.end method

.method public createPbufferSurface(II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase14;->checkIsNotReleased()V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3056

    aput v3, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase14;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    .line 5
    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create pixel buffer surface with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_61
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Already has an EGLSurface"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglBase14;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createSurface(Landroid/view/Surface;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglBase14;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public detachCurrent()V
    .registers 5

    .line 1
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglDetachCurrent failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_30
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public bridge synthetic getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->getEglBaseContext()Lio/agora/rtc/gl/EglBase14$Context;

    move-result-object v0

    return-object v0
.end method

.method public getEglBaseContext()Lio/agora/rtc/gl/EglBase14$Context;
    .registers 3

    .line 2
    new-instance v0, Lio/agora/rtc/gl/EglBase14$Context;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglContext:Landroid/opengl/EGLContext;

    invoke-direct {v0, v1}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0
.end method

.method public hasSurface()Z
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_e

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public makeCurrent()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase14;->checkIsNotReleased()V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_c
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase14;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_39
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1

    .line 9
    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t make current"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglBase14"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase14;->checkIsNotReleased()V

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->releaseSurface()V

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->detachCurrent()V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase14;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 6
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 7
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglContext:Landroid/opengl/EGLContext;

    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglConfig:Landroid/opengl/EGLConfig;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release done, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseSurface()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    :cond_11
    return-void
.end method

.method public surfaceHeight()I
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3056

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget v0, v0, v4

    return v0
.end method

.method public surfaceWidth()I
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3057

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget v0, v0, v4

    return v0
.end method

.method public swapBuffers()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase14;->checkIsNotReleased()V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_c
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1

    .line 6
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t swap buffers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapBuffers(J)V
    .registers 6

    .line 7
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase14;->checkIsNotReleased()V

    .line 8
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase14;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_c
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 11
    iget-object p1, p0, Lio/agora/rtc/gl/EglBase14;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lio/agora/rtc/gl/EglBase14;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw p1

    .line 13
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No EGLSurface - can\'t swap buffers"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
