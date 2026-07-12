# classes13.dex

.class Lio/agora/rtc/video/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GLThreadManager"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/video/GLTextureView$1;)V
    .registers 2

    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_7
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_2f

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLESVersion()V

    const/16 v0, 0x1f01

    .line 3
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_26

    const-string v0, "Q3Dimension MSM7500 "

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    :cond_26
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez p1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    iput-boolean v2, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 8
    iput-boolean v3, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 9
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lio/agora/rtc/video/GLTextureView$GLThread;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    invoke-static {p1, v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->access$1102(Lio/agora/rtc/video/GLTextureView$GLThread;Z)Z

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 4
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 5
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tryAcquireEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_19

    if-nez v0, :cond_8

    goto :goto_19

    .line 2
    :cond_8
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 3
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz p1, :cond_10

    return v1

    .line 4
    :cond_10
    iget-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    if-eqz p1, :cond_17

    .line 5
    invoke-virtual {p1}, Lio/agora/rtc/video/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    :cond_17
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_19
    :goto_19
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
