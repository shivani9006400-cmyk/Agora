# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBufferInfo"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final index:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;->index:I

    .line 3
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
