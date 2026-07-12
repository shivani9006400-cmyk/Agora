# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoDecoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

.field public final synthetic val$mediaCodecFinal:Landroid/media/MediaCodec;

.field public final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/MediaCodecVideoDecoder;Landroid/media/MediaCodec;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;->val$mediaCodecFinal:Landroid/media/MediaCodec;

    iput-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "MediaCodecVideoDecoder"

    :try_start_2
    const-string v1, "Java releaseDecoder on release thread"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;->val$mediaCodecFinal:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;->val$mediaCodecFinal:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const-string v1, "Java releaseDecoder on release thread done"

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v1

    const-string v2, "Media decoder release failed"

    .line 5
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1d
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
