# classes13.dex

.class public Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoFrameConsumer;


# instance fields
.field private mCaptureHandle:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .registers 19

    move v4, p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v4, v2, :cond_1d

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1d

    if-ne v4, v1, :cond_d

    goto :goto_1d

    :cond_d
    const/4 v1, 0x4

    if-eq v4, v1, :cond_18

    if-eq v4, v0, :cond_18

    const/4 v0, 0x7

    if-ne v4, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, -0x1

    goto :goto_2c

    :cond_18
    :goto_18
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    goto :goto_2c

    :cond_1d
    :goto_1d
    add-int/lit8 v2, p3, 0x1

    shr-int/2addr v2, v1

    add-int/lit8 v3, p4, 0x1

    shr-int/lit8 v1, v3, 0x1

    mul-int v3, p3, p4

    mul-int v2, v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v3, v2

    .line 1
    :goto_2c
    rem-int/lit8 v1, p5, 0x5a

    const-string v2, "IVideoFrameConsumer"

    if-eqz v1, :cond_3a

    const-string v1, "consumeByteArrayFrame rotation is not times of 90, set rotation to 0!"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_3c

    :cond_3a
    move/from16 v7, p5

    :goto_3c
    if-eqz v0, :cond_53

    move-object v3, p1

    if-lez v0, :cond_45

    .line 3
    array-length v1, v3

    if-ge v1, v0, :cond_45

    goto :goto_53

    :cond_45
    move-object v10, p0

    .line 4
    iget-wide v1, v10, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteArrayFrame(J[BIIIIJ)V

    goto :goto_68

    :cond_53
    :goto_53
    move-object v10, p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The size of consumeByteArrayFrame is illegal, format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .registers 19

    .line 1
    rem-int/lit8 v0, p5, 0x5a

    if-eqz v0, :cond_f

    const-string v0, "IVideoFrameConsumer"

    const-string v1, "consumeByteArrayFrame rotation is not times of 90, set rotation to 0!"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    goto :goto_12

    :cond_f
    move-object v0, p0

    move/from16 v8, p5

    .line 3
    :goto_12
    iget-wide v2, v0, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
    .registers 22

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    .line 2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_2f

    .line 3
    rem-int/lit8 v0, p5, 0x5a

    if-eqz v0, :cond_1b

    const-string v0, "IVideoFrameConsumer"

    const-string v1, "consumeByteArrayFrame rotation is not times of 90, set rotation to 0!"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object v12, p0

    goto :goto_1e

    :cond_1b
    move-object v12, p0

    move/from16 v8, p5

    .line 5
    :goto_1e
    iget-wide v1, v12, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V

    return-void

    :cond_2f
    move-object v12, p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public native provideByteArrayFrame(J[BIIIIJ)V
.end method

.method public native provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V
.end method

.method public native provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V
.end method
