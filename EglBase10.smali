# classes13.dex

.class public Lio/agora/rtc/gl/EglBase10;
.super Lio/agora/rtc/gl/EglBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglBase10$Context;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final TAG:Ljava/lang/String; = "EglBase10"


# instance fields
.field private final egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase;-><init>()V

    .line 2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

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

    const-string v1, "EglBase10"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase10;->getEglDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 6
    invoke-direct {p0, v0, p2}, Lio/agora/rtc/gl/EglBase10;->getEglConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p2

    iput-object p2, p0, Lio/agora/rtc/gl/EglBase10;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 7
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct {p0, p1, v0, p2}, Lio/agora/rtc/gl/EglBase10;->createEglContext(Lio/agora/rtc/gl/EglBase10$Context;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/gl/EglBase10;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method private checkIsNotReleased()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_11

    return-void

    .line 2
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This object has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEglContext(Lio/agora/rtc/gl/EglBase10$Context;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 9

    if-eqz p1, :cond_13

    .line 1
    invoke-static {p1}, Lio/agora/rtc/gl/EglBase10$Context;->access$000(Lio/agora/rtc/gl/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_b

    goto :goto_13

    .line 2
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid sharedContext"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_74

    if-nez p1, :cond_1e

    .line 4
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_22

    .line 5
    :cond_1e
    invoke-static {p1}, Lio/agora/rtc/gl/EglBase10$Context;->access$000(Lio/agora/rtc/gl/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    .line 6
    :goto_22
    sget-object v2, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_25
    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, p2, p3, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 8
    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_4a

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0x3098

    aput v4, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x2

    const/16 v3, 0x3038

    aput v3, v1, v0

    .line 9
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p2, p3, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 10
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_71

    .line 11
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, p1, :cond_50

    return-object v1

    .line 12
    :cond_50
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create EGL context: 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 13
    invoke-interface {p3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_71
    move-exception p1

    .line 14
    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p1

    :array_74
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createSurfaceInternal(Ljava/lang/Object;)V
    .registers 6

    .line 1
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_11

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input must be either a SurfaceHolder or SurfaceTexture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_11
    :goto_11
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase10;->checkIsNotReleased()V

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 5
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_35

    return-void

    .line 7
    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create window surface: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 8
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_56
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Already has an EGLSurface"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEglConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 11

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    aget p2, v0, p1

    if-lez p2, :cond_24

    aget-object p1, v7, p1

    if-eqz p1, :cond_1c

    return-object p1

    .line 2
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglChooseConfig returned null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_24
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find any matching EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglChooseConfig failed: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEglDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 2
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to initialize EGL10: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get EGL10 display: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 7
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createDummyPbufferSurface()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lio/agora/rtc/gl/EglBase10;->createPbufferSurface(II)V

    return-void
.end method

.method public createPbufferSurface(II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase10;->checkIsNotReleased()V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_65

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    .line 5
    :cond_34
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

    iget-object p1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 6
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Already has an EGLSurface"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglBase10;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createSurface(Landroid/view/Surface;)V
    .registers 3

    .line 1
    new-instance v0, Lio/agora/rtc/gl/EglBase10$1FakeSurfaceHolder;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/gl/EglBase10$1FakeSurfaceHolder;-><init>(Lio/agora/rtc/gl/EglBase10;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglBase10;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public detachCurrent()V
    .registers 6

    .line 1
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglDetachCurrent failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_34
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;
    .registers 3

    new-instance v0, Lio/agora/rtc/gl/EglBase10$Context;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v0, v1}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0
.end method

.method public hasSurface()Z
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_e

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .registers 6

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase10;->checkIsNotReleased()V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_c
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lio/agora/rtc/gl/EglBase10;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 7
    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3d
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw v1

    .line 9
    :cond_40
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

    const-string v1, "EglBase10"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase10;->checkIsNotReleased()V

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->releaseSurface()V

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->detachCurrent()V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 7
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 8
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method public releaseSurface()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_13
    return-void
.end method

.method public surfaceHeight()I
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3056

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public surfaceWidth()I
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3057

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public swapBuffers()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/EglBase10;->checkIsNotReleased()V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_c
    iget-object v1, p0, Lio/agora/rtc/gl/EglBase10;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/gl/EglBase10;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/gl/EglBase10;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v1

    .line 6
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t swap buffers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapBuffers(J)V
    .registers 3

    .line 7
    invoke-virtual {p0}, Lio/agora/rtc/gl/EglBase10;->swapBuffers()V

    return-void
.end method
