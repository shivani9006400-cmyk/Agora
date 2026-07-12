# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoEncoder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->doReleaseEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field public final synthetic val$caughtException:Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

.field public final synthetic val$mediaCodecFinal:Landroid/media/MediaCodec;

.field public final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Landroid/media/MediaCodec;Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$mediaCodecFinal:Landroid/media/MediaCodec;

    iput-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$caughtException:Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

    iput-object p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java releaseEncoder on release thread"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_9
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java releaseEncoder: MediaCodec.stop"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$mediaCodecFinal:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception v0

    .line 4
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Media encoder stop failed"

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_22
    :try_start_22
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java releaseEncoder: MediaCodec.release"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$mediaCodecFinal:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_31

    goto :goto_3f

    :catch_31
    move-exception v0

    .line 7
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Media encoder release failed"

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$caughtException:Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

    iput-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 9
    :goto_3f
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java releaseEncoder on release thread done"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
