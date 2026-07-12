# classes13.dex

.class Lio/agora/rtc/video/ViETextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/ViETextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/ViETextureView;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/ViETextureView;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/ViETextureView$1;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$1;->this$0:Lio/agora/rtc/video/ViETextureView;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/video/ViETextureView$1;->this$0:Lio/agora/rtc/video/ViETextureView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/agora/rtc/video/ViETextureView;->access$102(Lio/agora/rtc/video/ViETextureView;Z)Z

    .line 3
    iget-object v1, p0, Lio/agora/rtc/video/ViETextureView$1;->this$0:Lio/agora/rtc/video/ViETextureView;

    invoke-static {v1}, Lio/agora/rtc/video/ViETextureView;->access$200(Lio/agora/rtc/video/ViETextureView;)Lio/agora/rtc/video/TextureRendererHelper;

    move-result-object v1

    invoke-virtual {v1}, Lio/agora/rtc/video/TextureRendererHelper;->releaseSurfaceTexture()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
