# classes13.dex

.class Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$300(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/media/MediaExtractor;

    move-result-object v0

    const-string v1, "MediaCodec Audio Decoder"

    if-eqz v0, :cond_2d

    .line 2
    :try_start_a
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$300(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_13
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_2d

    :catch_14
    move-exception v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mMediaExtractor release exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$600(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaExtractor released in thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$2;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    .line 6
    invoke-static {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$100(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
