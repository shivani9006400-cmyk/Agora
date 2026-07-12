# classes13.dex

.class Lio/agora/rtc/video/VideoCaptureCamera$4;
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
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 2
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {p2, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$400(Lio/agora/rtc/video/VideoCaptureCamera;[Landroid/hardware/Camera$Face;)V

    :cond_d
    return-void
.end method
