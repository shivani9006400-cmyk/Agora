# classes13.dex

.class Lio/agora/rtc/video/VideoCaptureCamera$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->tryStartCapture(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 8

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: error code "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CAMERA1"

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iget-object v1, p2, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_62

    .line 3
    invoke-virtual {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->stopCapture()I

    .line 4
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_28
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iget-object p2, p2, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p2, :cond_36

    .line 6
    invoke-virtual {p2}, Landroid/hardware/Camera;->release()V

    .line 7
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    const/4 v1, 0x0

    iput-object v1, p2, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_42
    .catchall {:try_start_28 .. :try_end_36} :catchall_40

    .line 8
    :cond_36
    :goto_36
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_62

    :catchall_40
    move-exception p1

    goto :goto_58

    :catch_42
    move-exception p2

    .line 9
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera release failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_40

    goto :goto_36

    .line 10
    :goto_58
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    throw p1

    .line 12
    :cond_62
    :goto_62
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iget-wide v0, p2, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7b

    const/16 v2, 0x385

    const/4 v3, 0x2

    if-ne p1, v3, :cond_73

    const/4 v2, 0x6

    goto :goto_78

    :cond_73
    const/16 v3, 0x64

    if-ne p1, v3, :cond_78

    const/4 v2, 0x5

    .line 13
    :cond_78
    :goto_78
    invoke-virtual {p2, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JI)V

    :cond_7b
    return-void
.end method
