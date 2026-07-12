# classes13.dex

.class public Lio/agora/rtc/audio/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public filePath:Ljava/lang/String;

.field public recordingChannel:I

.field public recordingPosition:I

.field public recordingQuality:I

.field public recordingSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingQuality:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingPosition:I

    const/16 v1, 0x7d00

    .line 4
    iput v1, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingSampleRate:I

    .line 5
    iput v0, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingChannel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->filePath:Ljava/lang/String;

    .line 8
    iput p2, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingQuality:I

    .line 9
    iput p3, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingPosition:I

    .line 10
    iput p4, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingSampleRate:I

    .line 11
    iput p5, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingChannel:I

    return-void
.end method
