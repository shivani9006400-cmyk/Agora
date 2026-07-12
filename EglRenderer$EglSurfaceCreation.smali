# classes13.dex

.class Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EglSurfaceCreation"
.end annotation


# instance fields
.field private surface:Ljava/lang/Object;

.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;


# direct methods
.method private constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglRenderer$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_67

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    instance-of v1, v0, Landroid/view/Surface;

    if-eqz v1, :cond_2d

    .line 3
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/view/Surface;)V

    goto :goto_3e

    .line 4
    :cond_2d
    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4e

    .line 5
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V

    .line 6
    :goto_3e
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V

    const/16 v0, 0xcf5

    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_67

    .line 8
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 9
    :cond_67
    :goto_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSurface(Ljava/lang/Object;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
