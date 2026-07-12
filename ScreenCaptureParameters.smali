# classes13.dex

.class public Lio/agora/rtc/ScreenCaptureParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;,
        Lio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;
    }
.end annotation


# instance fields
.field public audioCaptureParameters:Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;

.field public captureAudio:Z

.field public captureVideo:Z

.field public videoCaptureParameters:Lio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtc/ScreenCaptureParameters;->captureAudio:Z

    .line 3
    new-instance v0, Lio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;

    invoke-direct {v0}, Lio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/ScreenCaptureParameters;->videoCaptureParameters:Lio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/ScreenCaptureParameters;->captureVideo:Z

    .line 5
    new-instance v0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;

    invoke-direct {v0}, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/ScreenCaptureParameters;->audioCaptureParameters:Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenCaptureParameters{captureAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/ScreenCaptureParameters;->captureAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoCaptureParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/ScreenCaptureParameters;->videoCaptureParameters:Lio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/ScreenCaptureParameters;->captureVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audioCaptureParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/ScreenCaptureParameters;->audioCaptureParameters:Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
