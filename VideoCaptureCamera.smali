# classes13.dex

.class public Lio/agora/rtc/video/VideoCaptureCamera;
.super Lio/agora/rtc/video/VideoCapture;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# static fields
.field private static final CAMERA_ALLOCATE_TIMEOUT_MS:I = 0x1770

.field private static final CAMERA_OPEN_REQUEST_INTERVAL:J = 0x7d0L

.field private static final NUM_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CAMERA1"

.field private static final VERBOSE:Z = false


# instance fields
.field private distanceArray:[I

.field private faceDetectEnabled:Z

.field private isCaptureRunning:Z

.field private isCaptureStarted:Z

.field private isFaceDetectionStarted:Z

.field private isSurfaceReady:Z

.field private volatile mAllocated:I

.field private mAntiBandingMode:Ljava/lang/String;

.field public mCamera:Landroid/hardware/Camera;

.field private mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

.field private mCaptureFormat:I

.field private mCaptureFps:I

.field private mCaptureHeight:I

.field private mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCaptureWidth:I

.field private mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsAutoFaceFocusEnabled:Z

.field private final mIsCameraFacingFront:Z

.field private mObjectLock:Ljava/lang/Object;

.field public mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPreviewHandler:Landroid/os/Handler;

.field private rectArray:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/agora/rtc/video/VideoCapture;-><init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    .line 5
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    .line 6
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isSurfaceReady:Z

    .line 7
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    .line 9
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    .line 10
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFps:I

    const/16 p3, 0x11

    .line 11
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    const/4 p3, 0x0

    .line 12
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    .line 13
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    .line 14
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mObjectLock:Ljava/lang/Object;

    .line 15
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    .line 16
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 17
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->distanceArray:[I

    .line 18
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    const-string p1, "auto"

    .line 19
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 21
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->isCameraFacingFront(I)Z

    move-result p1

    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsCameraFacingFront:Z

    return-void
.end method

.method public static synthetic access$002(Lio/agora/rtc/video/VideoCaptureCamera;I)I
    .registers 2

    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAllocated:I

    return p1
.end method

.method public static synthetic access$100(Lio/agora/rtc/video/VideoCaptureCamera;)I
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->allocate_l()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lio/agora/rtc/video/VideoCaptureCamera;)F
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getMaxZoom_l()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lio/agora/rtc/video/VideoCaptureCamera;Z)I
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setTorchMode_l(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->setFocus_l(FFZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mObjectLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->setExposure_l(FFZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lio/agora/rtc/video/VideoCaptureCamera;III)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->startCapture_l(III)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lio/agora/rtc/video/VideoCaptureCamera;)I
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopCapture_l()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isTorchSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isFocusSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isExposureSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isAutoFaceFocusSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->deallocate_l()V

    return-void
.end method

.method public static synthetic access$2300(Lio/agora/rtc/video/VideoCaptureCamera;I)I
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setAntiBandingMode_l(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2400(Lio/agora/rtc/video/VideoCaptureCamera;I)V
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setExposureCompensation_l(I)V

    return-void
.end method

.method public static synthetic access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    return p0
.end method

.method public static synthetic access$400(Lio/agora/rtc/video/VideoCaptureCamera;[Landroid/hardware/Camera$Face;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->notifyFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method public static synthetic access$500(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .registers 1

    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    return p0
.end method

.method public static synthetic access$600(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$700(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection_l()V

    return-void
.end method

.method public static synthetic access$800(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection_l()V

    return-void
.end method

.method public static synthetic access$900(Lio/agora/rtc/video/VideoCaptureCamera;F)I
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setZoom_l(F)I

    move-result p0

    return p0
.end method

.method private allocate_l()I
    .registers 6

    .line 1
    :try_start_0
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_47

    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, -0x2

    return v0

    .line 5
    :cond_1a
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getCaptureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/agora/rtc/video/VideoCapture;->fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->createCapabilities()I

    .line 7
    :cond_2b
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mCameraNativeOrientation:I

    .line 8
    iget-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3d

    .line 9
    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/video/VideoCapture;->isAutoFaceFocusEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    .line 10
    :cond_3d
    iget-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/video/VideoCapture;->isFaceDetectionEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    const/4 v0, 0x0

    return v0

    :catch_47
    move-exception v0

    const-string v1, "CAMERA1"

    const-string v2, "allocate: Camera.open: "

    .line 11
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method private static calculateTapArea(FFF)Landroid/graphics/Rect;
    .registers 8

    const/high16 v0, 0x43960000  # 300.0f

    mul-float p2, p2, v0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    const/high16 v0, 0x44fa0000  # 2000.0f

    mul-float p0, p0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    sub-float/2addr p0, v1

    float-to-int p0, p0

    mul-float p1, p1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    sub-int v1, p0, p2

    const/16 v2, -0x3e8

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    sub-int v4, p1, p2

    .line 4
    invoke-static {v4, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr p0, p2

    .line 5
    invoke-static {p0, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result p0

    int-to-float p0, p0

    add-int/2addr p1, p2

    .line 6
    invoke-static {p1, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, v4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static clamp(III)I
    .registers 3

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private deallocate_l()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopCapture()I

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_16

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 7
    :cond_16
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .registers 4

    const/4 v0, 0x0

    if-ltz p0, :cond_1d

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_c

    goto :goto_1d

    .line 2
    :cond_c
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 3
    :try_start_11
    invoke-static {p0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception p0

    const-string v1, "CAMERA1"

    const-string v2, "getCameraInfo: Camera.getCameraInfo: "

    .line 4
    invoke-static {v1, v2, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static getCaptureName()Ljava/lang/String;
    .registers 1

    const-string v0, "camera1"

    return-object v0
.end method

.method private getFrameOrientation()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCapture;->checkOrientation()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsCameraFacingFront:Z

    if-nez v1, :cond_a

    rsub-int v0, v0, 0x168

    .line 3
    :cond_a
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->getSensorOrientation(I)I

    move-result v1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method public static getFrontCameraIndex()I
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_a

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :catch_a
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA1"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return v0
.end method

.method private getMaxZoom_l()F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2e

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 5
    :cond_13
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2e

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    return v0

    :cond_2e
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", facing "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_22

    const-string p0, "front"

    goto :goto_24

    :cond_22
    const-string p0, "back"

    :goto_24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberOfCameras()I
    .registers 3

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera1 listCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA1"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getSensorOrientation(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_8
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return p0
.end method

.method private getZoomRatios()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAutoFaceFocusSupported_l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_24

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_24

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_24

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public static isCameraFacingFront(I)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 2
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method private isExposureSupported_l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private isFaceDetectedSupported()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isFocusSupported_l()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "auto"

    invoke-static {v2, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_b

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0
.end method

.method private isTorchSupported_l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private isZoomSupported(Landroid/hardware/Camera$Parameters;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const-string p1, "CAMERA1"

    const-string v1, "camera zoom is not supported "

    .line 5
    invoke-static {p1, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return v0
.end method

.method private isZoomSupported_l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private notifyCameraFocusAreaChanged(Landroid/graphics/Rect;)V
    .registers 9

    .line 1
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 2
    :goto_8
    invoke-static {p1, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 4
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto face focus left ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " top = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " right = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " bottom = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAMERA1"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v5, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    return-void
.end method

.method private notifyFaceDetection([Landroid/hardware/Camera$Face;)V
    .registers 13

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz p1, :cond_32

    .line 3
    array-length v0, p1

    if-lez v0, :cond_32

    .line 4
    array-length v0, p1

    .line 5
    new-array v3, v0, [Landroid/graphics/RectF;

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 6
    new-array v3, v0, [I

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->distanceArray:[I

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_30

    .line 7
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    aget-object v5, p1, v3

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v5, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object v5

    aput-object v5, v4, v3

    .line 8
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->distanceArray:[I

    const/4 v5, 0x5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    move v2, v0

    goto :goto_36

    :cond_32
    new-array p1, v2, [Landroid/graphics/RectF;

    .line 9
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 10
    :goto_36
    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    int-to-long v7, v2

    iget-wide v9, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lio/agora/rtc/video/VideoCapture;->NotifyFaceDetection(II[Landroid/graphics/RectF;JJ)V

    return-void
.end method

.method private setAdvancedCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    const-string v2, "CAMERA1"

    if-eqz v0, :cond_16

    const-string v0, "AgoraVideo set flash mode = FLASH_MODE_OFF"

    .line 2
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4
    :cond_16
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "AgoraVideo set white blance = WHITE_BALANCE_AUTO"

    .line 5
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_2a
    const-string v0, "continuous-video"

    .line 7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "AgoraVideo set Focus mode = FOCUS_MODE_CONTINUOUS_VIDEO"

    .line 8
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 10
    :cond_3e
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AgoraVideo set anti-banding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 14
    :cond_63
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "AgoraVideo set sence mode = auto"

    .line 15
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v1, :cond_7b

    .line 17
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_7b
    return-void
.end method

.method private setAntiBandingMode_l(I)I
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->toCamera1ABMode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, -0x1

    if-nez p1, :cond_c

    return v0

    .line 3
    :cond_c
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_13

    return v0

    .line 4
    :cond_13
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    const-string v3, "CAMERA1"

    if-eqz v2, :cond_55

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgoraVideo set anti-banding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 8
    :try_start_38
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_53

    :catch_3e
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anti banding got exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
    const/4 p1, 0x0

    return p1

    .line 10
    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported anti-banding = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private setDeviceSpecificParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 10

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->buildDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getCpuABI()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getNumberOfCPUCores()I

    move-result v3

    .line 5
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getCPUMaxFreqKHz()I

    move-result v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAMERA1"

    invoke-static {v6, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPU name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cores, arch: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", max Freq: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xiaomi/mi note"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "center-weighted"

    const-string v3, "auto-exposure"

    const-string v4, "skinToneEnhancement"

    if-eqz v1, :cond_7f

    const-string v1, "set MiNote config"

    .line 9
    invoke-static {v6, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scene-detect"

    const-string v5, "on"

    .line 10
    invoke-virtual {p1, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xiaomi-still-beautify-values"

    const-string v5, "i:3"

    .line 11
    invoke-virtual {p1, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enable"

    .line 12
    invoke-virtual {p1, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    const-string v1, "oppo/r7c/r7c"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "set oppo r7c config"

    .line 15
    invoke-static {v6, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v0, 0x64

    const-string v1, "face-beautify"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    return-void
.end method

.method private setExposureCompensation_l(I)V
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_a4

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compensation step="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cur index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v4, :cond_5f

    move p1, v4

    :cond_5f
    if-ge p1, v3, :cond_62

    goto :goto_63

    :cond_62
    move v3, p1

    .line 9
    :goto_63
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 10
    :try_start_66
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_81

    :catch_6c
    move-exception p1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exposure compensation got exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_81
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result p1

    int-to-float v0, p1

    mul-float v2, v2, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur index="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ev="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    return-void
.end method

.method private setExposure_l(FFZ)I
    .registers 13

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExposure called camera api1 x = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CAMERA1"

    invoke-static {v0, p3}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, -0x1

    if-nez p3, :cond_24

    return v1

    :cond_24
    const/4 p3, 0x0

    cmpg-float v2, p1, p3

    if-ltz v2, :cond_9a

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v3, p1, v2

    if-gtz v3, :cond_9a

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_9a

    cmpl-float p3, p2, v2

    if-lez p3, :cond_38

    goto :goto_9a

    :cond_38
    const/high16 p3, 0x3fc00000  # 1.5f

    .line 3
    invoke-static {p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object p3

    .line 4
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_88

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_49

    return v1

    .line 6
    :cond_49
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v3

    if-lez v3, :cond_62

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Landroid/hardware/Camera$Area;

    const/16 v5, 0x320

    invoke-direct {v4, p3, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_67

    :cond_62
    const-string p3, "metering areas not supported"

    .line 10
    invoke-static {v0, p3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_67
    :try_start_67
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 12
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_71} :catch_72

    goto :goto_88

    :catch_72
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setExposure failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 14
    :cond_88
    :goto_88
    iget-wide v7, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v0, 0x0

    cmp-long p3, v7, v0

    if-eqz p3, :cond_98

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 15
    invoke-virtual/range {v2 .. v8}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraExposureAreaChanged(FFFFJ)V

    :cond_98
    const/4 p1, 0x0

    return p1

    :cond_9a
    :goto_9a
    const-string p1, "set exposure unreasonable inputs"

    .line 16
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private setFocus_l(FFZ)I
    .registers 14

    const-string p3, "CAMERA1"

    const-string v0, "setFocus called camera api1"

    .line 1
    invoke-static {p3, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, -0x1

    if-nez p3, :cond_d

    return v0

    :cond_d
    const/4 p3, 0x0

    cmpg-float v1, p1, p3

    if-ltz v1, :cond_eb

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_eb

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_eb

    cmpl-float p3, p2, v1

    if-lez p3, :cond_22

    goto/16 :goto_eb

    .line 3
    :cond_22
    invoke-static {p1, p2, v1}, Lio/agora/rtc/video/VideoCaptureCamera;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object p3

    const/high16 v1, 0x3fc00000  # 1.5f

    .line 4
    invoke-static {p1, p2, v1}, Lio/agora/rtc/video/VideoCaptureCamera;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    :try_start_2c
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_49

    :catch_32
    move-exception v2

    const-string v3, "CAMERA1"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cancle AutoFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_49
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_50

    return v0

    .line 8
    :cond_50
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    const/16 v4, 0x320

    if-lez v3, :cond_69

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v5, Landroid/hardware/Camera$Area;

    invoke-direct {v5, p3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_70

    :cond_69
    const-string p3, "CAMERA1"

    const-string v3, "focus areas not supported"

    .line 12
    invoke-static {p3, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_70
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p3

    if-lez p3, :cond_87

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2, p3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_8e

    :cond_87
    const-string p3, "CAMERA1"

    const-string v1, "metering areas not supported"

    .line 17
    invoke-static {p3, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_8e
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p3

    const-string v1, "macro"

    .line 19
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string v1, "macro"

    .line 20
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_a6
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 23
    monitor-exit v1

    goto :goto_b7

    :catchall_ad
    move-exception p1

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_ad

    throw p1

    :cond_b0
    const-string v1, "focus"

    const-string v2, "FOCUS_MODE_MACRO is not supported"

    .line 24
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_b7
    :try_start_b7
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lio/agora/rtc/video/VideoCaptureCamera$11;

    invoke-direct {v2, p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera$11;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c1} :catch_d3

    .line 26
    iget-wide v8, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v0, 0x0

    cmp-long p3, v8, v0

    if-eqz p3, :cond_d1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 27
    invoke-virtual/range {v3 .. v9}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    :cond_d1
    const/4 p1, 0x0

    return p1

    :catch_d3
    move-exception p1

    const-string p2, "CAMERA1"

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCamera.autoFocus Exception: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_eb
    :goto_eb
    const-string p1, "CAMERA1"

    const-string p2, "set focus unreasonable inputs"

    .line 29
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private setPreviewFrameRateModeFPS(Landroid/hardware/Camera$Parameters;I)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_54

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_39

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v1

    mul-int/lit16 v5, p2, 0x3e8

    if-lt v3, v5, :cond_36

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aget p2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 6
    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ne v2, p2, :cond_57

    sub-int/2addr v2, v4

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aget p2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_57

    .line 8
    :cond_54
    :goto_54
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_57
    :goto_57
    return-void
.end method

.method private setPreviewFrameRateModePQ(Landroid/hardware/Camera$Parameters;I)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    const-string v1, "CAMERA1"

    if-eqz v0, :cond_66

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    goto :goto_66

    .line 3
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedPreviewFrameRates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_45

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v4

    goto :goto_45

    .line 9
    :cond_62
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_6e

    :cond_66
    :goto_66
    const-string v0, "setPreviewFrameRate: camera don\'t supported PQ first."

    .line 10
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/VideoCaptureCamera;->setPreviewFrameRateModeFPS(Landroid/hardware/Camera$Parameters;I)V

    :goto_6e
    return-void
.end method

.method private setTorchMode_l(Z)I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2c

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v2, "torch"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_1e

    .line 5
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_23

    :cond_1e
    const-string p1, "off"

    .line 6
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 7
    :goto_23
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 p1, 0x0

    return p1

    :cond_2a
    const/4 p1, -0x1

    return p1

    :cond_2c
    const/4 p1, -0x2

    return p1
.end method

.method private setZoom_l(F)I
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    return v0

    :cond_7
    const/high16 v1, 0x42c80000  # 100.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_16

    return v0

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p1, v4, :cond_2b

    goto :goto_2f

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2e
    const/4 v3, 0x0

    .line 4
    :goto_2f
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_71

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    const-string v4, "CAMERA1"

    if-le v3, v1, :cond_4b

    const-string p1, "zoom value is larger than maxZoom value"

    .line 8
    invoke-static {v4, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 9
    :cond_4b
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 10
    :try_start_4e
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_71

    :catch_54
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters failed, zoomLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    return v2
.end method

.method private startCapture_l(III)I
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCapture, w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, -0x1

    if-nez v0, :cond_31

    const-string p1, "startCapture: camera is null!!"

    .line 3
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_31
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_3b

    if-ne v0, v4, :cond_61

    .line 5
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera1Tex-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lio/agora/rtc/video/VideoCapture;->mShareContext:Lio/agora/rtc/gl/EglBase$Context;

    const/16 v8, 0x8

    invoke-static {v0, v7, v8}, Lio/agora/rtc/gl/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;I)Lio/agora/rtc/gl/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-nez v0, :cond_63

    const-string v0, "Failed to create SurfaceTextureHelper, force fallback to raw data type"

    .line 6
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput v3, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    :cond_61
    move-object v0, v6

    goto :goto_8c

    .line 8
    :cond_63
    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->startListening(Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 11
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 12
    iget v7, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-ne v7, v4, :cond_8c

    iget-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    if-nez v4, :cond_8c

    .line 13
    new-instance v4, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    invoke-direct {v4, p0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;-><init>(Lio/agora/rtc/video/VideoCapture;)V

    iput-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    .line 14
    :cond_8c
    :goto_8c
    iget v4, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-nez v4, :cond_a5

    .line 15
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_a3

    .line 16
    :try_start_94
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v4, 0x2a

    invoke-direct {v0, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_9d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_94 .. :try_end_9d} :catch_9e

    goto :goto_a3

    :catch_9e
    const-string v0, "failed to create dummy SurfaceTexture!"

    .line 17
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_a5
    if-nez v0, :cond_a9

    :goto_a7
    const/4 v3, -0x1

    goto :goto_c8

    .line 19
    :cond_a9
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 20
    :try_start_ae
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b3} :catch_bb
    .catchall {:try_start_ae .. :try_end_b3} :catchall_b9

    .line 21
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_c8

    :catchall_b9
    move-exception p1

    goto :goto_100

    :catch_bb
    :try_start_bb
    const-string v0, "failed to set preview texture, invalid surfaceTexture!"

    .line 22
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_b9

    .line 24
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_a7

    :goto_c8
    if-eqz v3, :cond_cb

    return v3

    .line 25
    :cond_cb
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 26
    iput-boolean v5, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    .line 27
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    .line 28
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    .line 29
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFps:I

    .line 30
    :try_start_d8
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->tryStartCapture(III)I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_e2

    .line 31
    :goto_dc
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f8

    :catchall_e2
    move-exception p1

    .line 32
    :try_start_e3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "try start capture failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_e3 .. :try_end_f7} :catchall_f9

    goto :goto_dc

    :goto_f8
    return v2

    :catchall_f9
    move-exception p1

    .line 33
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    throw p1

    .line 35
    :goto_100
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    throw p1
.end method

.method private startFaceDetection()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$5;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$5;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private startFaceDetection_l()V
    .registers 5

    const-string v0, "CAMERA1"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v1, "enable face detection"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_32

    :catch_15
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start face detection failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    :goto_32
    return-void
.end method

.method private stopCapture_l()I
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    const-string v1, "CAMERA1"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const-string v0, "already stop capture"

    .line 2
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    const/4 v0, 0x0

    .line 3
    :try_start_e
    iget-boolean v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-eqz v3, :cond_21

    .line 4
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection()V

    .line 5
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v3

    const-string v4, "Failed to stop face detection"

    .line 6
    invoke-static {v1, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_21
    :goto_21
    :try_start_21
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v3

    const-string v4, "Failed to cancle AutoFocus"

    .line 8
    invoke-static {v1, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    iput-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    .line 11
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 12
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 13
    invoke-static {}, Lio/agora/rtc/video/AgoraVideoDebugger;->reset()V

    .line 14
    iput v2, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    .line 15
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    if-eqz v3, :cond_4a

    .line 16
    invoke-virtual {v3}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->reset()V

    .line 17
    :cond_4a
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-eqz v3, :cond_58

    .line 18
    invoke-virtual {v3}, Lio/agora/rtc/gl/SurfaceTextureHelper;->stopListening()V

    .line 19
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v3}, Lio/agora/rtc/gl/SurfaceTextureHelper;->dispose()V

    .line 20
    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    .line 21
    :cond_58
    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 22
    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-eqz v3, :cond_61

    const/4 v4, 0x2

    if-ne v3, v4, :cond_66

    .line 23
    :cond_61
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_66} :catch_68

    :cond_66
    const/4 v0, 0x0

    goto :goto_6f

    :catch_68
    move-exception v0

    const-string v3, "Failed to stop camera"

    .line 24
    invoke-static {v1, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    .line 25
    :goto_6f
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_78

    .line 26
    iput-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    :cond_78
    return v0
.end method

.method private stopFaceDetection()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$6;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$6;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private stopFaceDetection_l()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "CAMERA1"

    const-string v1, "disable face detection"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    return-void
.end method

.method private toCamera1ABMode(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const-string p1, "auto"

    return-object p1

    :cond_b
    const-string p1, "60hz"

    return-object p1

    :cond_e
    const-string p1, "50hz"

    return-object p1

    :cond_11
    const-string p1, "off"

    return-object p1
.end method

.method private tryStartCapture(III)I
    .registers 9

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const-string v1, "CAMERA1"

    if-nez v0, :cond_1e

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Camera not initialized %d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryStartCapture: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frameRate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCaptureRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSurfaceReady: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isSurfaceReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCaptureStarted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", outputDataType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    const/4 v2, 0x0

    if-nez v0, :cond_13e

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    if-nez v0, :cond_75

    goto/16 :goto_13e

    .line 5
    :cond_75
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 7
    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 8
    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mPQFirst:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_91

    const-string v3, "camera1::fps first"

    .line 9
    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, v0, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->setPreviewFrameRateModeFPS(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_99

    :cond_91
    const-string v3, "camera1::PQ first"

    .line 11
    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v0, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->setPreviewFrameRateModePQ(Landroid/hardware/Camera$Parameters;I)V

    .line 13
    :goto_99
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->setAdvancedCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 14
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->setDeviceSpecificParameters(Landroid/hardware/Camera$Parameters;)V

    .line 15
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 16
    iget p3, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-eqz p3, :cond_ae

    const/4 v0, 0x2

    if-ne p3, v0, :cond_ac

    goto :goto_ae

    :cond_ac
    const/4 p1, 0x0

    goto :goto_cf

    :cond_ae
    :goto_ae
    mul-int p1, p1, p2

    .line 17
    iget p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    invoke-static {p2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p2

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    add-int/lit16 p1, p1, 0x1000

    const/4 p2, 0x0

    :goto_bd
    const/4 p3, 0x3

    if-ge p2, p3, :cond_ca

    .line 18
    new-array p3, p1, [B

    .line 19
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_bd

    .line 20
    :cond_ca
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 21
    :goto_cf
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera$2;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera$2;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 22
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 23
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isAutoFaceFocusSupported()Z

    move-result p2

    if-eqz p2, :cond_fa

    .line 24
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera$3;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera$3;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 25
    iget-boolean p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    if-nez p2, :cond_f6

    iget-boolean p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-eqz p2, :cond_111

    .line 26
    :cond_f6
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    goto :goto_111

    .line 27
    :cond_fa
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectedSupported()Z

    move-result p2

    if-eqz p2, :cond_111

    .line 28
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera$4;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera$4;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 29
    iget-boolean p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-eqz p2, :cond_111

    .line 30
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    .line 31
    :cond_111
    :goto_111
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    iput p1, p0, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    .line 33
    iput-boolean v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    .line 34
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Params: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_13e
    :goto_13e
    const-string p1, "tryStartCapture return"

    .line 37
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public UnRegisterNativeHandle()I
    .registers 3

    const-string v0, "CAMERA1"

    const-string v1, "UnRegisterNativeHandle called"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v0, 0x0

    return v0
.end method

.method public allocate()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_21

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera-preview-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_21

    .line 5
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    :cond_21
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAllocated:I

    .line 7
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_44

    .line 8
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    new-instance v2, Lio/agora/rtc/video/VideoCaptureCamera$1;

    invoke-direct {v2, p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1770

    .line 10
    :try_start_3a
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_44
    :goto_44
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAllocated:I

    return v0
.end method

.method public createCapabilities()I
    .registers 13

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_178

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"id\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    move-object v7, v5

    const/4 v6, 0x0

    .line 4
    :goto_27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_85

    .line 5
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v8, v8, Landroid/hardware/Camera$Size;->width:I

    .line 6
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0xf0

    if-lt v8, v10, :cond_82

    if-lt v9, v10, :cond_82

    const/16 v10, 0x140

    if-ge v8, v10, :cond_4a

    if-ge v9, v10, :cond_4a

    goto :goto_82

    .line 7
    :cond_4a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{\"w\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",\"h\":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_81

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_82

    :cond_81
    move-object v7, v8

    :cond_82
    :goto_82
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 10
    :cond_85
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v4

    .line 11
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v6, :cond_9a

    aget-object v6, v6, v1

    const-string v9, "x86"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v6, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v6, 0x0

    .line 12
    :goto_9b
    invoke-static {}, Lio/agora/rtc/video/VideoCapture;->isEmulator()Z

    move-result v9

    if-nez v9, :cond_a9

    if-eqz v6, :cond_b3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_b3

    :cond_a9
    const v6, 0x32315659

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b3
    move-object v9, v5

    const/4 v6, 0x0

    .line 14
    :goto_b5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_f5

    .line 15
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lio/agora/rtc/video/VideoCapture;->translateToEngineFormat(I)I

    move-result v10

    .line 16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-eq v6, v11, :cond_e3

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_f2

    .line 18
    :cond_e3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_f2
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    .line 19
    :cond_f5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    .line 20
    :goto_fa
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_136

    .line 21
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    if-eq v4, v10, :cond_124

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_133

    .line 24
    :cond_124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_133
    add-int/lit8 v4, v4, 0x1

    goto :goto_fa

    .line 25
    :cond_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"resolution\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"format\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"fps\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_179

    :cond_178
    const/4 v0, 0x0

    .line 26
    :goto_179
    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getCaptureName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lio/agora/rtc/video/VideoCapture;->cacheCapability(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public deallocate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$20;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$20;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 3
    :cond_c
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_14
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1f

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    .line 8
    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    :cond_1f
    return-void
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "CAMERA1"

    const-string v2, "getCameraParameters: Camera.getParameters: "

    .line 2
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 5
    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    :cond_19
    return-object v1
.end method

.method public getMaxZoom()F
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$8;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$8;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_14
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public isAutoFaceFocusSupported()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$19;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$19;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isExposureSupported()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$17;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$17;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusSupported()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$16;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$16;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isTorchSupported()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$15;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$15;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomSupported()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$18;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$18;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_41

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-nez v0, :cond_c

    goto :goto_41

    .line 3
    :cond_c
    array-length v0, p1

    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    const-wide/16 v1, 0x0

    if-ne v0, v3, :cond_25

    iget-wide v4, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_25

    .line 4
    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    iget v6, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/video/VideoCapture;->onRawBufferAvailable([BIIII)V

    goto :goto_32

    .line 5
    :cond_25
    iget-wide v3, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_32

    const-string v0, "CAMERA1"

    const-string v1, "warning mNativeVideoCaptureDeviceAndroid = 0, error"

    .line 6
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_50

    :cond_32
    :goto_32
    if-eqz p2, :cond_3b

    .line 7
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-eqz v0, :cond_3b

    .line 8
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 9
    :cond_3b
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_41
    :goto_41
    if-eqz p2, :cond_4a

    .line 10
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-eqz v0, :cond_4a

    .line 11
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 12
    :cond_4a
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_50
    move-exception v0

    if-eqz p2, :cond_5a

    .line 13
    iget-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-eqz v1, :cond_5a

    .line 14
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 15
    :cond_5a
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    throw v0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getFrameOrientation()I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsCameraFacingFront:Z

    if-eqz v0, :cond_10

    .line 3
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v0

    .line 4
    invoke-static {p2, v0}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 5
    :cond_10
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    .line 6
    invoke-static {p2}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object p2

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Lio/agora/rtc/gl/SurfaceTextureHelper;->createTextureBuffer(IILandroid/graphics/Matrix;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p2, p1, p3, p4}, Lio/agora/rtc/video/VideoCapture;->onTextureBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V

    .line 9
    invoke-interface {p2}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public setAntiBandingMode(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$21;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$21;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;I)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public setAutoFaceFocus(Z)I
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoFaceFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 3
    :goto_1e
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isAutoFaceFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_41

    if-eqz v0, :cond_41

    .line 5
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    if-eqz p1, :cond_34

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-nez v0, :cond_34

    .line 6
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    goto :goto_41

    :cond_34
    if-nez p1, :cond_41

    .line 7
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-eqz p1, :cond_41

    .line 8
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-nez p1, :cond_41

    .line 9
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection()V

    :cond_41
    :goto_41
    return v1
.end method

.method public setCaptureFormat(IIZ)I
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " force texture oes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p3, Lio/agora/rtc/video/VideoCapture;->FORCE_TEXTURE_OES:Z

    .line 3
    invoke-static {p2}, Lio/agora/rtc/video/VideoCapture;->translateToCaptureOutputDataType(I)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    .line 4
    invoke-static {p1}, Lio/agora/rtc/video/VideoCapture;->translateToAndroidFormat(I)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    if-nez p2, :cond_4c

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCaptureFormat failed, unkonwn format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_4c
    const/4 p1, 0x0

    return p1
.end method

.method public setEdgeEnhanceMode(I)I
    .registers 3

    const-string p1, "CAMERA1"

    const-string v0, "EdgeEnhancement not supported in camera1 "

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setExposure(FFZ)I
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera$12;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public setExposureCompensation(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$22;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$22;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;I)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public setFaceDetection(Z)I
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceDetection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 3
    :goto_1e
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    .line 4
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectedSupported()Z

    move-result p1

    if-eqz p1, :cond_41

    if-eqz v0, :cond_41

    .line 5
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-eqz p1, :cond_34

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-nez v0, :cond_34

    .line 6
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    goto :goto_41

    :cond_34
    if-nez p1, :cond_41

    .line 7
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-eqz p1, :cond_41

    .line 8
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    if-nez p1, :cond_41

    .line 9
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection()V

    :cond_41
    :goto_41
    return v1
.end method

.method public setFocus(FFZ)I
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera$10;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public setNoiseReductionMode(I)I
    .registers 3

    const-string p1, "CAMERA1"

    const-string v0, "NoiseReduction not supported in camera1 "

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setTorchMode(Z)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$9;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$9;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;Z)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public setVideoStabilityMode(I)I
    .registers 3

    const-string p1, "CAMERA1"

    const-string v0, "VideoStability not supported in camera1 "

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setZoom(F)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$7;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$7;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;F)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public startCapture(III)I
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera$13;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;III)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public stopCapture()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$14;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$14;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_14
    const/4 v0, -0x1

    return v0
.end method
