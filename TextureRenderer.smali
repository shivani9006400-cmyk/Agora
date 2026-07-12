# classes13.dex

.class public Lio/agora/rtc/video/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COORDS_PER_VERTEX:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "TextureRenderer"

.field public static squareVertices:[F


# instance fields
.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private drawOrder:[S

.field private final mFragmentShaderOes:Ljava/lang/String;

.field private final mFragmentShaderRgba:Ljava/lang/String;

.field private mMVPMatrix:[F

.field private mOesTexture:Z

.field private final mProgram:I

.field private mSTMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field public textureVertices:[F

.field private textureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexStride:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lio/agora/rtc/video/TextureRenderer;->squareVertices:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\nvec4 tex4 = vec4(inputTextureCoordinate.xy, 1.0, 1.0);\ntextureCoordinate = (uSTMatrix * tex4).xy;\n}"

    .line 2
    iput-object v0, p0, Lio/agora/rtc/video/TextureRenderer;->mVertexShader:Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}"

    .line 3
    iput-object v1, p0, Lio/agora/rtc/video/TextureRenderer;->mFragmentShaderOes:Ljava/lang/String;

    const-string v2, "precision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}"

    .line 4
    iput-object v2, p0, Lio/agora/rtc/video/TextureRenderer;->mFragmentShaderRgba:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 5
    fill-array-data v4, :array_d0

    iput-object v4, p0, Lio/agora/rtc/video/TextureRenderer;->textureVertices:[F

    const/4 v4, 0x6

    new-array v4, v4, [S

    .line 6
    fill-array-data v4, :array_e4

    iput-object v4, p0, Lio/agora/rtc/video/TextureRenderer;->drawOrder:[S

    .line 7
    iput v3, p0, Lio/agora/rtc/video/TextureRenderer;->vertexStride:I

    const/16 v3, 0x10

    new-array v4, v3, [F

    .line 8
    iput-object v4, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    new-array v3, v3, [F

    .line 9
    iput-object v3, p0, Lio/agora/rtc/video/TextureRenderer;->mSTMatrix:[F

    .line 10
    iput-boolean p1, p0, Lio/agora/rtc/video/TextureRenderer;->mOesTexture:Z

    .line 11
    sget-object p1, Lio/agora/rtc/video/TextureRenderer;->squareVertices:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 14
    sget-object v3, Lio/agora/rtc/video/TextureRenderer;->squareVertices:[F

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 15
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->drawOrder:[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 19
    iget-object v4, p0, Lio/agora/rtc/video/TextureRenderer;->drawOrder:[S

    invoke-virtual {p1, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 20
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->textureVertices:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 22
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 24
    iget-object v4, p0, Lio/agora/rtc/video/TextureRenderer;->textureVertices:[F

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 25
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const p1, 0x8b31

    .line 26
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    .line 27
    iget-boolean v0, p0, Lio/agora/rtc/video/TextureRenderer;->mOesTexture:Z

    const v4, 0x8b30

    if-eqz v0, :cond_a2

    .line 28
    invoke-direct {p0, v4, v1}, Lio/agora/rtc/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    goto :goto_a6

    .line 29
    :cond_a2
    invoke-direct {p0, v4, v2}, Lio/agora/rtc/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 30
    :goto_a6
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lio/agora/rtc/video/TextureRenderer;->mProgram:I

    .line 31
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 32
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 33
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string p1, "uMVPMatrix"

    .line 34
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/TextureRenderer;->muMVPMatrixHandle:I

    const-string p1, "uSTMatrix"

    .line 35
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/TextureRenderer;->muSTMatrixHandle:I

    .line 36
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 37
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_d0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_e4
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method

.method private printMatrix([F)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v3, v2, 0x0

    aget v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x2

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextureRenderer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3e
    return-void
.end method


# virtual methods
.method public draw(I)V
    .registers 10

    .line 1
    iget v0, p0, Lio/agora/rtc/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 3
    iget-boolean v0, p0, Lio/agora/rtc/video/TextureRenderer;->mOesTexture:Z

    if-eqz v0, :cond_16

    const v0, 0x8d65

    .line 4
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1b

    :cond_16
    const/16 v0, 0xde1

    .line 5
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    :goto_1b
    iget p1, p0, Lio/agora/rtc/video/TextureRenderer;->mProgram:I

    const-string v0, "position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 8
    iget-object v6, p0, Lio/agora/rtc/video/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v1, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget v0, p0, Lio/agora/rtc/video/TextureRenderer;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 11
    iget-object v7, p0, Lio/agora/rtc/video/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 12
    iget v1, p0, Lio/agora/rtc/video/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v2, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 13
    iget v1, p0, Lio/agora/rtc/video/TextureRenderer;->muSTMatrixHandle:I

    iget-object v2, p0, Lio/agora/rtc/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x4

    .line 14
    iget-object v2, p0, Lio/agora/rtc/video/TextureRenderer;->drawOrder:[S

    array-length v2, v2

    const/16 v3, 0x1403

    iget-object v5, p0, Lio/agora/rtc/video/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v1, v2, v3, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 15
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public draw(I[F)V
    .registers 6

    const/4 v0, 0x0

    .line 18
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 19
    iget-object v1, p0, Lio/agora/rtc/video/TextureRenderer;->mSTMatrix:[F

    aget v2, p2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20
    :cond_d
    invoke-virtual {p0, p1}, Lio/agora/rtc/video/TextureRenderer;->draw(I)V

    return-void
.end method

.method public flip(ZZ)V
    .registers 7

    if-nez p1, :cond_4

    if-eqz p2, :cond_1a

    :cond_4
    iget-object v0, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000  # -1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_10

    const/high16 p1, -0x40800000  # -1.0f

    goto :goto_12

    :cond_10
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_12
    if-eqz p2, :cond_15

    goto :goto_17

    :cond_15
    const/high16 v2, 0x3f800000  # 1.0f

    :goto_17
    invoke-static {v0, v1, p1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_1a
    return-void
.end method

.method public rotate(I)V
    .registers 6

    int-to-double v0, p1

    const-wide v2, 0x4066800000000000L  # 180.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    mul-double v0, v0, v2

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    .line 3
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x4

    aput v2, p1, v3

    .line 4
    iget-object p1, p0, Lio/agora/rtc/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    return-void
.end method
