# classes13.dex

.class public Lio/agora/rtc/gl/RgbaBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/VideoFrame$Buffer;


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mHeight:I

.field private mWidth:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IILjava/lang/Runnable;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCountLock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/agora/rtc/gl/RgbaBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 4
    iput p2, p0, Lio/agora/rtc/gl/RgbaBuffer;->mWidth:I

    .line 5
    iput p3, p0, Lio/agora/rtc/gl/RgbaBuffer;->mHeight:I

    .line 6
    iput-object p4, p0, Lio/agora/rtc/gl/RgbaBuffer;->releaseCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .registers 7

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->mWidth:I

    return v0
.end method

.method public release()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    if-nez v1, :cond_12

    iget-object v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_12

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public retain()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
