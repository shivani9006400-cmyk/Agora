# classes13.dex

.class public Lio/agora/rtc/video/ViETextureViewWrapper;
.super Lio/agora/rtc/video/GLTextureViewWrapper;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;
.implements Lio/agora/rtc/video/GLRendererController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/ViETextureViewWrapper$ConfigChooser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "ViETextureViewWrapper"


# instance fields
.field private mLastRotation:I

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeGLPragram:I

.field private nativeGLResourceUpdated:Z

.field private nativeGLTextureId:[I

.field private nativeObject:J

.field private nativeOesGLProgram:I

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/TextureView;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/GLTextureViewWrapper;-><init>(Landroid/view/TextureView;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->surfaceCreated:Z

    .line 3
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->openGLCreated:Z

    .line 4
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionsRegisted:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    .line 7
    iput p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->viewWidth:I

    .line 8
    iput p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->viewHeight:I

    .line 9
    iput p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLPragram:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_36

    iput-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLTextureId:[I

    .line 11
    iput p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeOesGLProgram:I

    .line 12
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLResourceUpdated:Z

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->mLastRotation:I

    .line 14
    new-instance v0, Lio/agora/rtc/video/TextureRendererHelper;

    invoke-direct {v0}, Lio/agora/rtc/video/TextureRendererHelper;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    .line 15
    invoke-direct {p0, p1, p1, p1}, Lio/agora/rtc/video/ViETextureViewWrapper;->init(ZII)V

    return-void

    nop

    :array_36
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method private native DrawNativeTexture(JIIIIIJJZ)V
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 3
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private native OnCfgChangedNative(JI)V
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .registers 2

    const-class v0, Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/agora/rtc/video/ViETextureViewWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Lio/agora/rtc/video/ViETextureViewWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->surfaceCreated:Z

    return p1
.end method

.method public static synthetic access$200(Lio/agora/rtc/video/ViETextureViewWrapper;)Lio/agora/rtc/video/TextureRendererHelper;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtc/video/ViETextureViewWrapper;)I
    .registers 1

    iget p0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLPragram:I

    return p0
.end method

.method public static synthetic access$400(Lio/agora/rtc/video/ViETextureViewWrapper;)[I
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLTextureId:[I

    return-object p0
.end method

.method public static synthetic access$500(Lio/agora/rtc/video/ViETextureViewWrapper;)I
    .registers 1

    iget p0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeOesGLProgram:I

    return p0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 7

    .line 1
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_29

    .line 2
    :try_start_8
    sget-object v1, Lio/agora/rtc/video/ViETextureViewWrapper;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_0

    :catch_21
    const-string v0, "AGORA_SDK"

    const-string v1, "egl error!!, video may not displayed!!"

    .line 3
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_29
    return-void
.end method

.method private checkOrientation()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3
    :try_start_22
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_26} :catch_27

    return v0

    .line 4
    :catch_27
    sget-object v0, Lio/agora/rtc/video/ViETextureViewWrapper;->TAG:Ljava/lang/String;

    const-string v1, "checkOrientation display getRotation throwout exception"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->mLastRotation:I

    return v0

    .line 6
    :cond_31
    iget v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->mLastRotation:I

    return v0
.end method

.method private init(ZII)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {v0, v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->setEGLContextClientVersion(I)V

    .line 2
    new-instance v8, Lio/agora/rtc/video/ViETextureViewWrapper$ConfigChooser;

    if-eqz p1, :cond_1b

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, v8

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lio/agora/rtc/video/ViETextureViewWrapper$ConfigChooser;-><init>(IIIIII)V

    goto :goto_27

    :cond_1b
    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x0

    move-object v9, v8

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lio/agora/rtc/video/ViETextureViewWrapper$ConfigChooser;-><init>(IIIIII)V

    :goto_27
    invoke-virtual {v0, v8}, Lio/agora/rtc/video/GLTextureViewWrapper;->setEGLConfigChooser(Lio/agora/rtc/video/GLTextureViewWrapper$EGLConfigChooser;)V

    .line 3
    invoke-virtual {v0, v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->setRenderer(Lio/agora/rtc/video/GLTextureViewWrapper$Renderer;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->setRenderMode(I)V

    return-void
.end method

.method private updateOrientation()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/ViETextureViewWrapper;->checkOrientation()I

    move-result v0

    .line 2
    iget v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->mLastRotation:I

    if-eq v0, v1, :cond_1d

    .line 3
    iget-object v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    iget-boolean v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionsRegisted:Z

    if-eqz v1, :cond_16

    .line 5
    iget-wide v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/video/ViETextureViewWrapper;->OnCfgChangedNative(JI)V

    .line 6
    :cond_16
    iput v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->mLastRotation:I

    .line 7
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionsRegisted:Z

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->openGLCreated:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/video/ViETextureViewWrapper;->releaseOpenGLResource()V

    return-void
.end method

.method public GetAPILevel()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public ReDraw()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->surfaceCreated:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/GLTextureViewWrapper;->requestRender()V

    :cond_7
    return-void
.end method

.method public RegisterNativeObject(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iput-wide p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionsRegisted:Z

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public UpdateOpenGLResource([I)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    iput v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLPragram:I

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    .line 2
    iget-object v2, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLTextureId:[I

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v3

    aput v4, v2, v1

    move v1, v3

    goto :goto_6

    :cond_13
    const/4 v1, 0x4

    .line 3
    aget v1, p1, v1

    iput v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeOesGLProgram:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLResourceUpdated:Z

    .line 5
    sget-object v3, Lio/agora/rtc/video/ViETextureViewWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateOpenGLResource, program = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " texture[0~2] = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deliverVideoTextureFrame(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJZ)V
    .registers 19

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/agora/rtc/video/TextureRendererHelper;->setTextureSourceIncoming(Z)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_8
    iget-object v3, v1, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lio/agora/rtc/video/TextureRendererHelper;->onTextureFrameArrived(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJZ)V

    .line 4
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public doDrawFrame(Z)V
    .registers 15

    if-eqz p1, :cond_2c

    .line 1
    :try_start_2
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0, p0}, Lio/agora/rtc/video/TextureRendererHelper;->onDrawFrame(Lio/agora/rtc/video/GLRendererController;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_23

    :catch_8
    move-exception v0

    .line 2
    sget-object v1, Lio/agora/rtc/video/ViETextureViewWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawFrame Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_23
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 4
    :cond_2c
    invoke-direct {p0}, Lio/agora/rtc/video/ViETextureViewWrapper;->updateOrientation()V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    iget-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_82

    iget-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->surfaceCreated:Z

    if-nez v0, :cond_3d

    goto :goto_82

    .line 7
    :cond_3d
    iget-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->openGLCreated:Z

    if-nez v0, :cond_56

    .line 8
    iget-wide v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    iget v2, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->viewWidth:I

    iget v3, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->viewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/video/ViETextureViewWrapper;->CreateOpenGLNative(JII)I

    move-result v0

    if-eqz v0, :cond_53

    .line 9
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_53
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->openGLCreated:Z

    :cond_56
    if-eqz p1, :cond_77

    .line 11
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->getTextureFrame()Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 12
    iget-wide v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    iget v3, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->textureType:I

    iget v4, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->texId:I

    iget v5, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->frameWidth:I

    iget v6, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->frameHeight:I

    iget v7, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->rotation:I

    iget-wide v8, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->renderMs:J

    iget-wide v10, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->firstRecvTimestamp:J

    iget-boolean v12, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->isDummy:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/agora/rtc/video/ViETextureViewWrapper;->DrawNativeTexture(JIIIIIJJZ)V

    goto :goto_7c

    .line 13
    :cond_77
    iget-wide v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/video/ViETextureViewWrapper;->DrawNative(J)V

    .line 14
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 15
    :cond_82
    :goto_82
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->isTextureSourceIncoming()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2
    monitor-enter p0

    const/4 p1, 0x1

    .line 3
    :try_start_a
    invoke-virtual {p0, p1}, Lio/agora/rtc/video/ViETextureViewWrapper;->doDrawFrame(Z)V

    .line 4
    monitor-exit p0

    goto :goto_16

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lio/agora/rtc/video/ViETextureViewWrapper;->doDrawFrame(Z)V

    :goto_16
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->isTextureSourceIncoming()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1, p0}, Lio/agora/rtc/video/TextureRendererHelper;->onFrameAvailable(Lio/agora/rtc/video/GLRendererController;)V

    :cond_d
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->surfaceCreated:Z

    .line 2
    iput p2, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->viewWidth:I

    .line 3
    iput p3, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->viewHeight:I

    .line 4
    monitor-enter p0

    .line 5
    :try_start_8
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0, p0, p2, p3}, Lio/agora/rtc/video/TextureRendererHelper;->onSurfaceChanged(Lio/agora/rtc/video/GLRendererController;II)V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_60

    const-string v0, "AGORA_SDK"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed to width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_3b
    iget-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_49

    .line 12
    iget-wide v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lio/agora/rtc/video/ViETextureViewWrapper;->CreateOpenGLNative(JII)I

    move-result p2

    if-nez p2, :cond_49

    .line 13
    iput-boolean p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->openGLCreated:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_51
    .catchall {:try_start_3b .. :try_end_49} :catchall_4f

    .line 14
    :cond_49
    :goto_49
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_59

    :catchall_4f
    move-exception p1

    goto :goto_5a

    :catch_51
    :try_start_51
    const-string p1, "AGORA_SDK"

    const-string p2, "Exception occurs when create RtcEngine"

    .line 15
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4f

    goto :goto_49

    :goto_59
    return-void

    .line 16
    :goto_5a
    iget-object p2, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    throw p1

    :catchall_60
    move-exception p1

    .line 18
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    return-void
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2

    return-void
.end method

.method public reDrawJavaI420(Lio/agora/rtc/gl/VideoFrame$I420Buffer;IJ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/rtc/video/TextureRendererHelper;->setTextureSourceIncoming(Z)V

    .line 2
    invoke-static {p1, p2, p3, p4}, Lio/agora/rtc/video/AgoraVideoDebugger;->onI420Buffer(Lio/agora/rtc/gl/VideoFrame$I420Buffer;IJ)V

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/video/ViETextureViewWrapper;->ReDraw()V

    return-void
.end method

.method public reDrawNativeI420()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/rtc/video/TextureRendererHelper;->setTextureSourceIncoming(Z)V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/ViETextureViewWrapper;->ReDraw()V

    return-void
.end method

.method public releaseOpenGLResource()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLResourceUpdated:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Lio/agora/rtc/video/ViETextureViewWrapper$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViETextureViewWrapper$2;-><init>(Lio/agora/rtc/video/ViETextureViewWrapper;)V

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->nativeGLResourceUpdated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 1
    new-instance v0, Lio/agora/rtc/video/ViETextureViewWrapper$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViETextureViewWrapper$1;-><init>(Lio/agora/rtc/video/ViETextureViewWrapper;)V

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->queueEvent(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/video/GLTextureViewWrapper;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public textureRenderThreadWillExit()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lio/agora/rtc/video/ViETextureViewWrapper;->TAG:Ljava/lang/String;

    const-string v1, "texture render thread will exit"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseProducerResourceIfNotYet()V

    .line 4
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
