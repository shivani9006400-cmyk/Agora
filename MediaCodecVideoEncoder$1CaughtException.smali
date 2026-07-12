# classes13.dex

.class Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->doReleaseEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaughtException"
.end annotation


# instance fields
.field public e:Ljava/lang/Exception;

.field public final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
