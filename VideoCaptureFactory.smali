# classes13.dex

.class public Lio/agora/rtc/video/VideoCaptureFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_CAMERA1:I = 0x0

.field private static final ANDROID_CAMERA2:I = 0x1

.field private static final ANDROID_CAMERA_NOT_DEFINE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CAM-FACTORY"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheLowPowerFlag(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "CamCapsLowPower"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "Cam_LowPower"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static createVideoCapture(Landroid/content/Context;IIZIILio/agora/rtc/gl/EglBase$Context;J)Lio/agora/rtc/video/VideoCapture;
    .registers 17

    move-object v1, p0

    move v2, p1

    move v0, p2

    move v3, p3

    move v4, p5

    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createVideoCapture id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " select: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " pqFirst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p4

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lowPowerFlag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CAM-FACTORY"

    invoke-static {v7, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureFactory;->fetchLowPowerFlag(Landroid/content/Context;)I

    move-result v5

    if-eq v4, v5, :cond_48

    .line 3
    invoke-static {p0, p5}, Lio/agora/rtc/video/VideoCaptureFactory;->cacheLowPowerFlag(Landroid/content/Context;I)V

    .line 4
    invoke-static {p0}, Lio/agora/rtc/video/VideoCapture;->clearCapabilityCache(Landroid/content/Context;)V

    .line 5
    :cond_48
    invoke-static {p1, p0, p2, p3}, Lio/agora/rtc/video/VideoCaptureFactory;->useCamera2(ILandroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create CAMERA2, id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v7, Lio/agora/rtc/video/VideoCaptureCamera2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-object v4, p6

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/VideoCaptureCamera2;-><init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V

    return-object v7

    .line 8
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create CAMERA1, id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v7, Lio/agora/rtc/video/VideoCaptureCamera;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-object v4, p6

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/VideoCaptureCamera;-><init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V

    return-object v7
.end method

.method public static fetchLowPowerFlag(Landroid/content/Context;)I
    .registers 3

    const-string v0, "CamCapsLowPower"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 v0, -0x1

    const-string v1, "Cam_LowPower"

    .line 2
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public static getCapabilities(ILandroid/content/Context;IZ)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureFactory;->useCamera2(ILandroid/content/Context;IZ)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCaptureName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/agora/rtc/video/VideoCapture;->fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    .line 3
    :cond_f
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getCaptureName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/agora/rtc/video/VideoCapture;->fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_17
    if-nez p0, :cond_21

    const-string p1, "CAM-FACTORY"

    const-string p2, "Capability hasn\'t been created"

    .line 4
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 5
    :cond_21
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureFactory;->printCameraInfo(Ljava/lang/String;)I

    :goto_24
    return-object p0
.end method

.method public static getDeviceName(ILandroid/content/Context;IZ)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureFactory;->useCamera2(ILandroid/content/Context;IZ)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2
    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceOrientation(ILandroid/content/Context;IZ)I
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureFactory;->useCamera2(ILandroid/content/Context;IZ)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2
    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getSensorOrientation(ILandroid/content/Context;)I

    move-result p0

    return p0

    .line 3
    :cond_b
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getSensorOrientation(I)I

    move-result p0

    return p0
.end method

.method public static getFrontCameraIndex(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureFactory;->isCamera2Available()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getFrontCameraIndex(Landroid/content/Context;)I

    move-result p0

    goto :goto_f

    :cond_b
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getFrontCameraIndex()I

    move-result p0

    .line 3
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFrontCameraIndex  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAM-FACTORY"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getNumberOfCameras(Landroid/content/Context;)I
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1f

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "CAM-FACTORY"

    const-string v0, "Missing android.permission.CAMERA permission, no system camera available"

    .line 5
    invoke-static {p0, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_1f
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureFactory;->isCamera2Available()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getNumberOfCameras(Landroid/content/Context;)I

    move-result v1

    :cond_29
    if-nez v1, :cond_2f

    .line 8
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getNumberOfCameras()I

    move-result v1

    :cond_2f
    return v1
.end method

.method public static isCamera2Available()Z
    .registers 4

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ocean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "oe106"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    const-string v1, "trident"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "de106"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    return v2

    :cond_29
    const-string v1, "shark"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "skr-a0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    return v2

    :cond_3c
    const-string v1, "hnnem-h"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    return v2

    :cond_45
    const-string v1, "on7xelte"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-G610F"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    return v2

    :cond_58
    const-string v1, "m2c"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M578CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto/16 :goto_ec

    .line 7
    :cond_6c
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d9

    if-eqz v0, :cond_d9

    const-string v3, "SM-G930"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SM-G935"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SM-G950"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SM-G955"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SC-02H"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SCV33"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SC-02J"

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SCV36"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SM-G892A"

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SM-G892U"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SC-03J"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string v3, "SCV35"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    :cond_d8
    return v2

    :cond_d9
    const-string v3, "oneplus"

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ea

    const-string v1, "ONEPLUS A6"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ea

    return v2

    :cond_ea
    const/4 v0, 0x1

    return v0

    :cond_ec
    :goto_ec
    return v2
.end method

.method public static printCameraInfo(Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v0, v0, 0x96

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_66

    .line 2
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lines = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_40

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v3, v2, 0x96

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    .line 4
    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v3, v2, 0x96

    add-int/lit8 v5, v2, 0x1

    mul-int/lit16 v5, v5, 0x96

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_59
    const-string v4, "CameraInfo"

    .line 5
    invoke-static {v4, v3}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_66
    return v1
.end method

.method private static useCamera2(ILandroid/content/Context;IZ)Z
    .registers 6

    .line 1
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureFactory;->isCamera2Available()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    if-eq p2, v0, :cond_18

    if-nez p2, :cond_e

    goto :goto_18

    .line 2
    :cond_e
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->isLegacyDevice(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_17

    if-nez p3, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    :cond_18
    :goto_18
    if-ne p2, v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method
