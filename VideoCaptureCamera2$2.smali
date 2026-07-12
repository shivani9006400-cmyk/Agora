# classes13.dex

.class Lio/agora/rtc/video/VideoCaptureCamera2$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mLastFocusedTs:J

.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v0

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v1

    invoke-static {p2, v0, v1, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face bound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CAMERA2"

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rect (-1000, 1000) = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget p2, p2, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    .line 5
    :goto_4c
    invoke-static {p1, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview size width = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto face focus left ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "isMirror ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 9
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 10
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 11
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 12
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v6, v1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 p1, 0x0

    cmp-long v0, v6, p1

    if-eqz v0, :cond_cd

    .line 13
    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    :cond_cd
    return-void
.end method

.method private notifyFaceDetection(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget v1, v0, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz p2, :cond_55

    .line 3
    array-length v1, p2

    if-lez v1, :cond_55

    .line 4
    array-length v1, p2

    .line 5
    new-array v4, v1, [Landroid/graphics/RectF;

    invoke-static {v0, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    new-array v4, v1, [I

    invoke-static {v0, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$502(Lio/agora/rtc/video/VideoCaptureCamera2;[I)[I

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v1, :cond_53

    .line 7
    aget-object v4, p2, v0

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v5

    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v6}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v6

    invoke-static {v4, v5, v6, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v3, v2}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object v4

    aput-object v4, v5, v0

    .line 9
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)[I

    move-result-object v4

    const/4 v5, 0x5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_53
    move v3, v1

    goto :goto_5a

    :cond_55
    new-array p1, v3, [Landroid/graphics/RectF;

    .line 10
    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    :goto_5a
    const-string p1, "CAMERA2"

    const-string p2, "before notify face"

    .line 11
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v5

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v6

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;

    move-result-object v7

    int-to-long v8, v3

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v10, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual/range {v4 .. v11}, Lio/agora/rtc/video/VideoCapture;->NotifyFaceDetection(II[Landroid/graphics/RectF;JJ)V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .registers 9

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_125

    .line 2
    array-length v1, v0

    if-lez v1, :cond_125

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_37

    .line 4
    aget-object v1, v0, v5

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_36

    .line 5
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 6
    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_36
    return-void

    .line 7
    :cond_37
    aget-object v1, v0, v5

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_42

    return-void

    .line 8
    :cond_42
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v4, v0, v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/16 v6, 0x3e8

    invoke-direct {v3, v4, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 9
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-nez v1, :cond_62

    return-void

    .line 10
    :cond_62
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 11
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object v1

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v1, v2, :cond_76

    return-void

    .line 12
    :cond_76
    :try_start_76
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    const-string v1, "CAMERA2"

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropRegion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CAMERA2"

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture size wxh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 16
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    if-eqz p1, :cond_101

    .line 17
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_da} :catch_10d

    .line 18
    :try_start_da
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 19
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 20
    :cond_fc
    monitor-exit p1

    goto :goto_101

    :catchall_fe
    move-exception v0

    monitor-exit p1
    :try_end_100
    .catchall {:try_start_da .. :try_end_100} :catchall_fe

    :try_start_100
    throw v0
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_101} :catch_10d

    .line 21
    :cond_101
    :goto_101
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    goto :goto_12e

    :catch_10d
    move-exception p1

    const-string v0, "CAMERA2"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_125
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    :goto_12e
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1400(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-virtual {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->isAutoFaceFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2
    invoke-direct {p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    :cond_13
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1500(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 4
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/params/Face;

    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyFaceDetection(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)V

    :cond_2e
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    return-void
.end method
