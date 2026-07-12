# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoEncoder$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/agora/rtc/video/MediaCodecVideoEncoder$2;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder$2;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2$1;->this$1:Lio/agora/rtc/video/MediaCodecVideoEncoder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2$1;->this$1:Lio/agora/rtc/video/MediaCodecVideoEncoder$2;

    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2$1;->this$1:Lio/agora/rtc/video/MediaCodecVideoEncoder$2;

    iget-object v2, v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2$1;->this$1:Lio/agora/rtc/video/MediaCodecVideoEncoder$2;

    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void
.end method
