# classes13.dex

.class Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageReaderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2100(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_8
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object v2

    sget-object v3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne v2, v3, :cond_124

    if-nez p1, :cond_16

    goto/16 :goto_124

    .line 3
    :cond_16
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v2

    if-eqz v2, :cond_122

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_122

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/media/ImageReader;

    move-result-object v2

    if-nez v2, :cond_31

    goto/16 :goto_122

    .line 4
    :cond_31
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2400(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_38} :catch_128
    .catchall {:try_start_8 .. :try_end_38} :catchall_126

    .line 5
    :try_start_38
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_117

    .line 6
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_4e

    .line 7
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_11f

    if-eqz v1, :cond_4c

    .line 8
    :try_start_49
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_13d

    return-void

    .line 9
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_ea

    .line 10
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_60

    goto/16 :goto_ea

    .line 11
    :cond_60
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_ab

    .line 12
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_ab

    .line 13
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2500(Landroid/media/Image;[B)V

    .line 14
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v4, v3, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_a3

    .line 15
    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v4

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget v5, p1, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    .line 16
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v6

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v7

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2600(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v8

    .line 17
    invoke-virtual/range {v3 .. v8}, Lio/agora/rtc/video/VideoCapture;->onRawBufferAvailable([BIIII)V

    goto :goto_117

    :cond_a3
    const-string p1, "CAMERA2"

    const-string v3, "warning mNativeVideoCaptureDeviceAndroid = 0, error"

    .line 18
    invoke-static {p1, v3}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 19
    :cond_ab
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageReader size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " did not match Image size: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ea
    :goto_ea
    const-string p1, "CAMERA2"

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected image format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "or #planes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {p1, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    monitor-exit v2
    :try_end_112
    .catchall {:try_start_4e .. :try_end_112} :catchall_11f

    .line 27
    :try_start_112
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_112 .. :try_end_116} :catchall_13d

    return-void

    .line 28
    :cond_117
    :goto_117
    :try_start_117
    monitor-exit v2
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_11f

    if-eqz v1, :cond_11d

    .line 29
    :try_start_11a
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 30
    :cond_11d
    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_11a .. :try_end_11e} :catchall_13d

    return-void

    :catchall_11f
    move-exception p1

    .line 31
    :try_start_120
    monitor-exit v2
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    :try_start_121
    throw p1
    :try_end_122
    .catch Ljava/lang/IllegalStateException; {:try_start_121 .. :try_end_122} :catch_128
    .catchall {:try_start_121 .. :try_end_122} :catchall_126

    .line 32
    :cond_122
    :goto_122
    :try_start_122
    monitor-exit v0

    return-void

    :cond_124
    :goto_124
    monitor-exit v0
    :try_end_125
    .catchall {:try_start_122 .. :try_end_125} :catchall_13d

    return-void

    :catchall_126
    move-exception p1

    goto :goto_137

    :catch_128
    move-exception p1

    :try_start_129
    const-string v2, "CAMERA2"

    const-string v3, "acquireLastest Image():"

    .line 33
    invoke-static {v2, v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_130
    .catchall {:try_start_129 .. :try_end_130} :catchall_126

    if-eqz v1, :cond_135

    .line 34
    :try_start_132
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_135
    monitor-exit v0

    return-void

    :goto_137
    if-eqz v1, :cond_13c

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 35
    :cond_13c
    throw p1

    :catchall_13d
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_132 .. :try_end_13f} :catchall_13d

    throw p1
.end method
