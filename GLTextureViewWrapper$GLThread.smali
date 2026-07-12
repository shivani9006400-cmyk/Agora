# classes13.dex

.class Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureViewWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWidth:I

    .line 5
    iput v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHeight:I

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestRender:Z

    .line 7
    iput v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderMode:I

    .line 8
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$1302(Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    .line 3
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1b
    const/4 v14, 0x0

    .line 4
    :goto_1c
    :try_start_1c
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_206

    .line 5
    :goto_21
    :try_start_21
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_36

    .line 6
    monitor-exit v15
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_203

    .line 7
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 8
    :try_start_2b
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglSurfaceLocked()V

    .line 9
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglContextLocked()V

    .line 10
    monitor-exit v2

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    throw v0

    .line 11
    :cond_36
    :try_start_36
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 12
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto/16 :goto_14e

    .line 13
    :cond_4b
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_5b

    .line 14
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mPaused:Z

    .line 15
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    .line 16
    :goto_5c
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_6a

    .line 17
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglSurfaceLocked()V

    .line 18
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_6a
    if-eqz v3, :cond_73

    .line 20
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglSurfaceLocked()V

    .line 21
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_73
    if-eqz v0, :cond_7c

    .line 22
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_7c

    .line 23
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglSurfaceLocked()V

    :cond_7c
    if-eqz v0, :cond_a1

    .line 24
    iget-boolean v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_a1

    .line 25
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-nez v2, :cond_8e

    const/4 v2, 0x0

    goto :goto_92

    .line 26
    :cond_8e
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1100(Lio/agora/rtc/video/GLTextureViewWrapper;)Z

    move-result v2

    :goto_92
    if-eqz v2, :cond_9e

    .line 27
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 28
    :cond_9e
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglContextLocked()V

    :cond_a1
    if-eqz v0, :cond_b2

    .line 29
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 30
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->finish()V

    .line 31
    :cond_b2
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHasSurface:Z

    if-nez v0, :cond_ce

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_ce

    .line 32
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c1

    .line 33
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglSurfaceLocked()V

    :cond_c1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSurfaceIsBad:Z

    .line 36
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 37
    :cond_ce
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_e0

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_e0

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWaitingForSurface:Z

    .line 39
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_e0
    if-eqz v4, :cond_ee

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderComplete:Z

    .line 41
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 42
    :cond_ee
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 43
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_120

    if-eqz v5, :cond_fc

    const/4 v5, 0x0

    goto :goto_120

    .line 44
    :cond_fc
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->tryAcquireEglContextLocked(Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;)Z

    move-result v0
    :try_end_104
    .catchall {:try_start_36 .. :try_end_104} :catchall_203

    if-eqz v0, :cond_120

    .line 45
    :try_start_106
    iget-object v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->start()V
    :try_end_10b
    .catch Ljava/lang/RuntimeException; {:try_start_106 .. :try_end_10b} :catch_117
    .catchall {:try_start_106 .. :try_end_10b} :catchall_203

    const/4 v0, 0x1

    .line 46
    :try_start_10c
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    .line 47
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_120

    :catch_117
    move-exception v0

    .line 48
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->releaseEglContextLocked(Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;)V

    .line 49
    throw v0

    .line 50
    :cond_120
    :goto_120
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_12e

    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_12e

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 52
    :cond_12e
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1f9

    .line 53
    iget-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_144

    .line 54
    iget v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWidth:I

    .line 55
    iget v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHeight:I

    const/4 v8, 0x0

    .line 56
    iput-boolean v8, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSizeChanged:Z

    move v11, v0

    move v12, v2

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_145

    :cond_144
    const/4 v0, 0x0

    .line 57
    :goto_145
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestRender:Z

    .line 58
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 59
    :goto_14e
    monitor-exit v15
    :try_end_14f
    .catchall {:try_start_10c .. :try_end_14f} :catchall_203

    if-eqz v14, :cond_156

    .line 60
    :try_start_151
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1b

    :cond_156
    if-eqz v8, :cond_176

    .line 61
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->createSurface()Z

    move-result v2

    if-nez v2, :cond_175

    .line 62
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_165
    .catchall {:try_start_151 .. :try_end_165} :catchall_206

    const/4 v15, 0x1

    .line 63
    :try_start_166
    iput-boolean v15, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSurfaceIsBad:Z

    .line 64
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v2

    goto/16 :goto_1c

    :catchall_172
    move-exception v0

    monitor-exit v2
    :try_end_174
    .catchall {:try_start_166 .. :try_end_174} :catchall_172

    :try_start_174
    throw v0

    :cond_175
    const/4 v8, 0x0

    :cond_176
    if-eqz v9, :cond_189

    .line 66
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 67
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v9, 0x0

    :cond_189
    if-eqz v7, :cond_1a1

    .line 68
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-eqz v2, :cond_1a0

    .line 69
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1200(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;

    move-result-object v2

    iget-object v7, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    iget-object v7, v7, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v6, v7}, Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_1a0
    const/4 v7, 0x0

    :cond_1a1
    if-eqz v10, :cond_1b5

    .line 70
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-eqz v2, :cond_1b4

    .line 71
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1200(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;

    move-result-object v2

    invoke-interface {v2, v6, v11, v12}, Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_1b4
    const/4 v10, 0x0

    .line 72
    :cond_1b5
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-eqz v2, :cond_1c6

    .line 73
    invoke-static {v2}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1200(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;

    move-result-object v2

    invoke-interface {v2, v6}, Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 74
    :cond_1c6
    iget-object v2, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v2}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->swap()I

    move-result v2

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1f2

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1ef

    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    .line 75
    invoke-static {v15, v0, v2}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_1e0
    .catchall {:try_start_174 .. :try_end_1e0} :catchall_206

    const/4 v0, 0x1

    .line 77
    :try_start_1e1
    iput-boolean v0, v1, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSurfaceIsBad:Z

    .line 78
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 79
    monitor-exit v2

    goto :goto_1f3

    :catchall_1ec
    move-exception v0

    monitor-exit v2
    :try_end_1ee
    .catchall {:try_start_1e1 .. :try_end_1ee} :catchall_1ec

    :try_start_1ee
    throw v0
    :try_end_1ef
    .catchall {:try_start_1ee .. :try_end_1ef} :catchall_206

    :cond_1ef
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1f3

    :cond_1f2
    const/4 v0, 0x1

    :goto_1f3
    if-eqz v13, :cond_1f6

    const/4 v4, 0x1

    :cond_1f6
    const/4 v0, 0x0

    goto/16 :goto_1c

    .line 80
    :cond_1f9
    :try_start_1f9
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_21

    :catchall_203
    move-exception v0

    .line 81
    monitor-exit v15
    :try_end_205
    .catchall {:try_start_1f9 .. :try_end_205} :catchall_203

    :try_start_205
    throw v0
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_206

    :catchall_206
    move-exception v0

    .line 82
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 83
    :try_start_20c
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglSurfaceLocked()V

    .line 84
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->stopEglContextLocked()V

    .line 85
    monitor-exit v2
    :try_end_213
    .catchall {:try_start_20c .. :try_end_213} :catchall_214

    .line 86
    throw v0

    :catchall_214
    move-exception v0

    .line 87
    :try_start_215
    monitor-exit v2
    :try_end_216
    .catchall {:try_start_215 .. :try_end_216} :catchall_214

    throw v0
.end method

.method private readyToDraw()Z
    .registers 3

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHeight:I

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method private stopEglContextLocked()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    .line 4
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->releaseEglContextLocked(Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;)V

    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEglHelper:Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->destroySurface()V

    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getRenderMode()I
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_5
    iget v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_6
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestPaused:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_f
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 5
    :try_start_17
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 6
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 7
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_6
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestRender:Z

    .line 4
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderComplete:Z

    .line 5
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_14
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mPaused:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderComplete:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_32

    if-nez v1, :cond_30

    .line 7
    :try_start_20
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_32

    goto :goto_14

    .line 8
    :catch_28
    :try_start_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_14

    .line 9
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onWindowResize(II)V
    .registers 4

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_5
    iput p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWidth:I

    .line 3
    iput p2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mSizeChanged:Z

    .line 5
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderComplete:Z

    .line 7
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :goto_18
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z

    if-nez p1, :cond_3a

    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mPaused:Z

    if-nez p1, :cond_3a

    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_3a

    .line 9
    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3c

    if-eqz p1, :cond_3a

    .line 10
    :try_start_2a
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_31} :catch_32
    .catchall {:try_start_2a .. :try_end_31} :catchall_3c

    goto :goto_18

    .line 11
    :catch_32
    :try_start_32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_18

    .line 12
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_18

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_7
    iget-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1

    .line 5
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_6
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mShouldExit:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_f
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_25

    if-nez v1, :cond_23

    .line 5
    :try_start_13
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_25

    goto :goto_f

    .line 6
    :catch_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 7
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mShouldReleaseEglContext:Z

    .line 2
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_6
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRequestRender:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_18
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->guardedRun()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_23

    .line 3
    :catch_1b
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->threadExiting(Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;)V

    goto :goto_2c

    :catchall_23
    move-exception v0

    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;->threadExiting(Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;)V

    .line 4
    throw v0

    :goto_2c
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    if-ltz p1, :cond_18

    const/4 v0, 0x1

    if-gt p1, v0, :cond_18

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_a
    iput p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mRenderMode:I

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p1

    .line 5
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_6
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHasSurface:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_f
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 5
    :try_start_17
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 6
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 7
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public surfaceDestroyed()V
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_6
    iput-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mHasSurface:Z

    .line 3
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_f
    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 5
    :try_start_17
    invoke-static {}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$1000()Lio/agora/rtc/video/GLTextureViewWrapper$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 6
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 7
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1
.end method
