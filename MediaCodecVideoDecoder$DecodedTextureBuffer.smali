# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodedTextureBuffer"
.end annotation


# instance fields
.field private final bufferedFrames:J

.field private final decodeTimeMs:J

.field private final frameDelayMs:J

.field private final ntpTimeStampMs:J

.field private final presentationTimeStampMs:J

.field public textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

.field private final timeStamp:J

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>([FJJJJJLio/agora/rtc/gl/VideoFrame$TextureBuffer;J)V
    .registers 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->transformMatrix:[F

    .line 3
    iput-wide p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->presentationTimeStampMs:J

    .line 4
    iput-wide p4, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->timeStamp:J

    .line 5
    iput-wide p6, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->ntpTimeStampMs:J

    .line 6
    iput-wide p8, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->decodeTimeMs:J

    .line 7
    iput-wide p10, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->frameDelayMs:J

    .line 8
    iput-object p12, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    .line 9
    iput-wide p13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;->bufferedFrames:J

    return-void
.end method
