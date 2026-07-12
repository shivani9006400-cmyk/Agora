# classes13.dex

.class Lio/agora/rtc/gl/EglRenderer$1;
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
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$100(Lio/agora/rtc/gl/EglRenderer;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$200(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_c
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 4
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v2}, Lio/agora/rtc/gl/EglRenderer;->access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 6
    invoke-static {v2}, Lio/agora/rtc/gl/EglRenderer;->access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3c

    throw v1
.end method
