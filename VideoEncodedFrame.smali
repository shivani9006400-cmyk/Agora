# classes13.dex

.class public Lio/agora/rtc/VideoEncodedFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODEC_TYPE_E264:I = 0x4

.field public static final CODEC_TYPE_EVP:I = 0x3

.field public static final CODEC_TYPE_H264:I = 0x2

.field public static final CODEC_TYPE_VP8:I = 0x1

.field public static final FRAME_TYPE_B:I = 0x5

.field public static final FRAME_TYPE_BLANK:I = 0x0

.field public static final FRAME_TYPE_DELTA:I = 0x4

.field public static final FRAME_TYPE_KEY:I = 0x3


# instance fields
.field public codecType:I

.field public frameType:I

.field public height:I

.field public imageBuffer:Ljava/nio/ByteBuffer;

.field public length:I

.field public renderTimeMs:J

.field public rotation:I

.field public width:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;IIIIIJ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/agora/rtc/VideoEncodedFrame;->codecType:I

    .line 3
    iput p4, p0, Lio/agora/rtc/VideoEncodedFrame;->width:I

    .line 4
    iput p5, p0, Lio/agora/rtc/VideoEncodedFrame;->height:I

    .line 5
    iput-object p2, p0, Lio/agora/rtc/VideoEncodedFrame;->imageBuffer:Ljava/nio/ByteBuffer;

    .line 6
    iput p3, p0, Lio/agora/rtc/VideoEncodedFrame;->length:I

    .line 7
    iput p6, p0, Lio/agora/rtc/VideoEncodedFrame;->frameType:I

    .line 8
    iput p7, p0, Lio/agora/rtc/VideoEncodedFrame;->rotation:I

    .line 9
    iput-wide p8, p0, Lio/agora/rtc/VideoEncodedFrame;->renderTimeMs:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoEncodedFrame{codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/VideoEncodedFrame;->codecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/VideoEncodedFrame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/VideoEncodedFrame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/VideoEncodedFrame;->frameType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/VideoEncodedFrame;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", renderTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/rtc/VideoEncodedFrame;->renderTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", imageBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/VideoEncodedFrame;->imageBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/VideoEncodedFrame;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
