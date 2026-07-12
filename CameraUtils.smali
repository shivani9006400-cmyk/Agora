# classes13.dex

.class public Lio/agora/rtc/utils/CameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCameraPermission(Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_13

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    .line 2
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "android.permission.CAMERA is not granted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNumberOfCameras(Landroid/content/Context;)I
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureFactory;->getNumberOfCameras(Landroid/content/Context;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtils"

    invoke-static {v0, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static selectFrontCamera(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureFactory;->getFrontCameraIndex(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
