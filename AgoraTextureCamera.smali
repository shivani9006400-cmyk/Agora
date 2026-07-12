# classes13.dex

.class public Lio/agora/rtc/mediaio/AgoraTextureCamera;
.super Lio/agora/rtc/mediaio/TextureSource;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgoraTextureCamera"


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private info:Landroid/hardware/Camera$CameraInfo;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2, p3}, Lio/agora/rtc/mediaio/TextureSource;-><init>(Lio/agora/rtc/gl/EglBase$Context;II)V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p2, p3, p4}, Lio/agora/rtc/mediaio/TextureSource;-><init>(Lio/agora/rtc/gl/EglBase$Context;IIZ)V

    .line 4
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDeviceOrientation()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_25

    :cond_1d
    const/16 v0, 0x10e

    goto :goto_25

    :cond_20
    const/16 v0, 0xb4

    goto :goto_25

    :cond_23
    const/16 v0, 0x5a

    :goto_25
    return v0
.end method

.method private getFrameOrientation()I
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraTextureCamera;->getDeviceOrientation()I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->info:Landroid/hardware/Camera$CameraInfo;

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_c

    rsub-int v0, v0, 0x168

    .line 3
    :cond_c
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private openCamera()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_ad

    .line 2
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->info:Landroid/hardware/Camera$CameraInfo;

    .line 3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x1

    if-ge v2, v0, :cond_29

    .line 4
    iget-object v4, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v2, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget-object v4, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->info:Landroid/hardware/Camera$CameraInfo;

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v3, :cond_26

    .line 6
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    goto :goto_29

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 7
    :cond_29
    :goto_29
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_3a

    .line 8
    sget-object v0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->TAG:Ljava/lang/String;

    const-string v2, "No front-facing camera found; opening default"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    .line 10
    :cond_3a
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_a5

    .line 11
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v1, v4, v1

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v3

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 16
    iget v1, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    iget v2, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 17
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 18
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 19
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Lio/agora/rtc/mediaio/AgoraTextureCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_a5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_ad
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "camera already initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseCamera()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_23

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    .line 3
    :try_start_8
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_15

    .line 4
    :catch_e
    sget-object v1, Lio/agora/rtc/mediaio/AgoraTextureCamera;->TAG:Ljava/lang/String;

    const-string v2, "failed to set Preview Texture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_15
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 6
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    .line 7
    sget-object v0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->TAG:Ljava/lang/String;

    const-string v1, "releaseCamera -- done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method


# virtual methods
.method public onCapturerClosed()V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraTextureCamera;->releaseCamera()V

    return-void
.end method

.method public onCapturerOpened()Z
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraTextureCamera;->openCamera()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    const/4 v0, 0x1

    return v0

    .line 4
    :catch_13
    sget-object v0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->TAG:Ljava/lang/String;

    const-string v1, "initialize: failed to initalize camera device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onCapturerStarted()Z
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCapturerStopped()V
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    return-void
.end method

.method public onTextureFrameAvailable(ILio/agora/rtc/mediaio/MediaIO$PixelFormat;[FJ)V
    .registers 15

    .line 8
    invoke-super/range {p0 .. p5}, Lio/agora/rtc/mediaio/TextureSource;->onTextureFrameAvailable(ILio/agora/rtc/mediaio/MediaIO$PixelFormat;[FJ)V

    .line 9
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraTextureCamera;->getFrameOrientation()I

    move-result v5

    .line 10
    iget-object p4, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->info:Landroid/hardware/Camera$CameraInfo;

    iget p4, p4, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 p5, 0x1

    if-ne p4, p5, :cond_16

    .line 11
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object p4

    invoke-static {p3, p4}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p3

    :cond_16
    move-object v8, p3

    .line 12
    iget-object p3, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_34

    .line 13
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    if-eqz v0, :cond_34

    .line 14
    invoke-virtual {p2}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v2

    iget v3, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    iget v4, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v1, p1

    invoke-interface/range {v0 .. v8}, Lio/agora/rtc/mediaio/IVideoFrameConsumer;->consumeTextureFrame(IIIIIJ[F)V

    :cond_34
    return-void
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .registers 14

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/agora/rtc/mediaio/TextureSource;->onTextureFrameAvailable(I[FJ)V

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraTextureCamera;->getFrameOrientation()I

    move-result v5

    .line 3
    iget-object p3, p0, Lio/agora/rtc/mediaio/AgoraTextureCamera;->info:Landroid/hardware/Camera$CameraInfo;

    iget p3, p3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_16

    .line 4
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object p3

    invoke-static {p2, p3}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    :cond_16
    move-object v8, p2

    .line 5
    iget-object p2, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_36

    .line 6
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    if-eqz v0, :cond_36

    .line 7
    sget-object p2, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {p2}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v2

    iget v3, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    iget v4, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v1, p1

    invoke-interface/range {v0 .. v8}, Lio/agora/rtc/mediaio/IVideoFrameConsumer;->consumeTextureFrame(IIIIIJ[F)V

    :cond_36
    return-void
.end method
