# classes13.dex

.class Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglHelper"
.end annotation


# instance fields
.field public mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field public mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field public mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureViewWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureViewWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private destroySurfaceImp()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2b

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2b

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-eqz v0, :cond_28

    .line 4
    invoke-static {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$700(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lio/agora/rtc/video/GLTextureViewWrapper$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_28
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_2b
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1, p2}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->throwEglException(Ljava/lang/String;I)V

    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createGL()Ljavax/microedition/khronos/opengles/GL;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-eqz v1, :cond_42

    .line 3
    invoke-static {v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$800(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$GLWrapper;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 4
    invoke-static {v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$800(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$GLWrapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/agora/rtc/video/GLTextureViewWrapper$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 5
    :cond_1e
    invoke-static {v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$900(Lio/agora/rtc/video/GLTextureViewWrapper;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-static {v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$900(Lio/agora/rtc/video/GLTextureViewWrapper;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_31

    const/4 v2, 0x1

    .line 7
    :cond_31
    invoke-static {v1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$900(Lio/agora/rtc/video/GLTextureViewWrapper;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3e

    .line 8
    new-instance v3, Lio/agora/rtc/video/GLTextureViewWrapper$LogWriter;

    invoke-direct {v3}, Lio/agora/rtc/video/GLTextureViewWrapper$LogWriter;-><init>()V

    .line 9
    :cond_3e
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_42
    return-object v0
.end method

.method public createSurface()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_85

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_7d

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_75

    .line 4
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->destroySurfaceImp()V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/GLTextureViewWrapper;

    .line 6
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    const-string v2, "EglHelper"

    const/4 v3, 0x0

    if-nez v1, :cond_2a

    const-string v0, "createWindowSurface but  wrapper\'s textureview texture is null"

    .line 7
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 8
    :cond_2a
    invoke-static {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$700(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v4, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 9
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 10
    invoke-interface {v1, v4, v5, v6, v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_65

    .line 11
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_49

    goto :goto_65

    .line 12
    :cond_49
    iget-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v0, v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 13
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    invoke-static {v1, v2, v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    return v3

    :cond_63
    const/4 v0, 0x1

    return v0

    .line 14
    :cond_65
    :goto_65
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_74

    const-string v0, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 15
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return v3

    .line 16
    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroySurface()V
    .registers 1

    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->destroySurfaceImp()V

    return-void
.end method

.method public finish()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/GLTextureViewWrapper;

    if-eqz v0, :cond_1c

    .line 3
    invoke-static {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$600(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$EGLContextFactory;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lio/agora/rtc/video/GLTextureViewWrapper$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 4
    :cond_1c
    iput-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 5
    :cond_1e
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_29

    .line 6
    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 7
    iput-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_29
    return-void
.end method

.method public start()V
    .registers 6

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_67

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/GLTextureViewWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 6
    iput-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 7
    iput-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_4d

    .line 8
    :cond_2f
    invoke-static {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$500(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lio/agora/rtc/video/GLTextureViewWrapper$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 9
    invoke-static {v0}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$600(Lio/agora/rtc/video/GLTextureViewWrapper;)Lio/agora/rtc/video/GLTextureViewWrapper$EGLContextFactory;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lio/agora/rtc/video/GLTextureViewWrapper$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    :goto_4d
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_55

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_5c

    .line 11
    :cond_55
    iput-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 12
    invoke-direct {p0, v0}, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 13
    :cond_5c
    iput-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 14
    :cond_5f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swap()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureViewWrapper$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_13
    const/16 v0, 0x3000

    return v0
.end method
