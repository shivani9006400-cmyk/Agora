# classes13.dex

.class public Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/ScreenCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioCaptureParameters"
.end annotation


# instance fields
.field public allowCaptureCurrentApp:Z

.field public captureSignalVolume:I

.field public channels:I

.field public sampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e80

    .line 2
    iput v0, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->sampleRate:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->channels:I

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->captureSignalVolume:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->allowCaptureCurrentApp:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 2
    :cond_12
    check-cast p1, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;

    .line 3
    iget v2, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->sampleRate:I

    iget v3, p1, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->sampleRate:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->channels:I

    iget v3, p1, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->channels:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->captureSignalVolume:I

    iget v3, p1, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->captureSignalVolume:I

    if-ne v2, v3, :cond_2d

    iget-boolean v2, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->allowCaptureCurrentApp:Z

    iget-boolean p1, p1, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->allowCaptureCurrentApp:Z

    if-ne v2, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->sampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->channels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->captureSignalVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->allowCaptureCurrentApp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCaptureParameters{sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureSignalVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->captureSignalVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowCaptureCurrentApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/ScreenCaptureParameters$AudioCaptureParameters;->allowCaptureCurrentApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
