# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaCodecEncoderCallback"
.end annotation


# instance fields
.field public stale:Z

.field public final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 5

    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputBufferAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$500(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_1d
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    if-eqz v0, :cond_2c

    .line 4
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "discard stale available input buffer"

    invoke-static {p2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_2c
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3b

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 10

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputBufferAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$500(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_1d
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    if-eqz v0, :cond_2c

    .line 4
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "discard stale available output buffer"

    invoke-static {p2, p3}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_ee

    return-void

    .line 6
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_52

    .line 7
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get output buffer, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_50} :catch_d3
    .catchall {:try_start_2c .. :try_end_50} :catchall_ee

    .line 8
    :try_start_50
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_ee

    return-void

    :cond_52
    const/4 v1, 0x0

    .line 9
    :try_start_53
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    if-eqz v2, :cond_98

    .line 10
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[async] Config frame generated. Offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {v2, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1002(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 12
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1000(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_b2

    .line 13
    :cond_98
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v2, p3, p2, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1100(Lio/agora/rtc/video/MediaCodecVideoEncoder;Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object p3

    .line 14
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1200(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    move-result-wide v4

    invoke-static {v0, v4, v5, v3, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1300(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_a7} :catch_a8
    .catchall {:try_start_53 .. :try_end_a7} :catchall_ee

    goto :goto_b2

    :catch_a8
    move-exception p3

    .line 15
    :try_start_a9
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handle output buffer error"

    invoke-static {v0, v2, p3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_b2
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseOutputBuffer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/lang/String;)V

    .line 17
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 18
    monitor-exit p1

    return-void

    :catch_d3
    move-exception p3

    .line 19
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOutputBuffer exception, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    monitor-exit p1

    return-void

    :catchall_ee
    move-exception p2

    .line 21
    monitor-exit p1
    :try_end_f0
    .catchall {:try_start_a9 .. :try_end_f0} :catchall_ee

    throw p2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 5

    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
