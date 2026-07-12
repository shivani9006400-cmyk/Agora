# classes13.dex

.class public Lio/agora/rtc/video/VideoCaptureCamera2;
.super Lio/agora/rtc/video/VideoCapture;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;,
        Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;,
        Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;,
        Lio/agora/rtc/video/VideoCaptureCamera2$SafeHandler;,
        Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    }
.end annotation


# static fields
.field private static final DEFAULT_MATCH_FPS:I = 0xf

.field private static final DEFAULT_VALUE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "CAMERA2"

.field private static final VERBOSE:Z = false

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static final ZOOM_UNSUPPORTED_DEFAULT_VALUE:F = 1.0f

.field private static final kNanoSecondsToFps:D = 1.0E-9

.field private static usingLibyuv:Z = false


# instance fields
.field private distanceArray:[I

.field private faceDistaneEnabled:Z

.field private mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAfCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mAntiBandingMode:I

.field public mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCameraStateThread:Landroid/os/HandlerThread;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureData:[B

.field private mCaptureFormat:I

.field private mCaptureFps:I

.field private mCaptureHeight:I

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCaptureSessionLock:Ljava/lang/Object;

.field private mCaptureWidth:I

.field private mCurZoomRatio:F

.field private mEdgeEnhanceMode:I

.field private mFaceDetectMode:I

.field private mFaceDetectSupported:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private final mImageReaderLock:Ljava/lang/Object;

.field private mIsAutoFaceFocusEnabled:Z

.field private final mIsCameraFacingFront:Z

.field private mLastZoomRatio:F

.field private mManager:Landroid/hardware/camera2/CameraManager;

.field private mMaxZoom:F

.field private mNoiseReductionMode:I

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewThread:Landroid/os/HandlerThread;

.field private mSensorRect:Landroid/graphics/Rect;

.field private mStateHandler:Landroid/os/Handler;

.field private mTextureOutputSurface:Landroid/view/Surface;

.field private mVideoStabilityMode:I

.field private rectArray:[Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lio/agora/rtc/video/VideoCaptureCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/agora/rtc/video/VideoCapture;-><init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V

    const/4 p3, 0x0

    .line 2
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 5
    sget-object p4, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    iput-object p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 6
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 7
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mStateHandler:Landroid/os/Handler;

    .line 8
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateThread:Landroid/os/HandlerThread;

    .line 9
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    .line 10
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    const/4 p4, -0x1

    .line 11
    iput p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    .line 12
    iput p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    .line 13
    iput p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    const/16 p4, 0x23

    .line 14
    iput p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    .line 16
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->rectArray:[Landroid/graphics/RectF;

    .line 17
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->distanceArray:[I

    .line 18
    iput-boolean p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    .line 19
    sget-object p5, Lio/agora/rtc/video/VideoCaptureCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 p5, -0x40800000  # -1.0f

    .line 20
    iput p5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mLastZoomRatio:F

    const/high16 p6, 0x3f800000  # 1.0f

    .line 21
    iput p6, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCurZoomRatio:F

    .line 22
    iput p5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    .line 23
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    const/4 p5, 0x3

    .line 24
    iput p5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAntiBandingMode:I

    const/4 p5, 0x1

    .line 25
    iput p5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNoiseReductionMode:I

    .line 26
    iput p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mEdgeEnhanceMode:I

    .line 27
    iput p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mVideoStabilityMode:I

    .line 28
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    .line 29
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 30
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReaderLock:Ljava/lang/Object;

    .line 31
    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera2$1;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 32
    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera2$2;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 33
    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera2$3;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$3;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAfCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 34
    invoke-static {p1, p2}, Lio/agora/rtc/video/VideoCaptureCamera2;->isCameraFacingFront(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsCameraFacingFront:Z

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    return-object p0
.end method

.method public static synthetic access$100(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->tryOpenCamera()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->createCaptureRequest()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300()[Landroid/hardware/camera2/params/MeteringRectangle;
    .registers 1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method

.method public static synthetic access$1400(Lio/agora/rtc/video/VideoCaptureCamera2;)Z
    .registers 1

    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    return p0
.end method

.method public static synthetic access$1500(Lio/agora/rtc/video/VideoCaptureCamera2;)Z
    .registers 1

    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    return p0
.end method

.method public static synthetic access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->startNormalPreview()V

    return-void
.end method

.method public static synthetic access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static synthetic access$1702(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method public static synthetic access$1800(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->doStartCapture()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->doStopCapture()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    iget p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    return p0
.end method

.method public static synthetic access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    return-void
.end method

.method public static synthetic access$2100(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureData:[B

    return-object p0
.end method

.method public static synthetic access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/media/ImageReader;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public static synthetic access$2400(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReaderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2500(Landroid/media/Image;[B)V
    .registers 2

    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method public static synthetic access$2600(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    iget p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    return p0
.end method

.method public static synthetic access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .registers 1

    iget p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    return p0
.end method

.method public static synthetic access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->rectArray:[Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->rectArray:[Landroid/graphics/RectF;

    return-object p1
.end method

.method public static synthetic access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)[I
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->distanceArray:[I

    return-object p0
.end method

.method public static synthetic access$502(Lio/agora/rtc/video/VideoCaptureCamera2;[I)[I
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->distanceArray:[I

    return-object p1
.end method

.method public static synthetic access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method public static synthetic access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public static synthetic access$800(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static synthetic access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static synthetic access$902(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method private addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 3
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method private static clamp(III)I
    .registers 3

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static createCapabilities(ILandroid/content/Context;)I
    .registers 15

    .line 1
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string v3, "CAMERA2"

    if-nez v2, :cond_1a

    const-string p0, "Failed to create capabilities"

    .line 3
    invoke-static {v3, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump configuration map:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_37
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x23

    .line 7
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 8
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "SM-G9300"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_76

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 11
    :goto_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_75

    .line 12
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v7, 0x2d0

    if-lt v6, v7, :cond_72

    .line 13
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_75
    move-object v1, v2

    .line 14
    :cond_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"id\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xf

    .line 15
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 16
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-eqz v0, :cond_ec

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    array-length v7, v0

    const/4 v8, 0x0

    :goto_a3
    if-ge v8, v7, :cond_b1

    aget-object v9, v0, v8

    .line 19
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_a3

    .line 20
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_ba
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ba

    .line 23
    :cond_d9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e8

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 25
    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_ec
    const-string v0, ""

    move-object v8, v0

    const/4 v7, 0x0

    .line 26
    :goto_f0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_152

    .line 27
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 28
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v11, 0xf0

    if-lt v9, v11, :cond_14f

    if-lt v10, v11, :cond_14f

    const/16 v11, 0x140

    if-ge v9, v11, :cond_117

    if-ge v10, v11, :cond_117

    goto :goto_14f

    .line 29
    :cond_117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{\"w\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",\"h\":"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 30
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14e

    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_14f

    :cond_14e
    move-object v8, v9

    :cond_14f
    :goto_14f
    add-int/lit8 v7, v7, 0x1

    goto :goto_f0

    .line 32
    :cond_152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCapture;->translateToEngineFormat(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"resolution\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"format\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"fps\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCaptureName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lio/agora/rtc/video/VideoCapture;->cacheCapability(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private createCaptureRequest()I
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_22

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_d} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_d} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_d} :catch_24

    .line 4
    :try_start_d
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_1d

    .line 5
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 6
    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v2

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    :try_start_21
    throw v2
    :try_end_22
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_21 .. :try_end_22} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_22} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_22} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_22} :catch_24

    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0

    :catch_24
    move-exception v0

    const-string v1, "CAMERA2"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0

    :catch_3d
    move-exception v0

    const-string v1, "CAMERA2"

    const-string v2, "setRepeatingRequest: "

    .line 8
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x3

    return v0

    :catch_47
    move-exception v0

    const-string v1, "CAMERA2"

    const-string v2, "setRepeatingRequest: "

    .line 9
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x2

    return v0

    :catch_51
    move-exception v0

    const-string v2, "CAMERA2"

    const-string v3, "setRepeatingRequest: "

    .line 10
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private cropRegionForZoom(F)Landroid/graphics/Rect;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float v2, v2, v3

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 4
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    div-float/2addr v4, p1

    float-to-int p1, v4

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, v0, v2

    sub-int v5, v1, p1

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private doStartCapture()I
    .registers 13

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_10
    const/4 v0, -0x3

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 4
    :try_start_13
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13 .. :try_end_1c} :catch_236
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1c} :catch_22d
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1c} :catch_224

    if-nez v3, :cond_27

    const-string v0, "CAMERA2"

    const-string v1, "mPreviewBuilder error"

    .line 5
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0

    .line 6
    :cond_27
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v5, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v3, v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_110

    .line 7
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Range;

    if-eqz v3, :cond_110

    .line 8
    iget v6, p0, Lio/agora/rtc/video/VideoCapture;->mPQFirst:I

    if-ge v6, v4, :cond_ab

    .line 9
    new-instance v6, Lio/agora/rtc/video/VideoCaptureCamera2$4;

    invoke-direct {v6, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$4;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string v6, "CAMERA2"

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sorted fps Ranges List:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    array-length v6, v3

    const/4 v7, 0x0

    :goto_64
    if-ge v7, v6, :cond_110

    aget-object v8, v3, v7

    .line 12
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    const/16 v11, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-lt v9, v10, :cond_a8

    const-string v3, "CAMERA2"

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set fps :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to camera2::fps first, request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_110

    :cond_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 15
    :cond_ab
    new-instance v6, Lio/agora/rtc/video/VideoCaptureCamera2$5;

    invoke-direct {v6, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$5;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string v6, "CAMERA2"

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sorted fps Ranges List:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    array-length v6, v3

    const/4 v7, 0x0

    :goto_cf
    if-ge v7, v6, :cond_110

    aget-object v8, v3, v7

    .line 18
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    if-lt v9, v10, :cond_10d

    const-string v3, "CAMERA2"

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set fps :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to camera2::PQ first, request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_110

    :cond_10d
    add-int/lit8 v7, v7, 0x1

    goto :goto_cf

    .line 21
    :cond_110
    :goto_110
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 23
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-direct {p0, v3, v6}, Lio/agora/rtc/video/VideoCaptureCamera2;->setFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget v6, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-eq v6, v4, :cond_147

    if-ne v6, v8, :cond_1ac

    .line 27
    :cond_147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera2Tex-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lio/agora/rtc/video/VideoCapture;->mShareContext:Lio/agora/rtc/gl/EglBase$Context;

    invoke-static {v4, v6, v7}, Lio/agora/rtc/gl/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;I)Lio/agora/rtc/gl/SurfaceTextureHelper;

    move-result-object v4

    iput-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-nez v4, :cond_16e

    const-string v4, "CAMERA2"

    const-string v6, "Failed to create SurfaceTextureHelper, force fallback to raw data type"

    .line 28
    invoke-static {v4, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput v5, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    goto :goto_1ac

    .line 30
    :cond_16e
    invoke-virtual {v4}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    iget v9, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    invoke-virtual {v4, v6, v9}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 31
    iget-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v4, p0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->startListening(Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 32
    iget-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v4}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v4

    iput-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 33
    new-instance v4, Landroid/view/Surface;

    iget-object v6, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v6}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mTextureOutputSurface:Landroid/view/Surface;

    .line 34
    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 35
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mTextureOutputSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget v4, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-ne v4, v8, :cond_1ac

    iget-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    if-nez v4, :cond_1ac

    .line 37
    new-instance v4, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    invoke-direct {v4, p0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;-><init>(Lio/agora/rtc/video/VideoCapture;)V

    iput-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    .line 38
    :cond_1ac
    :goto_1ac
    iget v4, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    const/4 v6, 0x0

    if-eqz v4, :cond_1b3

    if-ne v4, v8, :cond_1fb

    .line 39
    :cond_1b3
    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    iget v9, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    mul-int v4, v4, v9

    iget v9, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    .line 40
    invoke-static {v9}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v9

    mul-int v4, v4, v9

    div-int/2addr v4, v7

    iput v4, p0, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    .line 41
    new-array v4, v4, [B

    iput-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureData:[B

    .line 42
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReaderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 43
    :try_start_1cb
    iget v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    iget v9, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    iget v10, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    invoke-static {v7, v9, v10, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v7

    iput-object v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 44
    new-instance v7, Landroid/os/Handler;

    iget-object v8, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    new-instance v8, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;

    invoke-direct {v8, p0, v6}, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V

    .line 46
    iget-object v9, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9, v8, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 47
    monitor-exit v4
    :try_end_1ed
    .catchall {:try_start_1cb .. :try_end_1ed} :catchall_221

    .line 48
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    .line 49
    iget-object v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 50
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1fb
    new-instance v4, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;

    invoke-direct {v4, p0, v6}, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V

    .line 52
    :try_start_200
    iget-object v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v7, v3, v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_205
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_200 .. :try_end_205} :catch_218
    .catch Ljava/lang/IllegalArgumentException; {:try_start_200 .. :try_end_205} :catch_20f
    .catch Ljava/lang/SecurityException; {:try_start_200 .. :try_end_205} :catch_206

    return v5

    :catch_206
    move-exception v1

    const-string v2, "CAMERA2"

    const-string v3, "createCaptureSession :"

    .line 53
    invoke-static {v2, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_20f
    move-exception v0

    const-string v2, "CAMERA2"

    const-string v3, "createCaptureSession :"

    .line 54
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_218
    move-exception v0

    const-string v1, "CAMERA2"

    const-string v3, "createCaptureSession :"

    .line 55
    invoke-static {v1, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catchall_221
    move-exception v0

    .line 56
    :try_start_222
    monitor-exit v4
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_221

    throw v0

    :catch_224
    move-exception v1

    const-string v2, "CAMERA2"

    const-string v3, "createCaptureRequest "

    .line 57
    invoke-static {v2, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_22d
    move-exception v0

    const-string v2, "CAMERA2"

    const-string v3, "createCaptureRequest: "

    .line 58
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_236
    move-exception v0

    const-string v1, "CAMERA2"

    const-string v3, "createCaptureRequest: "

    .line 59
    invoke-static {v1, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private doStopCapture()I
    .registers 8

    const-string v0, "CAMERA2"

    const-string v1, "doStopCapture"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_a
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    iput-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_8e

    :cond_14
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 6
    :try_start_16
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v4, :cond_1f

    .line 7
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 8
    iput-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_1f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_16 .. :try_end_1f} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1f} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1f} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_21
    .catchall {:try_start_16 .. :try_end_1f} :catchall_8e

    :cond_1f
    const/4 v3, 0x0

    goto :goto_44

    :catch_21
    move-exception v4

    :try_start_22
    const-string v5, "CAMERA2"

    const-string v6, "abortCaptures: "

    .line 9
    invoke-static {v5, v6, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :catch_2a
    move-exception v4

    const-string v5, "CAMERA2"

    const-string v6, "abortCaptures: "

    .line 10
    invoke-static {v5, v6, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :catch_33
    move-exception v4

    const-string v5, "CAMERA2"

    const-string v6, "abortCaptures: "

    .line 11
    invoke-static {v5, v6, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :catch_3c
    move-exception v4

    const-string v5, "CAMERA2"

    const-string v6, "abortCaptures: "

    .line 12
    invoke-static {v5, v6, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_8e

    .line 14
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_5f

    .line 15
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_4c
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_5a

    .line 17
    invoke-virtual {v4, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 18
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 19
    iput-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 20
    :cond_5a
    monitor-exit v0

    goto :goto_5f

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_5c

    throw v1

    .line 21
    :cond_5f
    :goto_5f
    invoke-static {}, Lio/agora/rtc/video/AgoraVideoDebugger;->reset()V

    .line 22
    iput v1, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    .line 23
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    if-eqz v0, :cond_6b

    .line 24
    invoke-virtual {v0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->reset()V

    .line 25
    :cond_6b
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-eqz v0, :cond_7b

    .line 26
    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->stopListening()V

    .line 27
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->dispose()V

    .line 28
    iput-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    .line 29
    iput-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 30
    :cond_7b
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mTextureOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_84

    .line 31
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 32
    iput-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mTextureOutputSurface:Landroid/view/Surface;

    .line 33
    :cond_84
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_8d

    .line 34
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 35
    iput-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_8d
    return v3

    :catchall_8e
    move-exception v1

    .line 36
    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v1
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "CAMERA2"

    if-eqz p1, :cond_20

    const/4 v2, 0x1

    if-eq p1, v2, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_20

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraCharacteristics error,  camera id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_20
    const-string v2, "camera"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 3
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_30
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_28 .. :try_end_30} :catch_47
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfCameras: got exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :catch_47
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfCameras: getCameraIdList(): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-object v0
.end method

.method public static getCaptureName()Ljava/lang/String;
    .registers 1

    const-string v0, "camera2"

    return-object v0
.end method

.method private getFrameOrientation()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCapture;->checkOrientation()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsCameraFacingFront:Z

    if-nez v1, :cond_a

    rsub-int v0, v0, 0x168

    .line 3
    :cond_a
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->getSensorOrientation(ILandroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method public static getFrontCameraIndex(Landroid/content/Context;)I
    .registers 9

    const-string v0, "CAMERA2"

    const-string v1, "camera"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    const/4 v1, 0x0

    .line 2
    :try_start_b
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_57

    aget-object v5, v2, v4

    .line 3
    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 4
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4e

    .line 5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4e

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontCameraIndex str= "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", int = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4d} :catch_51

    return p0

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :catch_51
    move-exception p0

    const-string v2, "getFrontCameraIndex: "

    .line 8
    invoke-static {v0, v2, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    return v1
.end method

.method public static getName(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", facing "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2b

    const-string p0, "front"

    goto :goto_2d

    :cond_2b
    const-string p0, "back"

    :goto_2d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberOfCameras(Landroid/content/Context;)I
    .registers 4

    const-string v0, "CAMERA2"

    const-string v1, "camera"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 2
    :try_start_a
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCaptureCamera2 listCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    const-string v1, "getNumberOfCameras: getCameraIdList(): "

    .line 4
    invoke-static {v0, v1, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getSensorOrientation(ILandroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_8
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isCameraFacingFront(Landroid/content/Context;I)Z
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_16

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static isLegacyDevice(Landroid/content/Context;I)Z
    .registers 3

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 2
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0

    :catchall_19
    const-string p0, "CAMERA2"

    const-string p1, "this is a legacy camera device"

    .line 3
    invoke-static {p0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isMeteringAreaAFSupported()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 2
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_13
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private static isSupported(I[I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p1, v2

    if-ne v3, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .registers 20

    move-object/from16 v9, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v10

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v11

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v12

    .line 4
    sget-boolean v0, Lio/agora/rtc/video/VideoCaptureCamera2;->usingLibyuv:Z

    const-string v13, "CAMERA2"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_4b

    .line 5
    aget-object v0, v12, v14

    .line 6
    aget-object v1, v12, v15

    const/4 v2, 0x2

    .line 7
    aget-object v2, v12, v2

    .line 8
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    .line 10
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 11
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    move v0, v10

    move v1, v11

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, p1

    .line 12
    invoke-static/range {v0 .. v8}, Lio/agora/rtc/video/VideoCapture;->ConvertFrameToI420(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[B)I

    move-result v0

    if-nez v0, :cond_46

    return-void

    :cond_46
    const-string v0, "readImageIntoBuffer: native convert I420 failed, using java method instead"

    .line 13
    invoke-static {v13, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    :goto_4d
    array-length v2, v12

    if-ge v0, v2, :cond_d2

    .line 15
    aget-object v2, v12, v0

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_72

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " buffer is null "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    .line 17
    :cond_72
    aget-object v3, v12, v0

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    .line 18
    aget-object v4, v12, v0

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    if-nez v0, :cond_82

    move v5, v10

    goto :goto_84

    .line 19
    :cond_82
    div-int/lit8 v5, v10, 0x2

    :goto_84
    if-nez v0, :cond_88

    move v6, v11

    goto :goto_8a

    .line 20
    :cond_88
    div-int/lit8 v6, v11, 0x2

    :goto_8a
    if-ne v4, v15, :cond_95

    if-ne v3, v5, :cond_95

    mul-int v5, v5, v6

    .line 21
    invoke-virtual {v2, v9, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v1, v5

    goto :goto_cd

    .line 22
    :cond_95
    new-array v7, v3, [B

    const/4 v8, 0x0

    :goto_98
    add-int/lit8 v15, v6, -0x1

    if-ge v8, v15, :cond_b3

    .line 23
    invoke-virtual {v2, v7, v14, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    :goto_a0
    if-ge v15, v5, :cond_af

    add-int/lit8 v16, v1, 0x1

    mul-int v17, v15, v4

    .line 24
    aget-byte v17, v7, v17

    aput-byte v17, v9, v1

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    goto :goto_a0

    :cond_af
    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x1

    goto :goto_98

    .line 25
    :cond_b3
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v7, v14, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_bf
    if-ge v2, v5, :cond_cd

    add-int/lit8 v3, v1, 0x1

    mul-int v6, v2, v4

    .line 26
    aget-byte v6, v7, v6

    aput-byte v6, v9, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_bf

    :cond_cd
    :goto_cd
    add-int/lit8 v0, v0, 0x1

    const/4 v15, 0x1

    goto/16 :goto_4d

    :cond_d2
    :goto_d2
    return-void
.end method

.method private setExposureCompensation_l(I)V
    .registers 9

    const-string v0, "CAMERA2"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureCompensation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    .line 3
    :cond_21
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    .line 4
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 5
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "CAMERA2"

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compensation step="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", min="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v2, :cond_6e

    move p1, v2

    :cond_6e
    if-ge p1, v0, :cond_71

    goto :goto_72

    :cond_71
    move v0, p1

    .line 8
    :goto_72
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_11a

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_11a

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_11a

    .line 9
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :try_start_81
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_115

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_115

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_115

    .line 11
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "CAMERA2"

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bf cur index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_c7
    .catchall {:try_start_81 .. :try_end_c7} :catchall_117

    .line 15
    :try_start_c7
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, v3, v4, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 16
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "CAMERA2"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "af cur index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    mul-int v0, v0, v4

    invoke-virtual {v1}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c7 .. :try_end_10b} :catch_111
    .catch Ljava/lang/IllegalStateException; {:try_start_c7 .. :try_end_10b} :catch_10c
    .catchall {:try_start_c7 .. :try_end_10b} :catchall_117

    goto :goto_115

    :catch_10c
    move-exception v0

    .line 18
    :try_start_10d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_115

    :catch_111
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_115
    :goto_115
    monitor-exit p1

    goto :goto_11a

    :catchall_117
    move-exception v0

    monitor-exit p1
    :try_end_119
    .catchall {:try_start_10d .. :try_end_119} :catchall_117

    throw v0

    :cond_11a
    :goto_11a
    return-void
.end method

.method private setFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    if-eqz v0, :cond_15

    .line 2
    :cond_c
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method private static setUsingLibyuv(Z)V
    .registers 1

    sput-boolean p0, Lio/agora/rtc/video/VideoCaptureCamera2;->usingLibyuv:Z

    return-void
.end method

.method private startNormalPreview()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_d

    goto :goto_6a

    .line 2
    :cond_d
    :try_start_d
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_10} :catch_4f

    .line 3
    :try_start_10
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_4a

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_4a

    .line 4
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 8
    :cond_4a
    monitor-exit v0

    goto :goto_6a

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_10 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v1
    :try_end_4f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4e .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v0

    const-string v1, "CAMERA2"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatingRequest failed, error message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private toCamera2ABMode(I)I
    .registers 3

    const/4 v0, 0x3

    if-ltz p1, :cond_7

    if-le p1, v0, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    return v0
.end method

.method private toCamera2EdgeEnhanceMode(I)I
    .registers 3

    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    const/4 p1, 0x0

    return p1
.end method

.method private toCamera2NoiseMode(I)I
    .registers 3

    if-ltz p1, :cond_7

    const/4 v0, 0x4

    if-le p1, v0, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    const/4 p1, 0x0

    return p1
.end method

.method private toCamera2VideoStabilityMode(I)I
    .registers 3

    if-ltz p1, :cond_7

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    const/4 p1, 0x0

    return p1
.end method

.method private tryOpenCamera()I
    .registers 7

    const-string v0, "allocate: manager.openCamera: "

    const-string v1, "CAMERA2"

    .line 1
    new-instance v2, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V

    .line 2
    :try_start_a
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    iget v4, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_17
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_17} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_17} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_17} :catch_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_19

    const/4 v0, 0x0

    return v0

    :catch_19
    move-exception v0

    const-string v2, "unknown error"

    .line 3
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x4

    return v0

    :catch_21
    move-exception v2

    .line 4
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x3

    return v0

    :catch_27
    move-exception v2

    .line 5
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x2

    return v0

    :catch_2d
    move-exception v2

    .line 6
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public UnRegisterNativeHandle()I
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v0, 0x0

    return v0
.end method

.method public allocate()I
    .registers 9

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->OPENING:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_13

    const-string v1, "CAMERA2"

    const-string v2, "allocate() invoked while Camera is busy opening/configuring"

    .line 3
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return v3

    .line 5
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_e6

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1f

    return v3

    .line 7
    :cond_1f
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCaptureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/agora/rtc/video/VideoCapture;->fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    .line 8
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->createCapabilities(ILandroid/content/Context;)I

    .line 9
    :cond_34
    iget-wide v1, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4a

    .line 10
    invoke-virtual {p0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->isAutoFaceFocusEnabled(J)Z

    move-result v1

    iput-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    .line 11
    iget-wide v1, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->isFaceDetectionEnabled(J)Z

    move-result v1

    iput-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    .line 12
    :cond_4a
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lio/agora/rtc/video/VideoCapture;->mCameraNativeOrientation:I

    .line 13
    iget-object v1, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 14
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 15
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 16
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_95

    if-lez v0, :cond_95

    .line 17
    iput-boolean v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    .line 18
    array-length v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_84
    if-ge v5, v2, :cond_8c

    aget v7, v1, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_8c
    const/4 v1, 0x2

    .line 19
    rem-int/2addr v6, v1

    if-eqz v6, :cond_93

    .line 20
    iput v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    goto :goto_95

    .line 21
    :cond_93
    iput v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    :cond_95
    :goto_95
    const-string v1, "CAMERA2"

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocate() face detection: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_dc

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateThread:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    new-instance v0, Lio/agora/rtc/video/VideoCaptureCamera2$SafeHandler;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2$SafeHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mStateHandler:Landroid/os/Handler;

    .line 27
    :cond_dc
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return v3

    :catchall_e6
    move-exception v1

    .line 28
    :try_start_e7
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v1
.end method

.method public deallocate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_15

    .line 2
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_15

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateThread:Landroid/os/HandlerThread;

    .line 6
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mStateHandler:Landroid/os/Handler;

    :cond_15
    return-void
.end method

.method public getMaxZoom()F
    .registers 3

    .line 1
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_29

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, "CAMERA2"

    const-string v1, "warning cameraCharacteristics is null"

    .line 3
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000  # -1.0f

    return v0

    .line 4
    :cond_1b
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    .line 5
    :cond_29
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    return v0
.end method

.method public isAutoFaceFocusSupported()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->isFocusSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 3
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1a
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    return v1
.end method

.method public isExposureSupported()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const-string v1, "CAMERA2"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string v0, "warning cameraCharacteristics is null"

    .line 2
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_13
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_3e

    const/4 v3, 0x0

    .line 4
    :goto_1e
    array-length v4, v0

    if-ge v3, v4, :cond_3e

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExposureSupported AE mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v4, v3, :cond_3b

    return v4

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3e
    return v2
.end method

.method public isFocusSupported()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 2
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_13
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_28

    const/4 v2, 0x0

    .line 4
    :goto_1e
    array-length v3, v0

    if-ge v2, v3, :cond_28

    const/4 v3, 0x1

    if-ne v3, v2, :cond_25

    return v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    return v1
.end method

.method public isTorchSupported()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 2
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_13
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1e

    goto :goto_22

    .line 4
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_22
    return v1
.end method

.method public isZoomSupported()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 2
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_13
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    return v1
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getFrameOrientation()I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsCameraFacingFront:Z

    if-eqz v0, :cond_10

    .line 3
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v0

    .line 4
    invoke-static {p2, v0}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    :cond_10
    rsub-int v0, p1, 0x168

    int-to-float v0, v0

    .line 5
    invoke-static {p2, v0}, Lio/agora/rtc/gl/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object p2

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    .line 7
    invoke-static {p2}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object p2

    .line 8
    invoke-virtual {v0, v1, v2, p2}, Lio/agora/rtc/gl/SurfaceTextureHelper;->createTextureBuffer(IILandroid/graphics/Matrix;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p2, p1, p3, p4}, Lio/agora/rtc/video/VideoCapture;->onTextureBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V

    .line 10
    invoke-interface {p2}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public setAntiBandingMode(I)I
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->toCamera2ABMode(I)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAntiBandingMode:I

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_12

    return v0

    .line 3
    :cond_12
    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAntiBandingMode:I

    .line 4
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 5
    array-length v2, p1

    if-lez v2, :cond_90

    .line 6
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v2, :cond_90

    aget v5, p1, v4

    if-ne v5, v1, :cond_8d

    .line 7
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_76

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_76

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_76

    .line 8
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_37
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_71

    .line 10
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_73

    .line 12
    :try_start_59
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v2, v4, v5, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_66
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_59 .. :try_end_66} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_66} :catch_68
    .catchall {:try_start_59 .. :try_end_66} :catchall_73

    .line 13
    :try_start_66
    monitor-exit p1

    return v3

    :catch_68
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_71

    :catch_6d
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_71
    :goto_71
    monitor-exit p1

    goto :goto_76

    :catchall_73
    move-exception v0

    monitor-exit p1
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_73

    throw v0

    :cond_76
    :goto_76
    const-string p1, "CAMERA2"

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgoraVideo set anti-banding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_90
    const-string p1, "CAMERA2"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported anti-banding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setAutoFaceFocus(Z)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2
    :goto_8
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    .line 3
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    if-eqz p1, :cond_7b

    if-eqz v0, :cond_7b

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_82

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_82

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    if-eqz p1, :cond_82

    .line 5
    monitor-enter p1

    .line 6
    :try_start_1d
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_76

    .line 7
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    if-eqz v2, :cond_46

    .line 9
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5e

    .line 10
    :cond_46
    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    if-eqz v2, :cond_53

    const-string v0, "CAMERA2"

    const-string v2, "face detect did not turn off due to faceDistance on"

    .line 11
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    monitor-exit p1

    return v1

    .line 13
    :cond_53
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_1d .. :try_end_5e} :catchall_78

    .line 14
    :goto_5e
    :try_start_5e
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_6b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5e .. :try_end_6b} :catch_72
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_6b} :catch_6d
    .catchall {:try_start_5e .. :try_end_6b} :catchall_78

    .line 15
    :try_start_6b
    monitor-exit p1

    return v1

    :catch_6d
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_76

    :catch_72
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_76
    :goto_76
    monitor-exit p1

    goto :goto_82

    :catchall_78
    move-exception v0

    monitor-exit p1
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_78

    throw v0

    :cond_7b
    const-string p1, "CAMERA2"

    const-string v0, "face detect no change"

    .line 19
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    :goto_82
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

    const-string v1, "CAMERA2"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p3, Lio/agora/rtc/video/VideoCapture;->FORCE_TEXTURE_OES:Z

    .line 3
    invoke-static {p2}, Lio/agora/rtc/video/VideoCapture;->translateToCaptureOutputDataType(I)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    .line 4
    invoke-static {p1}, Lio/agora/rtc/video/VideoCapture;->translateToAndroidFormat(I)I

    move-result p1

    .line 5
    iget p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    if-eq p1, p2, :cond_3d

    const-string p1, "For camera2 api, only YUV_420_888 format are supported"

    .line 6
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_3d
    const/4 p1, 0x0

    return p1
.end method

.method public setEdgeEnhanceMode(I)I
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->toCamera2EdgeEnhanceMode(I)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mEdgeEnhanceMode:I

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    return v1

    .line 3
    :cond_12
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4
    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mEdgeEnhanceMode:I

    invoke-static {v2, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->isSupported(I[I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_89

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_31
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_84

    .line 8
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mEdgeEnhanceMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_86

    :try_start_55
    const-string v3, "CAMERA2"

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEdgeEnhanceMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_78
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_55 .. :try_end_78} :catch_80
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_78} :catch_7b
    .catchall {:try_start_55 .. :try_end_78} :catchall_86

    const/4 p1, 0x0

    .line 12
    :try_start_79
    monitor-exit v0

    return p1

    :catch_7b
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84

    :catch_80
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_84
    :goto_84
    monitor-exit v0

    goto :goto_89

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_86

    throw p1

    :cond_89
    :goto_89
    const-string v0, "CAMERA2"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported EdgeEnhance Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setExposure(FFZ)I
    .registers 20

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v3, p2

    const-string v1, "CAMERA2"

    const-string v2, "setExposure called camera api2"

    .line 1
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    cmpg-float v4, v0, v1

    if-ltz v4, :cond_139

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v5, v0, v4

    if-gtz v5, :cond_139

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_139

    cmpl-float v1, v3, v4

    if-lez v1, :cond_23

    goto/16 :goto_139

    .line 2
    :cond_23
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_2f

    const-string v0, "CAMERA2"

    const-string v1, "setExposure mPreviewBuilder is null"

    .line 3
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2f
    float-to-double v4, v0

    float-to-double v6, v3

    .line 4
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_3c

    return v2

    .line 5
    :cond_3c
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const-string v10, "CAMERA2"

    .line 7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " crop height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " capture width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " capture height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v10, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    mul-int v11, v9, v10

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    mul-int v13, v1, v12

    const/high16 v14, 0x40000000  # 2.0f

    if-le v11, v13, :cond_94

    mul-int v12, v12, v1

    .line 9
    div-int/2addr v12, v10

    sub-int v10, v9, v12

    int-to-float v10, v10

    div-float/2addr v10, v14

    float-to-double v10, v10

    int-to-double v12, v12

    mul-double v4, v4, v12

    add-double/2addr v10, v4

    double-to-int v4, v10

    int-to-double v10, v1

    mul-double v6, v6, v10

    double-to-int v5, v6

    goto :goto_a5

    :cond_94
    mul-int v10, v10, v9

    .line 10
    div-int/2addr v10, v12

    int-to-double v11, v9

    mul-double v4, v4, v11

    double-to-int v4, v4

    sub-int v5, v1, v10

    int-to-float v5, v5

    div-float/2addr v5, v14

    float-to-double v11, v5

    int-to-double v13, v10

    mul-double v6, v6, v13

    add-double/2addr v11, v6

    double-to-int v5, v11

    .line 11
    :goto_a5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    int-to-double v10, v4

    const-wide v12, 0x3fa999999999999aL  # 0.05

    int-to-double v14, v9

    mul-double v14, v14, v12

    sub-double v2, v10, v14

    double-to-int v2, v2

    const/4 v7, 0x0

    .line 12
    invoke-static {v2, v7, v9}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    add-double/2addr v10, v14

    double-to-int v2, v10

    .line 13
    invoke-static {v2, v7, v9}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    int-to-double v2, v5

    int-to-double v4, v1

    mul-double v12, v12, v4

    sub-double v4, v2, v12

    double-to-int v4, v4

    .line 14
    invoke-static {v4, v7, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v4

    iput v4, v6, Landroid/graphics/Rect;->top:I

    add-double/2addr v2, v12

    double-to-int v2, v2

    .line 15
    invoke-static {v2, v7, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v9, 0x3e8

    invoke-direct {v5, v6, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_121

    .line 19
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_ff
    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_101
    .catchall {:try_start_ff .. :try_end_101} :catchall_11e

    if-eqz v2, :cond_11c

    .line 21
    :try_start_103
    iget-object v3, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_10d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_103 .. :try_end_10d} :catch_115
    .catch Ljava/lang/IllegalStateException; {:try_start_103 .. :try_end_10d} :catch_10e
    .catchall {:try_start_103 .. :try_end_10d} :catchall_11e

    goto :goto_11c

    :catch_10e
    move-exception v0

    .line 22
    :try_start_10f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    :catch_115
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 26
    :cond_11c
    :goto_11c
    monitor-exit v1

    goto :goto_121

    :catchall_11e
    move-exception v0

    monitor-exit v1
    :try_end_120
    .catchall {:try_start_10f .. :try_end_120} :catchall_11e

    throw v0

    .line 27
    :cond_121
    :goto_121
    iget-wide v9, v8, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v1, 0x0

    cmp-long v3, v9, v1

    if-eqz v3, :cond_137

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    move-wide v6, v9

    .line 28
    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraExposureAreaChanged(FFFFJ)V

    goto :goto_138

    :cond_137
    const/4 v0, 0x0

    :goto_138
    return v0

    :cond_139
    :goto_139
    const-string v0, "CAMERA2"

    const-string v1, "set exposure unreasonable inputs"

    .line 29
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method

.method public setExposureCompensation(I)I
    .registers 2

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->setExposureCompensation_l(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setFaceDetection(Z)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2
    :goto_8
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    .line 3
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    if-eqz p1, :cond_7d

    if-eqz v0, :cond_7d

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_84

    .line 5
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1f
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_78

    .line 7
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    if-eqz v2, :cond_48

    .line 9
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_60

    .line 10
    :cond_48
    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    if-eqz v2, :cond_55

    const-string v0, "CAMERA2"

    const-string v2, "face detect did not turn off due to autoFocus on"

    .line 11
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    monitor-exit p1

    return v1

    .line 13
    :cond_55
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_1f .. :try_end_60} :catchall_7a

    .line 14
    :goto_60
    :try_start_60
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_6d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_60 .. :try_end_6d} :catch_74
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_6d} :catch_6f
    .catchall {:try_start_60 .. :try_end_6d} :catchall_7a

    .line 15
    :try_start_6d
    monitor-exit p1

    return v1

    :catch_6f
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_78

    :catch_74
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_78
    :goto_78
    monitor-exit p1

    goto :goto_84

    :catchall_7a
    move-exception v0

    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw v0

    :cond_7d
    const-string p1, "CAMERA2"

    const-string v0, "face detect no change"

    .line 19
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return v1
.end method

.method public setFocus(FFZ)I
    .registers 20

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v3, p2

    const/4 v1, 0x0

    const/4 v2, -0x1

    cmpg-float v4, v0, v1

    if-ltz v4, :cond_170

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v5, v0, v4

    if-gtz v5, :cond_170

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_170

    cmpl-float v1, v3, v4

    if-lez v1, :cond_1c

    goto/16 :goto_170

    .line 1
    :cond_1c
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_28

    const-string v0, "CAMERA2"

    const-string v1, "setFocus mPreviewBuilder is null"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    float-to-double v4, v0

    float-to-double v6, v3

    if-nez v1, :cond_2d

    return v2

    .line 3
    :cond_2d
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_38

    return v2

    .line 4
    :cond_38
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const-string v10, "CAMERA2"

    .line 6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " crop height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " capture width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " capture height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v10, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    mul-int v11, v9, v10

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    mul-int v13, v1, v12

    const/high16 v14, 0x40000000  # 2.0f

    if-le v11, v13, :cond_90

    mul-int v12, v12, v1

    .line 8
    div-int/2addr v12, v10

    sub-int v10, v9, v12

    int-to-float v10, v10

    div-float/2addr v10, v14

    float-to-double v10, v10

    int-to-double v12, v12

    mul-double v4, v4, v12

    add-double/2addr v10, v4

    double-to-int v4, v10

    int-to-double v10, v1

    mul-double v6, v6, v10

    double-to-int v5, v6

    goto :goto_a1

    :cond_90
    mul-int v10, v10, v9

    .line 9
    div-int/2addr v10, v12

    int-to-double v11, v9

    mul-double v4, v4, v11

    double-to-int v4, v4

    sub-int v5, v1, v10

    int-to-float v5, v5

    div-float/2addr v5, v14

    float-to-double v11, v5

    int-to-double v13, v10

    mul-double v6, v6, v13

    add-double/2addr v11, v6

    double-to-int v5, v11

    .line 10
    :goto_a1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    int-to-double v10, v4

    const-wide v12, 0x3fa999999999999aL  # 0.05

    int-to-double v14, v9

    mul-double v14, v14, v12

    sub-double v2, v10, v14

    double-to-int v2, v2

    const/4 v7, 0x0

    .line 11
    invoke-static {v2, v7, v9}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    add-double/2addr v10, v14

    double-to-int v2, v10

    .line 12
    invoke-static {v2, v7, v9}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    int-to-double v2, v5

    int-to-double v4, v1

    mul-double v12, v12, v4

    sub-double v4, v2, v12

    double-to-int v4, v4

    .line 13
    invoke-static {v4, v7, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v4

    iput v4, v6, Landroid/graphics/Rect;->top:I

    add-double/2addr v2, v12

    double-to-int v2, v2

    .line 14
    invoke-static {v2, v7, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 15
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v9, 0x3e8

    invoke-direct {v5, v6, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v5, v6, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 20
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_16e

    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_16e

    .line 21
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_125
    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_154

    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_154

    .line 23
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_138
    .catchall {:try_start_125 .. :try_end_138} :catchall_16b

    .line 24
    :try_start_138
    iget-object v3, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mAfCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_145
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_138 .. :try_end_145} :catch_14d
    .catch Ljava/lang/IllegalStateException; {:try_start_138 .. :try_end_145} :catch_146
    .catchall {:try_start_138 .. :try_end_145} :catchall_16b

    goto :goto_154

    :catch_146
    move-exception v0

    .line 25
    :try_start_147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    :catch_14d
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 29
    :cond_154
    :goto_154
    monitor-exit v1
    :try_end_155
    .catchall {:try_start_147 .. :try_end_155} :catchall_16b

    .line 30
    iget-wide v9, v8, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v1, 0x0

    cmp-long v3, v9, v1

    if-eqz v3, :cond_16e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    move-wide v6, v9

    .line 31
    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    goto :goto_16f

    :catchall_16b
    move-exception v0

    .line 32
    :try_start_16c
    monitor-exit v1
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    throw v0

    :cond_16e
    const/4 v0, 0x0

    :goto_16f
    return v0

    :cond_170
    :goto_170
    const-string v0, "CAMERA2"

    const-string v1, "set focus unreasonable inputs"

    .line 33
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method

.method public setNoiseReductionMode(I)I
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->toCamera2NoiseMode(I)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNoiseReductionMode:I

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    return v1

    .line 3
    :cond_12
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4
    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNoiseReductionMode:I

    invoke-static {v2, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->isSupported(I[I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_89

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_31
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_84

    .line 8
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNoiseReductionMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_86

    :try_start_55
    const-string v3, "CAMERA2"

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNoiseReductionMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_78
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_55 .. :try_end_78} :catch_80
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_78} :catch_7b
    .catchall {:try_start_55 .. :try_end_78} :catchall_86

    const/4 p1, 0x0

    .line 12
    :try_start_79
    monitor-exit v0

    return p1

    :catch_7b
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84

    :catch_80
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_84
    :goto_84
    monitor-exit v0

    goto :goto_89

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_86

    throw p1

    :cond_89
    :goto_89
    const-string v0, "CAMERA2"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported NoiseReductionMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setTorchMode(Z)I
    .registers 8

    const-string v0, "CAMERA2"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashMode isTorchOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_29

    const-string p1, "CAMERA2"

    const-string v0, "warning cameraCharacteristics is null"

    .line 3
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_29
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_2e

    return v1

    .line 5
    :cond_2e
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3f

    .line 6
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3f
    if-eqz v0, :cond_9d

    .line 7
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_a4

    .line 8
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_50
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_98

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v3, :cond_98

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_98

    .line 10
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_76

    .line 11
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_81

    .line 12
    :cond_76
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_50 .. :try_end_81} :catchall_9a

    .line 13
    :goto_81
    :try_start_81
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_8d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_81 .. :try_end_8d} :catch_94
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_8d} :catch_8f
    .catchall {:try_start_81 .. :try_end_8d} :catchall_9a

    .line 14
    :try_start_8d
    monitor-exit v0

    return v2

    :catch_8f
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_98

    :catch_94
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_98
    :goto_98
    monitor-exit v0

    goto :goto_a4

    :catchall_9a
    move-exception p1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_9a

    throw p1

    :cond_9d
    const-string p1, "CAMERA2"

    const-string v0, "flash is not supported"

    .line 18
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return v1
.end method

.method public setVideoStabilityMode(I)I
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->toCamera2VideoStabilityMode(I)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mVideoStabilityMode:I

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    return v1

    .line 3
    :cond_12
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4
    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mVideoStabilityMode:I

    invoke-static {v2, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->isSupported(I[I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_89

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_31
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_84

    .line 8
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mVideoStabilityMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_86

    :try_start_55
    const-string v3, "CAMERA2"

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoStabilityMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_78
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_55 .. :try_end_78} :catch_80
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_78} :catch_7b
    .catchall {:try_start_55 .. :try_end_78} :catchall_86

    const/4 p1, 0x0

    .line 12
    :try_start_79
    monitor-exit v0

    return p1

    :catch_7b
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84

    :catch_80
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_84
    :goto_84
    monitor-exit v0

    goto :goto_89

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_86

    throw p1

    :cond_89
    :goto_89
    const-string v0, "CAMERA2"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported VideoStability Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setZoom(F)I
    .registers 7

    const-string v0, "CAMERA2"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoom api2 called zoomValue ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, -0x1

    if-nez v0, :cond_23

    const-string p1, "CAMERA2"

    const-string v0, "setZoom mPreviewBuilder is null"

    .line 3
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_23
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    if-nez v0, :cond_51

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_39

    const-string p1, "CAMERA2"

    const-string v0, "warning cameraCharacteristics is null"

    .line 6
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_39
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    .line 8
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    .line 9
    :cond_51
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3a83126f  # 0.001f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7f

    const-string p1, "CAMERA2"

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not support camera zoom"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_7f
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCurZoomRatio:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_94

    .line 12
    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_94

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mLastZoomRatio:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_94

    const/4 v1, 0x1

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    if-nez v1, :cond_99

    const/4 p1, -0x2

    return p1

    .line 13
    :cond_99
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_ed

    .line 15
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_ac
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_e8

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_e8

    .line 17
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    iget p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCurZoomRatio:F

    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mLastZoomRatio:F

    .line 19
    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_cc
    .catchall {:try_start_ac .. :try_end_cc} :catchall_ea

    .line 20
    :try_start_cc
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v2, v3, v4, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_d9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_cc .. :try_end_d9} :catch_e1
    .catch Ljava/lang/IllegalStateException; {:try_start_cc .. :try_end_d9} :catch_da
    .catchall {:try_start_cc .. :try_end_d9} :catchall_ea

    goto :goto_e8

    :catch_da
    move-exception p1

    .line 21
    :try_start_db
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x4

    .line 22
    monitor-exit v1

    return p1

    :catch_e1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    .line 24
    monitor-exit v1

    return p1

    .line 25
    :cond_e8
    :goto_e8
    monitor-exit v1

    goto :goto_ed

    :catchall_ea
    move-exception p1

    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_db .. :try_end_ec} :catchall_ea

    throw p1

    :cond_ed
    :goto_ed
    return v0
.end method

.method public startCapture(III)I
    .registers 7

    const-string v0, "CAMERA2"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture, w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    .line 3
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    .line 4
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    .line 5
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :goto_2f
    :try_start_2f
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object p3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p2, p3, :cond_4c

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p2, v0, :cond_4c

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_63

    if-eq p2, v0, :cond_4c

    .line 7
    :try_start_3d
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_63

    goto :goto_2f

    :catch_43
    move-exception p2

    :try_start_44
    const-string p3, "CAMERA2"

    const-string v0, "CaptureStartedEvent: "

    .line 8
    invoke-static {p3, v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_4c
    if-ne p2, p3, :cond_51

    const/4 p2, 0x0

    .line 9
    monitor-exit p1

    return p2

    .line 10
    :cond_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_63

    .line 11
    sget-object p1, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->OPENING:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 12
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->tryOpenCamera()I

    move-result p1

    if-eqz p1, :cond_62

    .line 13
    sget-object p2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, p2}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_62
    return p1

    :catchall_63
    move-exception p2

    .line 14
    :try_start_64
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p2
.end method

.method public stopCapture()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_3
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v1, v2, :cond_20

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v1, v2, :cond_20

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_39

    if-eq v1, v2, :cond_20

    .line 3
    :try_start_11
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_39

    goto :goto_3

    :catch_17
    move-exception v1

    :try_start_18
    const-string v2, "CAMERA2"

    const-string v3, "CaptureStartedEvent: "

    .line 4
    invoke-static {v2, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5
    :cond_20
    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne v1, v2, :cond_28

    .line 6
    sget-object v1, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 7
    :cond_28
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_31

    monitor-exit v0

    return v3

    .line 8
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_39

    .line 9
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->doStopCapture()I

    .line 10
    invoke-direct {p0, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    return v3

    :catchall_39
    move-exception v1

    .line 11
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method
