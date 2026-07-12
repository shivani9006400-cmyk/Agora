# classes13.dex

.class public Lio/agora/rtc/gdp/EglSurfaceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "GDPGlUtil"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field public mEglCore:Lio/agora/rtc/gdp/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/gdp/EglCore;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    .line 4
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    .line 5
    iput-object p1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/gdp/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    iput p1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    .line 4
    iput p2, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    return-void

    .line 5
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gdp/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .registers 4

    .line 1
    iget v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    if-gez v0, :cond_e

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/gdp/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_e
    return v0
.end method

.method public getWidth()I
    .registers 4

    .line 1
    iget v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    if-gez v0, :cond_e

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/gdp/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_e
    return v0
.end method

.method public makeCurrent()V
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public makeCurrentReadFrom(Lio/agora/rtc/gdp/EglSurfaceBase;)V
    .registers 4

    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object p1, p1, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1}, Lio/agora/rtc/gdp/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public releaseEglSurface()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/gdp/EglSurfaceBase;->getWidth()I

    move-result v7

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/gdp/EglSurfaceBase;->getHeight()I

    move-result v8

    mul-int v0, v7, v8

    mul-int/lit8 v0, v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 6
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, v7

    move v3, v8

    move-object v6, v9

    .line 7
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v0, "glReadPixels"

    .line 8
    invoke-static {v0}, Lio/agora/rtc/gdp/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 10
    :try_start_38
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_87

    .line 11
    :try_start_42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 13
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_84

    .line 15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frame as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GDPGlUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_84
    move-exception p1

    move-object v0, v1

    goto :goto_88

    :catchall_87
    move-exception p1

    :goto_88
    if-eqz v0, :cond_8d

    .line 17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 18
    :cond_8d
    throw p1

    .line 19
    :cond_8e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected EGL context/surface is not current"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPresentationTime(J)V
    .registers 5

    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lio/agora/rtc/gdp/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v1, "GDPGlUtil"

    const-string v2, "WARNING: swapBuffers() failed"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v0
.end method
