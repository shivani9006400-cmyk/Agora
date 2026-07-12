# classes13.dex

.class public Lio/agora/rtc/gl/TextureBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/VideoFrame$TextureBuffer;


# static fields
.field private static final VERBOSE:Z = false


# instance fields
.field private aGraphicBufferEx:Lio/agora/rtc/video/AGraphicBufferEx;

.field private final eglContext:Lio/agora/rtc/gl/EglBase$Context;

.field private final height:I

.field private final id:I

.field private oesTextureId:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final sequence:I

.field private textureConverter:Lio/agora/rtc/gl/TextureConverter;

.field private final toI420Handler:Landroid/os/Handler;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

.field private final width:I

.field private final yuvConverter:Lio/agora/rtc/gl/YuvConverter;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;)V
    .registers 21

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 15
    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;I)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 4
    iput p2, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    .line 5
    iput p3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    .line 6
    iput-object p4, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 7
    iput p5, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    .line 8
    iput-object p6, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 9
    iput-object p7, p0, Lio/agora/rtc/gl/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 10
    iput-object p8, p0, Lio/agora/rtc/gl/TextureBufferImpl;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    .line 11
    iput-object p9, p0, Lio/agora/rtc/gl/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->oesTextureId:I

    .line 14
    iput p10, p0, Lio/agora/rtc/gl/TextureBufferImpl;->sequence:I

    return-void
.end method

.method public static synthetic access$000(Lio/agora/rtc/gl/TextureBufferImpl;)Lio/agora/rtc/video/AGraphicBufferEx;
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->copyToAGraphicBufferEx()Lio/agora/rtc/video/AGraphicBufferEx;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lio/agora/rtc/gl/TextureBufferImpl;)Lio/agora/rtc/gl/YuvConverter;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    return-object p0
.end method

.method private copyToAGraphicBufferEx()Lio/agora/rtc/video/AGraphicBufferEx;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object v0

    sget-object v1, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    const v2, 0x8d65

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    const v0, 0x8d65

    const/4 v1, 0x0

    goto :goto_14

    :cond_11
    const/16 v0, 0xde1

    const/4 v1, 0x1

    .line 2
    :goto_14
    iget-object v3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->textureConverter:Lio/agora/rtc/gl/TextureConverter;

    if-nez v3, :cond_23

    .line 3
    new-instance v3, Lio/agora/rtc/gl/TextureConverter;

    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->getTextureId()I

    move-result v4

    invoke-direct {v3, v4, v0, v1}, Lio/agora/rtc/gl/TextureConverter;-><init>(III)V

    iput-object v3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->textureConverter:Lio/agora/rtc/gl/TextureConverter;

    .line 4
    :cond_23
    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->oesTextureId:I

    if-gez v0, :cond_2f

    .line 5
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->textureConverter:Lio/agora/rtc/gl/TextureConverter;

    invoke-virtual {v0, v2}, Lio/agora/rtc/gl/TextureConverter;->getOneTexture(I)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->oesTextureId:I

    .line 6
    :cond_2f
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->aGraphicBufferEx:Lio/agora/rtc/video/AGraphicBufferEx;

    if-nez v0, :cond_51

    .line 7
    new-instance v0, Lio/agora/rtc/video/AGraphicBufferEx;

    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->getHeight()I

    move-result v6

    iget-object v7, p0, Lio/agora/rtc/gl/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iget v8, p0, Lio/agora/rtc/gl/TextureBufferImpl;->oesTextureId:I

    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Lio/agora/rtc/gl/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lio/agora/rtc/video/AGraphicBufferEx;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILandroid/os/Handler;ILandroid/graphics/Matrix;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->aGraphicBufferEx:Lio/agora/rtc/video/AGraphicBufferEx;

    .line 9
    :cond_51
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->textureConverter:Lio/agora/rtc/gl/TextureConverter;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->oesTextureId:I

    invoke-virtual {v0, v2, v1}, Lio/agora/rtc/gl/TextureConverter;->convert(II)V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->aGraphicBufferEx:Lio/agora/rtc/video/AGraphicBufferEx;

    return-object v0
.end method

.method private releaseAGraphicBufferEx()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->textureConverter:Lio/agora/rtc/gl/TextureConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureConverter;->release()V

    .line 3
    iput-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->textureConverter:Lio/agora/rtc/gl/TextureConverter;

    .line 4
    :cond_a
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->aGraphicBufferEx:Lio/agora/rtc/video/AGraphicBufferEx;

    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/video/AGraphicBufferEx;->releaseNativeBuffer()V

    .line 6
    iput-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->aGraphicBufferEx:Lio/agora/rtc/video/AGraphicBufferEx;

    :cond_13
    return-void
.end method


# virtual methods
.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .registers 15

    .line 1
    new-instance v6, Landroid/graphics/Matrix;

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->retain()V

    .line 4
    new-instance p1, Lio/agora/rtc/gl/TextureBufferImpl;

    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    iget-object v4, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    iget v5, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    iget-object v7, p0, Lio/agora/rtc/gl/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iget-object v8, p0, Lio/agora/rtc/gl/TextureBufferImpl;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    new-instance v9, Lio/agora/rtc/gl/TextureBufferImpl$3;

    invoke-direct {v9, p0}, Lio/agora/rtc/gl/TextureBufferImpl$3;-><init>(Lio/agora/rtc/gl/TextureBufferImpl;)V

    iget v10, p0, Lio/agora/rtc/gl/TextureBufferImpl;->sequence:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(Lio/agora/rtc/gl/EglBase$Context;IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/rtc/gl/YuvConverter;Ljava/lang/Runnable;I)V

    return-object p1
.end method

.method public cropAndScale(IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .registers 10

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    add-int/2addr p2, p4

    sub-int p2, v1, p2

    int-to-float p1, p1

    .line 3
    iget v2, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p3

    .line 4
    iget p2, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    iget p3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 5
    invoke-virtual {p0, v0, p5, p6}, Lio/agora/rtc/gl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public flip(Z)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .registers 4

    if-eqz p1, :cond_7

    .line 1
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->verticalFlipMatrix()[F

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object p1

    .line 2
    :goto_b
    invoke-static {p1}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object p1

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    invoke-virtual {p0, p1, v0, v1}, Lio/agora/rtc/gl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    return-object v0
.end method

.method public getEglType()I
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    invoke-interface {v0}, Lio/agora/rtc/gl/EglBase$Context;->getEglType()I

    move-result v0

    return v0
.end method

.method public getGlTransformMatrix()[F
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    return v0
.end method

.method public getNativeBuffer()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNativeEglContext()J
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/agora/rtc/gl/EglBase$Context;->getNativeEglContext()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public getRealEglContext()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    invoke-interface {v0}, Lio/agora/rtc/gl/EglBase$Context;->getRealEglContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->sequence:I

    return v0
.end method

.method public getTextureId()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    return v0
.end method

.method public getTextureType()I
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    sget-object v1, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    if-ne v0, v1, :cond_9

    const/16 v0, 0xb

    goto :goto_b

    :cond_9
    const/16 v0, 0xa

    :goto_b
    return v0
.end method

.method public getToI420Handler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    return v0
.end method

.method public getYuvConverter()Lio/agora/rtc/gl/YuvConverter;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    return-object v0
.end method

.method public infoString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNativeBufferSupported()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isValidNativeBuffer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    if-nez v1, :cond_17

    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_17

    .line 3
    invoke-direct {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->releaseAGraphicBufferEx()V

    .line 4
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public retain()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

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

.method public rotate(I)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .registers 6

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_11

    .line 1
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    goto :goto_13

    :cond_11
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    :goto_13
    if-eqz v0, :cond_18

    .line 2
    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    .line 3
    :goto_1a
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000  # 0.5f

    .line 4
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p1

    .line 5
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 p1, -0x41000000  # -0.5f

    .line 6
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7
    invoke-virtual {p0, v2, v1, v0}, Lio/agora/rtc/gl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toAGraphicBufferEx()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->isNativeBufferSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/gl/TextureBufferImpl$1;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/TextureBufferImpl$1;-><init>(Lio/agora/rtc/gl/TextureBufferImpl;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    return-object v0

    .line 3
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mini api level 26 is needed, curr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc/gl/TextureBufferImpl$2;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/TextureBufferImpl$2;-><init>(Lio/agora/rtc/gl/TextureBufferImpl;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureBufferImpl{eglContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->eglContext:Lio/agora/rtc/gl/EglBase$Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTextureBuffer()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .registers 1

    return-object p0
.end method
