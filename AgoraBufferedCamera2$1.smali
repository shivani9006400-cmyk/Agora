# classes13.dex

.class Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/AgoraBufferedCamera2;
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

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 12

    const-string v0, "x"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_7} :catch_148
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_139
    .catchall {:try_start_3 .. :try_end_7} :catchall_137

    if-nez v1, :cond_f

    if-eqz v1, :cond_e

    .line 2
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_e
    return-void

    .line 3
    :cond_f
    :try_start_f
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_10a

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_21

    goto/16 :goto_10a

    .line 4
    :cond_21
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_cf

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_cf

    .line 5
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$200(Landroid/media/Image;[B)V

    .line 6
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)I

    move-result v7

    .line 7
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    iget-object v0, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    if-eqz v0, :cond_78

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_78

    .line 8
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    iget-object v2, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    move-result-object v3

    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    move-result-object p1

    iget v4, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface/range {v2 .. v9}, Lio/agora/rtc/mediaio/IVideoFrameConsumer;->consumeByteArrayFrame([BIIIIJ)V

    goto :goto_cb

    .line 9
    :cond_78
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    iget-object v0, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    if-eqz v0, :cond_cb

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_cb

    .line 10
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v3}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 12
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    iget-object v2, p1, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;

    move-result-object p1

    iget v4, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface/range {v2 .. v9}, Lio/agora/rtc/mediaio/IVideoFrameConsumer;->consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    :try_end_cb
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_cb} :catch_148
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_cb} :catch_139
    .catchall {:try_start_f .. :try_end_cb} :catchall_137

    .line 13
    :cond_cb
    :goto_cb
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    return-void

    .line 14
    :cond_cf
    :try_start_cf
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageReader size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " did not match Image size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_10a
    :goto_10a
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected image format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "or #planes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/IllegalStateException; {:try_start_cf .. :try_end_133} :catch_148
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_133} :catch_139
    .catchall {:try_start_cf .. :try_end_133} :catchall_137

    .line 19
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    return-void

    :catchall_137
    move-exception p1

    goto :goto_158

    .line 20
    :catch_139
    :try_start_139
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fetch image failed..."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_139 .. :try_end_142} :catchall_137

    if-eqz v1, :cond_147

    .line 21
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_147
    return-void

    :catch_148
    move-exception p1

    .line 22
    :try_start_149
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "acquireLastest Image():"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_152
    .catchall {:try_start_149 .. :try_end_152} :catchall_137

    if-eqz v1, :cond_157

    .line 23
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_157
    return-void

    :goto_158
    if-eqz v1, :cond_15d

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 24
    :cond_15d
    throw p1
.end method
