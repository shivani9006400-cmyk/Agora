# classes13.dex

.class public Lio/agora/rtc/gl/EglRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;,
        Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;,
        Lio/agora/rtc/gl/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_SURFACE_CLEAR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field private eglBase:Lio/agora/rtc/gl/EglBase;

.field private final eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field private final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lio/agora/rtc/gl/VideoFrame;

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/agora/rtc/gl/VideoFrameDrawer;

    invoke-direct {v0}, Lio/agora/rtc/gl/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglRenderer$1;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglRenderer$1;)V

    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 12
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    return-object p0
.end method

.method public static synthetic access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    return-object p1
.end method

.method public static synthetic access$100(Lio/agora/rtc/gl/EglRenderer;)V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/gl/EglRenderer;->logStatistics()V

    return-void
.end method

.method public static synthetic access$1000(Lio/agora/rtc/gl/EglRenderer;)V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/gl/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method public static synthetic access$1100(Lio/agora/rtc/gl/EglRenderer;FFFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/rtc/gl/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method public static synthetic access$200(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    return-object p0
.end method

.method public static synthetic access$702(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    return-object p1
.end method

.method public static synthetic access$800(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/VideoFrameDrawer;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    return-object p0
.end method

.method public static synthetic access$900(Lio/agora/rtc/gl/EglRenderer;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .registers 8

    if-gtz p3, :cond_5

    const-string p1, "NA"

    goto :goto_1e

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " us"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1e
    return-object p1
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "clearSurface"

    .line 2
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    :cond_1c
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logStatistics()V
    .registers 11

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_7
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsStartTimeNs:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_13

    .line 4
    monitor-exit v2

    return-void

    .line 5
    :cond_13
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    mul-long v5, v5, v7

    long-to-float v5, v5

    long-to-float v6, v3

    div-float/2addr v5, v6

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms. Frames received: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Dropped: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Rendered: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Render fps: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 7
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Average render time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 8
    invoke-direct {p0, v3, v4, v5}, Lio/agora/rtc/gl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Average swapBuffer time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 9
    invoke-direct {p0, v3, v4, v5}, Lio/agora/rtc/gl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-direct {p0, v3}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/gl/EglRenderer;->resetStatistics(J)V

    .line 12
    monitor-exit v2

    return-void

    :catchall_9f
    move-exception v0

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_7 .. :try_end_a1} :catchall_9f

    throw v0
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    .line 3
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method private renderFrameOnRenderThread()V
    .registers 14

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v9, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    if-nez v9, :cond_9

    .line 3
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 5
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f7

    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_ee

    .line 7
    :cond_19
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1c
    iget-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const/4 v10, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_2a

    goto :goto_4e

    :cond_2a
    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    if-gtz v6, :cond_32

    :goto_30
    const/4 v5, 0x1

    goto :goto_4e

    .line 9
    :cond_32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 10
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    cmp-long v6, v1, v3

    if-gez v6, :cond_42

    const-string v1, "Skipping frame rendering - fps reduction is active."

    .line 11
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_4e

    .line 12
    :cond_42
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 13
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    goto :goto_30

    .line 14
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_eb

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 16
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->getRotatedWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->getRotatedHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_61
    iget v2, p0, Lio/agora/rtc/gl/EglRenderer;->layoutAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v0

    .line 19
    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_e8

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v4, v0, v2

    if-lez v4, :cond_75

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_78

    :cond_75
    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    .line 20
    :goto_78
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 21
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f000000  # 0.5f

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    iget-boolean v4, p0, Lio/agora/rtc/gl/EglRenderer;->mirror:Z

    if-eqz v4, :cond_8f

    .line 23
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x40800000  # -1.0f

    invoke-virtual {v4, v6, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 24
    :cond_8f
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 25
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000  # -0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v5, :cond_e4

    .line 26
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 27
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 28
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 29
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->surfaceWidth()I

    move-result v7

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->surfaceHeight()I

    move-result v8

    move-object v2, v9

    .line 30
    invoke-virtual/range {v1 .. v8}, Lio/agora/rtc/gl/VideoFrameDrawer;->drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v2}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 34
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 35
    :try_start_cd
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    add-int/2addr v5, v10

    iput v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 36
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    sub-long v7, v2, v11

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 37
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    sub-long/2addr v2, v0

    add-long/2addr v5, v2

    iput-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 38
    monitor-exit v4

    goto :goto_e4

    :catchall_e1
    move-exception v0

    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_e1

    throw v0

    .line 39
    :cond_e4
    :goto_e4
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void

    :catchall_e8
    move-exception v0

    .line 40
    :try_start_e9
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    :catchall_eb
    move-exception v1

    .line 41
    :try_start_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v1

    :cond_ee
    :goto_ee
    const-string v0, "Dropping frame - No surface"

    .line 42
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void

    :catchall_f7
    move-exception v1

    .line 44
    :try_start_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw v1
.end method

.method private resetStatistics(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsStartTimeNs:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 4
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 5
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 7
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 8
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method


# virtual methods
.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;F)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V
    .registers 12

    .line 3
    new-instance v6, Lio/agora/rtc/gl/EglRenderer$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/gl/EglRenderer$5;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lio/agora/rtc/gl/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .registers 14

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_9
    new-instance v8, Lio/agora/rtc/gl/EglRenderer$9;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/gl/EglRenderer$9;-><init>(Lio/agora/rtc/gl/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .registers 2

    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-virtual {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    return-object v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_4c

    const-string v1, "Initializing EglRenderer"

    .line 3
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 5
    new-instance p3, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EglRenderer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 8
    new-instance p3, Lio/agora/rtc/gl/EglRenderer$2;

    invoke-direct {p3, p0, p1, p2}, Lio/agora/rtc/gl/EglRenderer$2;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase$Context;[I)V

    invoke-static {v1, p3}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 11
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/gl/EglRenderer;->resetStatistics(J)V

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_65
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public onFrame(Lio/agora/rtc/gl/VideoFrame;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget v1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 3
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4e

    .line 4
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_d
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_18

    const-string p1, "Dropping frame - Not initialized or already released."

    .line 6
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 7
    monitor-exit v1

    return-void

    .line 8
    :cond_18
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_4b

    .line 9
    :try_start_1b
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    if-eqz v4, :cond_27

    .line 10
    invoke-virtual {v3}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 11
    :cond_27
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 12
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->retain()V

    .line 13
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_48

    .line 14
    :try_start_2d
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v0, Lio/agora/rtc/gl/EglRenderer$7;

    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglRenderer$7;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    invoke-static {p1, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 15
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_4b

    if-eqz v4, :cond_47

    .line 16
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 17
    :try_start_3d
    iget v0, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 18
    monitor-exit p1

    goto :goto_47

    :catchall_44
    move-exception v0

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    :goto_47
    return-void

    :catchall_48
    move-exception p1

    .line 19
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1

    :catchall_4b
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw p1

    :catchall_4e
    move-exception p1

    .line 21
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public pauseVideo()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public printStackTrace()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_11

    .line 3
    :cond_9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_2f

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 5
    array-length v2, v1

    if-lez v2, :cond_2f

    const-string v2, "EglRenderer stack trace:"

    .line 6
    invoke-direct {p0, v2}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 8
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 9
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public release()V
    .registers 6

    const-string v0, "Releasing."

    .line 1
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_19

    const-string v0, "Already released"

    .line 5
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_19
    new-instance v3, Lio/agora/rtc/gl/EglRenderer$3;

    invoke-direct {v3, p0}, Lio/agora/rtc/gl/EglRenderer$3;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lio/agora/rtc/gl/EglRenderer$4;

    invoke-direct {v4, p0, v2, v0}, Lio/agora/rtc/gl/EglRenderer$4;-><init>(Lio/agora/rtc/gl/EglRenderer;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 12
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_4e

    .line 13
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v2

    .line 14
    :try_start_3b
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    if-eqz v1, :cond_44

    .line 15
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 16
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 17
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4b

    const-string v0, "Releasing done."

    .line 18
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    return-void

    :catchall_4b
    move-exception v0

    .line 19
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    :catchall_4e
    move-exception v0

    .line 20
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_9
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1e

    .line 4
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lio/agora/rtc/gl/EglRenderer$8;

    invoke-direct {v2, p0, p1}, Lio/agora/rtc/gl/EglRenderer$8;-><init>(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_23
    move-exception p1

    .line 9
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public removeFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;)V
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    new-instance v1, Lio/agora/rtc/gl/EglRenderer$6;

    invoke-direct {v1, p0, v0, p1}, Lio/agora/rtc/gl/EglRenderer$6;-><init>(Lio/agora/rtc/gl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lio/agora/rtc/gl/EglRenderer$FrameListener;)V

    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void

    .line 5
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeFrameListener must not be called on the render thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderFrame(Lio/agora/rtc/gl/VideoFrame;)V
    .registers 2

    invoke-virtual {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->onFrame(Lio/agora/rtc/gl/VideoFrame;)V

    return-void
.end method

.method public setFpsReduction(F)V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpsReduction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_17
    iget-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_26

    const-wide v3, 0x7fffffffffffffffL

    .line 4
    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    goto :goto_33

    .line 5
    :cond_26
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, p1

    float-to-long v3, v3

    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 6
    :goto_33
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3f

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 8
    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public setLayoutAspectRatio(F)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_17
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->layoutAspectRatio:F

    .line 4
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public setMirror(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_17
    iput-boolean p1, p0, Lio/agora/rtc/gl/EglRenderer;->mirror:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1b

    throw p1
.end method
