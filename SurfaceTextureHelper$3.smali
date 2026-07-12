# classes13.dex

.class Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting listener to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$200(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$200(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$302(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 3
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$202(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 4
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$400(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 5
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$500(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$402(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    :cond_3e
    return-void
.end method
