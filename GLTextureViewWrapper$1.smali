# classes13.dex

.class Lio/agora/rtc/video/GLTextureViewWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/GLTextureViewWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/GLTextureViewWrapper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/GLTextureViewWrapper;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$1;->this$0:Lio/agora/rtc/video/GLTextureViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$1;->this$0:Lio/agora/rtc/video/GLTextureViewWrapper;

    invoke-static {p1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$000(Lio/agora/rtc/video/GLTextureViewWrapper;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lio/agora/rtc/video/GLTextureViewWrapper$1;->this$0:Lio/agora/rtc/video/GLTextureViewWrapper;

    invoke-static {p1}, Lio/agora/rtc/video/GLTextureViewWrapper;->access$100(Lio/agora/rtc/video/GLTextureViewWrapper;)V

    return-void
.end method
