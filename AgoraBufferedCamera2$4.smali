# classes13.dex

.class Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;


# direct methods
.method public constructor <init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Configure camera failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1002(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    :try_start_e
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1200(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1102(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 4
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1000(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_36
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_36} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_36} :catch_37

    goto :goto_3d

    :catch_37
    move-exception p1

    goto :goto_3a

    :catch_39
    move-exception p1

    .line 5
    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3d
    return-void
.end method
