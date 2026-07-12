# classes13.dex

.class public Lio/agora/rtc/video/CameraUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CAMERA_UTIL"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraDisplayOrientation(Landroid/content/Context;I)I
    .registers 5

    .line 1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/16 p1, 0x5a

    if-eqz p0, :cond_54

    const-string v1, "window"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_28

    const-string p0, "CAMERA_UTIL"

    const-string v0, "display is null"

    .line 5
    invoke-static {p0, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 6
    :cond_28
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_38

    if-eq p0, v1, :cond_3f

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3a

    :cond_38
    const/4 p1, 0x0

    goto :goto_3f

    :cond_3a
    const/16 p1, 0x10e

    goto :goto_3f

    :cond_3d
    const/16 p1, 0xb4

    .line 7
    :cond_3f
    :goto_3f
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, v1, :cond_4d

    .line 8
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 9
    rem-int/lit16 p1, p0, 0x168

    goto :goto_54

    .line 10
    :cond_4d
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p1, p0, 0x168

    :cond_54
    :goto_54
    return p1
.end method
