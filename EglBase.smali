# classes13.dex

.class public abstract Lio/agora/rtc/gl/EglBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglBase$Context;,
        Lio/agora/rtc/gl/EglBase$EglType;
    }
.end annotation


# static fields
.field public static final CONFIG_PIXEL_BUFFER:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER:[I

.field public static final CONFIG_PLAIN:[I

.field public static final CONFIG_RECORDABLE:[I

.field public static final CONFIG_RGBA:[I

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static glFlushBuggyDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final lock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "Redmi 4A"

    const-string v1, "Redmi 5A"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/agora/rtc/gl/EglBase;->glFlushBuggyDevices:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_40

    sput-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    const/16 v0, 0xb

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_56

    sput-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_RGBA:[I

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_70

    sput-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    const/16 v1, 0xd

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_8a

    sput-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_a8

    sput-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_RECORDABLE:[I

    return-void

    nop

    :array_40
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_56
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_70
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_8a
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_a8
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGlFlushBuggyDevices(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lio/agora/rtc/gl/EglBase;->glFlushBuggyDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    sput-object v0, Lio/agora/rtc/gl/EglBase;->glFlushBuggyDevices:Ljava/util/List;

    return-void
.end method

.method public static create()Lio/agora/rtc/gl/EglBase;
    .registers 2

    .line 2
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/gl/EglBase;
    .registers 2

    .line 3
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p0, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;
    .registers 3

    .line 1
    invoke-static {}, Lio/agora/rtc/gl/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_c

    instance-of v0, p0, Lio/agora/rtc/gl/EglBase14$Context;

    if-eqz v0, :cond_14

    :cond_c
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    check-cast p0, Lio/agora/rtc/gl/EglBase14$Context;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    goto :goto_1b

    :cond_14
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    check-cast p0, Lio/agora/rtc/gl/EglBase10$Context;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    :goto_1b
    return-object v0
.end method

.method public static createEgl10(Ljavax/microedition/khronos/egl/EGLContext;[I)Lio/agora/rtc/gl/EglBase;
    .registers 4

    .line 2
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    new-instance v1, Lio/agora/rtc/gl/EglBase10$Context;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-direct {v0, v1, p1}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    return-object v0
.end method

.method public static createEgl10([I)Lio/agora/rtc/gl/EglBase;
    .registers 3

    .line 1
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    return-object v0
.end method

.method public static createEgl14(Landroid/opengl/EGLContext;[I)Lio/agora/rtc/gl/EglBase;
    .registers 4

    .line 2
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    new-instance v1, Lio/agora/rtc/gl/EglBase14$Context;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    invoke-direct {v0, v1, p1}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    return-object v0
.end method

.method public static createEgl14([I)Lio/agora/rtc/gl/EglBase;
    .registers 3

    .line 1
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    return-object v0
.end method

.method public static getCurrentContext()Lio/agora/rtc/gl/EglBase$Context;
    .registers 2

    .line 1
    invoke-static {}, Lio/agora/rtc/gl/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 3
    new-instance v1, Lio/agora/rtc/gl/EglBase14$Context;

    invoke-direct {v1, v0}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-object v1

    .line 4
    :cond_10
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 6
    new-instance v1, Lio/agora/rtc/gl/EglBase10$Context;

    invoke-direct {v1, v0}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v1
.end method

.method public static isGlFlushBuggyDevice()Z
    .registers 3

    .line 1
    sget-object v0, Lio/agora/rtc/gl/EglBase;->glFlushBuggyDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static wrapEglContext(Ljava/lang/Object;)Lio/agora/rtc/gl/EglBase$Context;
    .registers 2

    .line 1
    instance-of v0, p0, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Lio/agora/rtc/gl/EglBase10$Context;

    check-cast p0, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0

    .line 3
    :cond_c
    instance-of v0, p0, Landroid/opengl/EGLContext;

    if-eqz v0, :cond_18

    .line 4
    new-instance v0, Lio/agora/rtc/gl/EglBase14$Context;

    check-cast p0, Landroid/opengl/EGLContext;

    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract createDummyPbufferSurface()V
.end method

.method public abstract createPbufferSurface(II)V
.end method

.method public abstract createSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract createSurface(Landroid/view/Surface;)V
.end method

.method public abstract detachCurrent()V
.end method

.method public abstract getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public abstract swapBuffers()V
.end method

.method public abstract swapBuffers(J)V
.end method
