# classes13.dex

.class public Lio/agora/rtc/utils/YuvUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/utils/YuvUtils$Plane;
    }
.end annotation


# static fields
.field public static final I420:I = 0x23

.field public static final NV21:I = 0x11

.field private static final TAG:Ljava/lang/String; = "YuvUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageData(Landroid/media/Image;I)[B
    .registers 22

    move/from16 v0, p1

    const/16 v1, 0x11

    const/16 v2, 0x23

    if-eq v0, v2, :cond_13

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_13
    :goto_13
    invoke-static/range {p0 .. p0}, Lio/agora/rtc/utils/YuvUtils;->supportedImageFormat(Landroid/media/Image;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    mul-int v8, v5, v6

    .line 8
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int v4, v4, v8

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v9, 0x0

    .line 9
    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 10
    :goto_46
    array-length v15, v7

    if-ge v12, v15, :cond_e0

    const/4 v15, 0x2

    if-eqz v12, :cond_68

    if-eq v12, v11, :cond_5e

    if-eq v12, v15, :cond_51

    goto :goto_6a

    :cond_51
    if-ne v0, v2, :cond_5a

    int-to-double v13, v8

    const-wide/high16 v15, 0x3ff4000000000000L  # 1.25

    mul-double v13, v13, v15

    double-to-int v13, v13

    goto :goto_69

    :cond_5a
    if-ne v0, v1, :cond_6a

    move v13, v8

    goto :goto_66

    :cond_5e
    if-ne v0, v2, :cond_62

    move v13, v8

    goto :goto_69

    :cond_62
    if-ne v0, v1, :cond_6a

    add-int/lit8 v13, v8, 0x1

    :goto_66
    const/4 v14, 0x2

    goto :goto_6a

    :cond_68
    const/4 v13, 0x0

    :goto_69
    const/4 v14, 0x1

    .line 11
    :cond_6a
    :goto_6a
    aget-object v15, v7, v12

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 12
    aget-object v16, v7, v12

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 13
    aget-object v17, v7, v12

    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-nez v12, :cond_81

    const/16 v17, 0x0

    goto :goto_83

    :cond_81
    const/16 v17, 0x1

    :goto_83
    shr-int v2, v5, v17

    shr-int v9, v6, v17

    .line 14
    iget v11, v3, Landroid/graphics/Rect;->top:I

    shr-int v11, v11, v17

    mul-int v11, v11, v16

    iget v0, v3, Landroid/graphics/Rect;->left:I

    shr-int v0, v0, v17

    mul-int v0, v0, v1

    add-int/2addr v11, v0

    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_98
    if-ge v0, v9, :cond_d2

    const/4 v11, 0x1

    if-ne v1, v11, :cond_a7

    if-ne v14, v11, :cond_a7

    .line 15
    invoke-virtual {v15, v4, v13, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v13, v2

    move-object/from16 v18, v3

    move v3, v2

    goto :goto_bf

    :cond_a7
    add-int/lit8 v17, v2, -0x1

    mul-int v17, v17, v1

    move-object/from16 v18, v3

    add-int/lit8 v3, v17, 0x1

    const/4 v11, 0x0

    .line 16
    invoke-virtual {v15, v10, v11, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_b3
    if-ge v11, v2, :cond_bf

    mul-int v19, v11, v1

    .line 17
    aget-byte v19, v10, v19

    aput-byte v19, v4, v13

    add-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_b3

    :cond_bf
    :goto_bf
    add-int/lit8 v11, v9, -0x1

    if-ge v0, v11, :cond_cd

    .line 18
    invoke-virtual {v15}, Ljava/nio/Buffer;->position()I

    move-result v11

    add-int v11, v11, v16

    sub-int/2addr v11, v3

    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_cd
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    goto :goto_98

    :cond_d2
    move-object/from16 v18, v3

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p1

    const/16 v1, 0x11

    const/16 v2, 0x23

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_46

    :cond_e0
    return-object v4

    .line 19
    :cond_e1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supportedImageFormat(Landroid/media/Image;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_13

    const/16 v0, 0x23

    if-eq p0, v0, :cond_13

    const v0, 0x32315659

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static write420ImageToFile(Landroid/media/Image;Ljava/lang/String;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p0}, Lio/agora/rtc/utils/YuvUtils;->yuv420toNV21(Landroid/media/Image;)[B

    move-result-object v1

    .line 2
    :try_start_7
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p0, 0x64

    invoke-virtual {v6, v1, p0, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 5
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 9
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4a} :catch_4d
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    goto :goto_57

    :catchall_4b
    move-exception p0

    goto :goto_58

    :catch_4d
    move-exception p0

    .line 11
    :try_start_4e
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_4b

    :goto_57
    return-void

    .line 12
    :goto_58
    throw p0
.end method

.method public static writeNV21ToFile([BIILjava/lang/String;)Z
    .registers 11

    .line 1
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    :try_start_12
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x64

    .line 6
    invoke-virtual {v6, p0, p1, p2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2a} :catch_2c

    const/4 p0, 0x1

    return p0

    :catch_2c
    move-exception p0

    .line 9
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static writeRawData([BLjava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_30

    .line 1
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_30

    .line 2
    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 4
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 6
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_24
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    goto :goto_2e

    :catchall_22
    move-exception p0

    goto :goto_2f

    :catch_24
    move-exception p0

    .line 8
    :try_start_25
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    :goto_2e
    return-void

    .line 9
    :goto_2f
    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public static writeRgbaToFile(Ljava/nio/Buffer;IILjava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 3
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 6
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x32

    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception p0

    .line 9
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public static yuv420toNV21(Landroid/media/Image;)[B
    .registers 20

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    mul-int v5, v2, v3

    .line 6
    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int v1, v1, v5

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/4 v6, 0x0

    .line 7
    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    new-array v7, v7, [B

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 8
    :goto_2d
    array-length v12, v4

    if-ge v9, v12, :cond_a9

    const/4 v12, 0x2

    if-eqz v9, :cond_3e

    if-eq v9, v8, :cond_3a

    if-eq v9, v12, :cond_38

    goto :goto_40

    :cond_38
    move v10, v5

    goto :goto_3c

    :cond_3a
    add-int/lit8 v10, v5, 0x1

    :goto_3c
    const/4 v11, 0x2

    goto :goto_40

    :cond_3e
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 9
    :goto_40
    aget-object v12, v4, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 10
    aget-object v13, v4, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 11
    aget-object v14, v4, v9

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-nez v9, :cond_56

    const/4 v15, 0x0

    goto :goto_57

    :cond_56
    const/4 v15, 0x1

    :goto_57
    shr-int v6, v2, v15

    shr-int v8, v3, v15

    move/from16 v16, v2

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v2, v15

    mul-int v2, v2, v13

    move/from16 v17, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v15

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_6e
    if-ge v2, v8, :cond_a0

    const/4 v3, 0x1

    if-ne v14, v3, :cond_7b

    if-ne v11, v3, :cond_7b

    .line 13
    invoke-virtual {v12, v1, v10, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v6

    move v15, v6

    goto :goto_90

    :cond_7b
    add-int/lit8 v15, v6, -0x1

    mul-int v15, v15, v14

    add-int/2addr v15, v3

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v12, v7, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_84
    if-ge v3, v6, :cond_90

    mul-int v18, v3, v14

    .line 15
    aget-byte v18, v7, v18

    aput-byte v18, v1, v10

    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_90
    :goto_90
    add-int/lit8 v3, v8, -0x1

    if-ge v2, v3, :cond_9d

    .line 16
    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v13

    sub-int/2addr v3, v15

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_a0
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_2d

    :cond_a9
    return-object v1
.end method

.method public static yuv420toNV21(Lio/agora/rtc/gl/VideoFrame$I420Buffer;II)[B
    .registers 20

    move/from16 v0, p1

    move/from16 v1, p2

    .line 19
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x3

    new-array v5, v4, [Lio/agora/rtc/utils/YuvUtils$Plane;

    .line 20
    new-instance v6, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    .line 21
    new-instance v7, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v10

    invoke-direct {v7, v8, v10, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    .line 22
    new-instance v8, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v11

    invoke-direct {v8, v10, v11, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v3

    aput-object v7, v5, v9

    const/4 v6, 0x2

    aput-object v8, v5, v6

    mul-int v7, v0, v1

    const/16 v8, 0x23

    .line 23
    invoke-static {v8}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    mul-int v8, v8, v7

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    aget-object v10, v5, v3

    .line 24
    invoke-virtual {v10}, Lio/agora/rtc/utils/YuvUtils$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_55
    if-ge v11, v4, :cond_d4

    if-eqz v11, :cond_64

    if-eq v11, v9, :cond_60

    if-eq v11, v6, :cond_5e

    goto :goto_66

    :cond_5e
    move v12, v7

    goto :goto_62

    :cond_60
    add-int/lit8 v12, v7, 0x1

    :goto_62
    const/4 v13, 0x2

    goto :goto_66

    :cond_64
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 25
    :goto_66
    aget-object v14, v5, v11

    invoke-virtual {v14}, Lio/agora/rtc/utils/YuvUtils$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 26
    aget-object v15, v5, v11

    invoke-virtual {v15}, Lio/agora/rtc/utils/YuvUtils$Plane;->getRowStride()I

    move-result v15

    .line 27
    aget-object v16, v5, v11

    invoke-virtual/range {v16 .. v16}, Lio/agora/rtc/utils/YuvUtils$Plane;->getPixelStride()I

    move-result v4

    if-nez v11, :cond_7d

    const/16 v16, 0x0

    goto :goto_7f

    :cond_7d
    const/16 v16, 0x1

    :goto_7f
    shr-int v6, v0, v16

    shr-int v3, v1, v16

    .line 28
    iget v9, v2, Landroid/graphics/Rect;->top:I

    shr-int v9, v9, v16

    mul-int v9, v9, v15

    iget v0, v2, Landroid/graphics/Rect;->left:I

    shr-int v0, v0, v16

    mul-int v0, v0, v4

    add-int/2addr v9, v0

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_94
    if-ge v0, v3, :cond_c9

    const/4 v9, 0x1

    if-ne v4, v9, :cond_a1

    if-ne v13, v9, :cond_a1

    .line 29
    invoke-virtual {v14, v8, v12, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v6

    move v1, v6

    goto :goto_b7

    :cond_a1
    add-int/lit8 v16, v6, -0x1

    mul-int v16, v16, v4

    add-int/lit8 v1, v16, 0x1

    const/4 v9, 0x0

    .line 30
    invoke-virtual {v14, v10, v9, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_ab
    if-ge v9, v6, :cond_b7

    mul-int v16, v9, v4

    .line 31
    aget-byte v16, v10, v16

    aput-byte v16, v8, v12

    add-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    :cond_b7
    :goto_b7
    add-int/lit8 v9, v3, -0x1

    if-ge v0, v9, :cond_c4

    .line 32
    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int/2addr v9, v15

    sub-int/2addr v9, v1

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_c4
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p2

    goto :goto_94

    :cond_c9
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto :goto_55

    :cond_d4
    return-object v8
.end method

.method public static yuv420toNV21([BII)[B
    .registers 3

    .line 17
    invoke-static {p0, p1, p2}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p0

    .line 18
    invoke-static {p0, p1, p2}, Lio/agora/rtc/utils/YuvUtils;->yuv420toNV21(Lio/agora/rtc/gl/VideoFrame$I420Buffer;II)[B

    move-result-object p0

    return-object p0
.end method
