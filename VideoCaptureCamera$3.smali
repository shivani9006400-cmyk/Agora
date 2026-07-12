# classes13.dex

.class Lio/agora/rtc/video/VideoCaptureCamera$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->tryStartCapture(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mLastFocusedTs:J

.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$400(Lio/agora/rtc/video/VideoCaptureCamera;[Landroid/hardware/Camera$Face;)V

    :cond_d
    if-eqz p1, :cond_c7

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_c7

    if-eqz p2, :cond_c7

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$500(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_c7

    .line 4
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->mLastFocusedTs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_3e

    .line 5
    aget-object p2, p1, v4

    iget p2, p2, Landroid/hardware/Camera$Face;->score:I

    const/16 v0, 0x14

    if-le p2, v0, :cond_3d

    .line 6
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    aget-object p1, p1, v4

    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {p2, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$600(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V

    :cond_3d
    return-void

    .line 7
    :cond_3e
    aget-object v0, p1, v4

    iget v0, v0, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x32

    const-string v2, "CAMERA1"

    if-gt v0, v1, :cond_61

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "face score = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    iget p1, p1, Landroid/hardware/Camera$Face;->score:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_61
    :try_start_61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Landroid/hardware/Camera$Area;

    aget-object v3, p1, v4

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    const/16 v5, 0x3e8

    invoke-direct {v1, v3, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_85

    .line 13
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 14
    :cond_85
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_96

    .line 15
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 16
    :cond_96
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    aget-object p1, p1, v4

    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$600(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V

    .line 17
    new-instance p1, Lio/agora/rtc/video/VideoCaptureCamera$3$1;

    invoke-direct {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$3$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera$3;)V

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$3;->mLastFocusedTs:J
    :try_end_ad
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_ad} :catch_ae

    goto :goto_c7

    :catch_ae
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in onFaceDetection callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c7
    :goto_c7
    return-void
.end method
