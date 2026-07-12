# classes13.dex

.class Lio/agora/rtc/video/ViETextureViewWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/ViETextureViewWrapper;->releaseOpenGLResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/ViETextureViewWrapper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/ViETextureViewWrapper;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    invoke-static {}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseOpenGLResource, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    .line 2
    invoke-static {v2}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$300(Lio/agora/rtc/video/ViETextureViewWrapper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v3}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$400(Lio/agora/rtc/video/ViETextureViewWrapper;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v3}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$400(Lio/agora/rtc/video/ViETextureViewWrapper;)[I

    move-result-object v3

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v2}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$400(Lio/agora/rtc/video/ViETextureViewWrapper;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    .line 3
    invoke-static {v2}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$500(Lio/agora/rtc/video/ViETextureViewWrapper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$300(Lio/agora/rtc/video/ViETextureViewWrapper;)I

    move-result v0

    if-lez v0, :cond_6c

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$300(Lio/agora/rtc/video/ViETextureViewWrapper;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 7
    :cond_6c
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$400(Lio/agora/rtc/video/ViETextureViewWrapper;)[I

    move-result-object v0

    aget v0, v0, v4

    if-lez v0, :cond_80

    const/4 v0, 0x3

    .line 8
    iget-object v1, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v1}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$400(Lio/agora/rtc/video/ViETextureViewWrapper;)[I

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 9
    :cond_80
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$500(Lio/agora/rtc/video/ViETextureViewWrapper;)I

    move-result v0

    if-lez v0, :cond_91

    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureViewWrapper$2;->this$0:Lio/agora/rtc/video/ViETextureViewWrapper;

    invoke-static {v0}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$500(Lio/agora/rtc/video/ViETextureViewWrapper;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 11
    :cond_91
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_af

    .line 12
    invoke-static {}, Lio/agora/rtc/video/ViETextureViewWrapper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glDelete error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    return-void
.end method
