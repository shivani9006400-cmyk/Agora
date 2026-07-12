# classes13.dex

.class public Lio/agora/rtc/video/TextureRendererHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "TextureRendererHelper"

.field private static final VERBOSE:Z = false


# instance fields
.field private drawer:Lio/agora/rtc/gl/GlRectDrawer;

.field private eglAttached:Z

.field private eglBase:Lio/agora/rtc/gl/EglBase;

.field private localEglType:I

.field private localRealEglContext:Ljava/lang/Object;

.field private oesTextureId:I

.field private oldHeight:I

.field private oldWidth:I

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceTextureRecreated:Z

.field private textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

.field private textureRenderer:Lio/agora/rtc/video/TextureRenderer;

.field private volatile textureSourceIncoming:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglAttached:Z

    .line 4
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    .line 6
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 7
    iput-boolean v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTextureRecreated:Z

    .line 8
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureRenderer:Lio/agora/rtc/video/TextureRenderer;

    .line 9
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    .line 10
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    .line 11
    iput v2, p0, Lio/agora/rtc/video/TextureRendererHelper;->oldWidth:I

    .line 12
    iput v2, p0, Lio/agora/rtc/video/TextureRendererHelper;->oldHeight:I

    .line 13
    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->localRealEglContext:Ljava/lang/Object;

    .line 14
    iput v2, p0, Lio/agora/rtc/video/TextureRendererHelper;->localEglType:I

    .line 15
    iput-boolean v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureSourceIncoming:Z

    return-void
.end method

.method private setupSurfaceTexture(Lio/agora/rtc/video/GLRendererController;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_28

    if-eqz p1, :cond_28

    const v0, 0x8d65

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(IZ)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    .line 3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 5
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTextureRecreated:Z

    :cond_28
    return-void
.end method


# virtual methods
.method public createProducerResourceIfNeeded(Lio/agora/rtc/gl/EglBase$Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-nez v0, :cond_32

    .line 2
    :try_start_4
    invoke-static {p1}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/gl/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/view/Surface;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_2b

    :catch_10
    move-exception p1

    .line 4
    sget-object v0, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got exception when create eglbase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_2b
    new-instance p1, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {p1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    :cond_32
    return-void
.end method

.method public getTextureFrame()Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    if-eqz v0, :cond_b

    .line 2
    iget v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    iput v1, v0, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->texId:I

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->textureType:I

    :cond_b
    return-object v0
.end method

.method public isTextureSourceIncoming()Z
    .registers 2

    iget-boolean v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureSourceIncoming:Z

    return v0
.end method

.method public onDrawFrame(Lio/agora/rtc/video/GLRendererController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "setupSurfaceTexture"

    .line 1
    invoke-static {v0}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/TextureRendererHelper;->setupSurfaceTexture(Lio/agora/rtc/video/GLRendererController;)V

    .line 3
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/high16 p1, 0x3f800000  # 1.0f

    .line 5
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 7
    :cond_1b
    iget-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_26

    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_26

    .line 8
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 9
    :cond_26
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 10
    iget-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureRenderer:Lio/agora/rtc/video/TextureRenderer;

    if-nez p1, :cond_38

    .line 11
    new-instance p1, Lio/agora/rtc/video/TextureRenderer;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lio/agora/rtc/video/TextureRenderer;-><init>(Z)V

    iput-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureRenderer:Lio/agora/rtc/video/TextureRenderer;

    .line 12
    :cond_38
    iget-object p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureRenderer:Lio/agora/rtc/video/TextureRenderer;

    iget v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/video/TextureRenderer;->draw(I)V

    :cond_3f
    return-void
.end method

.method public onFrameAvailable(Lio/agora/rtc/video/GLRendererController;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lio/agora/rtc/video/GLRendererController;->ReDraw()V

    :cond_5
    return-void
.end method

.method public onSurfaceChanged(Lio/agora/rtc/video/GLRendererController;II)V
    .registers 7

    .line 1
    sget-object v0, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged, w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseSurfaceTexture()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->oldWidth:I

    .line 4
    iput v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->oldHeight:I

    .line 5
    invoke-direct {p0, p1}, Lio/agora/rtc/video/TextureRendererHelper;->setupSurfaceTexture(Lio/agora/rtc/video/GLRendererController;)V

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result p1

    if-eqz p1, :cond_3f

    const/4 p1, 0x0

    .line 7
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_3f
    return-void
.end method

.method public onTextureFrameArrived(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJZ)V
    .registers 19

    move-object v1, p0

    if-nez p1, :cond_b

    .line 1
    sget-object v0, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    const-string v2, "texture buffer is null."

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_b
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->retain()V

    .line 3
    iget-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_143

    iget-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_18

    goto/16 :goto_143

    .line 4
    :cond_18
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getRealEglContext()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->localRealEglContext:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getEglType()I

    move-result v0

    iget v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->localEglType:I

    if-eq v0, v2, :cond_3b

    .line 6
    :cond_2c
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getRealEglContext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->localRealEglContext:Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getEglType()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->localEglType:I

    .line 8
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseProducerResourceIfNotYet()V

    .line 9
    :cond_3b
    iget v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->oldWidth:I

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_4b

    iget v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->oldHeight:I

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_67

    .line 10
    :cond_4b
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->oldWidth:I

    .line 11
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v0

    iput v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->oldHeight:I

    .line 12
    iget-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseProducerResourceIfNotYet()V

    .line 14
    :cond_67
    iget-boolean v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTextureRecreated:Z

    if-eqz v0, :cond_71

    .line 15
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseProducerResourceIfNotYet()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTextureRecreated:Z

    :cond_71
    const-string v0, "prepare@render"

    .line 17
    invoke-static {v0}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/TextureRendererHelper;->createProducerResourceIfNeeded(Lio/agora/rtc/gl/EglBase$Context;)V

    .line 19
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    .line 20
    iget-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    if-nez v0, :cond_8b

    .line 21
    new-instance v0, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;-><init>(Lio/agora/rtc/video/TextureRendererHelper;)V

    iput-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    .line 22
    :cond_8b
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v3

    .line 23
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v9

    .line 25
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v10

    .line 26
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 27
    invoke-static {v2}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v4

    .line 28
    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v5

    iput v5, v2, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->frameWidth:I

    .line 29
    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v5

    iput v5, v2, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->frameHeight:I

    .line 30
    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->textureFrame:Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    move v5, p2

    iput v5, v2, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->rotation:I

    move-wide v5, p3

    .line 31
    iput-wide v5, v2, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->renderMs:J

    move-wide/from16 v5, p5

    .line 32
    iput-wide v5, v2, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->firstRecvTimestamp:J

    move/from16 v5, p7

    .line 33
    iput-boolean v5, v2, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->isDummy:Z

    :try_start_c3
    const-string v2, "makeCurrent@render"

    .line 34
    invoke-static {v2}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 35
    iget-boolean v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->eglAttached:Z

    if-nez v2, :cond_fe

    .line 36
    sget-object v2, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attaching egl context, this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", thread id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v2, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v2}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V

    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->eglAttached:Z

    .line 41
    :cond_fe
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const-string v2, "glClear@render"

    .line 42
    invoke-static {v2}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const/16 v2, 0x4000

    .line 43
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 44
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const-string v2, "draw@render"

    .line 45
    invoke-static {v2}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 46
    sget-object v2, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    if-ne v0, v2, :cond_121

    .line 47
    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v9

    move v6, v10

    invoke-virtual/range {v2 .. v10}, Lio/agora/rtc/gl/GlRectDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_12a

    .line 48
    :cond_121
    iget-object v2, v1, Lio/agora/rtc/video/TextureRendererHelper;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v9

    move v6, v10

    invoke-virtual/range {v2 .. v10}, Lio/agora/rtc/gl/GlRectDrawer;->drawOes(I[FIIIIII)V

    .line 49
    :goto_12a
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const-string v0, "swapBuffers@render"

    .line 50
    invoke-static {v0}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 51
    iget-object v0, v1, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    .line 52
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_13a} :catch_13b

    goto :goto_13f

    :catch_13b
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_13f
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void

    .line 55
    :cond_143
    :goto_143
    sget-object v0, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    const-string v2, "frame is ready, but the gl renderer thread is not ready yet."

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseProducerResourceIfNotYet()V

    .line 57
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public releaseProducerResourceIfNotYet()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    :try_start_5
    sget-object v0, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release gl resource, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglAttached:Z

    if-nez v0, :cond_38

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V

    .line 7
    :cond_38
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 8
    invoke-virtual {v0}, Lio/agora/rtc/gl/GlRectDrawer;->release()V

    .line 9
    iput-object v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 10
    :cond_42
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 11
    iput-object v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->eglAttached:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_51
    return-void
.end method

.method public releaseSurfaceTexture()V
    .registers 5

    .line 1
    sget-object v0, Lio/agora/rtc/video/TextureRendererHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release surface texture, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4
    iput-object v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->surface:Landroid/view/Surface;

    .line 5
    :cond_24
    iget-object v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2d

    .line 6
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 7
    iput-object v1, p0, Lio/agora/rtc/video/TextureRendererHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    :cond_2d
    iget v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    if-ltz v0, :cond_3d

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 9
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lio/agora/rtc/video/TextureRendererHelper;->oesTextureId:I

    :cond_3d
    return-void
.end method

.method public setTextureSourceIncoming(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/agora/rtc/video/TextureRendererHelper;->textureSourceIncoming:Z

    return-void
.end method

.method public useJavaRender()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
