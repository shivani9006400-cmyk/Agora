# classes13.dex

.class public Lio/agora/rtc/mediaio/AgoraDefaultRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoSink;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .registers 8

    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .registers 8

    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
    .registers 9

    return-void
.end method

.method public getBufferType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEGLContextHandle()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPixelFormat()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDispose()V
    .registers 1

    return-void
.end method

.method public onInitialize()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
