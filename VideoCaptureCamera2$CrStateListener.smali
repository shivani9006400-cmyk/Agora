# classes13.dex

.class Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrStateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p1, v0, :cond_42

    const-string p1, "CAMERA2"

    const-string v0, "camera client is evicted by other application"

    .line 2
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v1, v0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1f

    const/4 v3, 0x6

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JI)V

    :cond_1f
    const-string v0, "Camera device enter state: EVICTED"

    .line 5
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 7
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 8
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1702(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 9
    :cond_3b
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_42
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 11

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne p1, v0, :cond_b

    return-void

    .line 2
    :cond_b
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 3
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1702(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 5
    :cond_22
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraDevice Error :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAMERA2"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6a

    const/16 v2, 0x385

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne p2, v7, :cond_58

    const/4 v2, 0x1

    goto :goto_67

    :cond_58
    if-ne p2, v6, :cond_5c

    const/4 v2, 0x2

    goto :goto_67

    :cond_5c
    if-ne p2, v5, :cond_60

    const/4 v2, 0x3

    goto :goto_67

    :cond_60
    if-ne p2, v4, :cond_64

    const/4 v2, 0x4

    goto :goto_67

    :cond_64
    if-ne p2, v3, :cond_67

    const/4 v2, 0x5

    .line 8
    :cond_67
    :goto_67
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JI)V

    :cond_6a
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1702(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1800(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result p1

    if-gez p1, :cond_39

    .line 3
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1900(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p1, v0, :cond_23

    .line 5
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_23
    const-string p1, "CAMERA2"

    const-string v0, "Camera startCapture failed!!"

    .line 6
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_39

    const/16 v2, 0x64

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JI)V

    :cond_39
    return-void
.end method
