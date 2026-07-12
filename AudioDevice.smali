# classes13.dex

.class Lio/agora/rtc/audio/AudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final LAST_READ_TIME:I

.field private final LAST_WRITE_TIME:I

.field private final POSITION_PLAY_APP:I

.field private final POSITION_PLAY_SYS:I

.field private final POSITION_REC_APP:I

.field private final POSITION_REC_SYS:I

.field public final TAG:Ljava/lang/String;

.field private final _MaxRecPlay10msBlocks:I

.field private _audioManager:Landroid/media/AudioManager;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioStatistic:[J

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _currentTotalPostion:J

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _firstRenderTS:J

.field private _framePostion:J

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _lastRecDelay:J

.field private _playBufSize:I

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private _playChannel:I

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _playPreviousUnderrun:I

.field private _playbackRestartCount:I

.field private _playbackSampleRate:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private _recDelay:J

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _recPosition:J

.field private _recStartDelay:I

.field private _recStartTS:J

.field private _recordBufSize:I

.field private _recordChannel:I

.field private _recordRestartCount:I

.field private _recordSampleRate:I

.field private _recordSource:I

.field private _renderStart:Z

.field private _sdkVer:I

.field private _streamType:I

.field private _tempBufPlay:[B

.field private _tempBufRec:[B

.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private currentPlayoutVolume:I

.field private current_time_ms:J

.field private mNativeHandle:J

.field private mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

.field private maxDelay:I

.field private playWriten:I

.field private previous_time_ms:J

.field private totalDelay:I

.field private useBuiltInAEC:Z


# direct methods
.method public constructor <init>(J)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioDevice Java"

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_MaxRecPlay10msBlocks:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 5
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 6
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 9
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    const/4 v4, 0x0

    .line 10
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 11
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const-wide/16 v5, 0x0

    .line 12
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 13
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    .line 14
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 15
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_framePostion:J

    .line 16
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 17
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 18
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 19
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 20
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 21
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 22
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 23
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 24
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 25
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    .line 26
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 27
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 28
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 29
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 30
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    const-wide/16 v7, 0xa

    .line 31
    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 32
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    .line 33
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 34
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 35
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v7, p0, Lio/agora/rtc/audio/AudioDevice;->_sdkVer:I

    .line 36
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    const/4 v5, 0x6

    new-array v5, v5, [J

    .line 37
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    .line 38
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_PLAY_APP:I

    .line 39
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_PLAY_SYS:I

    const/4 v3, 0x2

    .line 40
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->LAST_WRITE_TIME:I

    const/4 v3, 0x3

    .line 41
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_REC_APP:I

    .line 42
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_REC_SYS:I

    const/4 v1, 0x5

    .line 43
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->LAST_READ_TIME:I

    .line 44
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 45
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 46
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 47
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 48
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 49
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->currentPlayoutVolume:I

    .line 51
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    .line 52
    iput-wide p1, p0, Lio/agora/rtc/audio/AudioDevice;->mNativeHandle:J

    const/16 p1, 0x1e00

    .line 53
    :try_start_88
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_94} :catch_95

    goto :goto_9b

    :catch_95
    move-exception p2

    const-string v1, "failed to allocate bytebuffer"

    .line 55
    invoke-static {v0, v1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9b
    new-array p2, p1, [B

    .line 56
    iput-object p2, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    new-array p1, p1, [B

    .line 57
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    return-void
.end method

.method private BuiltInAECIsAvailable()Z
    .registers 4

    const-string v0, "AudioDevice Java"

    .line 1
    :try_start_2
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const-string v1, "Unable to query Audio Effect: Acoustic Echo Cancellation"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_d
    move-exception v1

    const-string v2, "Unable to create AEC object "

    .line 3
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method private BuiltInAECIsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    return v0
.end method

.method private CheckAudioStatus(I)I
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_82

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    const-string v3, "AudioDevice Java"

    if-nez v0, :cond_23

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_1d

    const-string v4, "audio"

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    goto :goto_23

    :cond_1d
    const-string p1, "CheckAudioStatus error"

    .line 5
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    :goto_23
    if-nez p1, :cond_82

    .line 6
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v5, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_7b

    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {p1, v5, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_7b

    .line 8
    :cond_4a
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_75

    .line 9
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_56

    .line 10
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    .line 11
    :cond_56
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_60
    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 13
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v0

    if-eq v0, v2, :cond_60

    const/16 v1, 0x409

    goto :goto_60

    :cond_75
    const-string p1, "CheckAudioStatus unkonwn error"

    .line 14
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7b
    :goto_7b
    const/4 p1, 0x2

    const-string v0, "CheckAudioStatus Microphone Permission denied"

    .line 15
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_82
    return v1
.end method

.method private EnableBuiltInAEC(Z)Z
    .registers 4

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_2f

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result p1

    const-string v0, "AudioDevice Java"

    if-eqz p1, :cond_15

    const-string p1, "AcousticEchoCanceler.setEnabled failed"

    .line 4
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcousticEchoCanceler.getEnabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const/4 p1, 0x1

    return p1
.end method

.method private GetAudioMode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_12
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1f

    const-string v0, "AudioDevice Java"

    const-string v1, "Could not change audio routing - no audio manager"

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 5
    :cond_1f
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method private GetNativePlayDelay()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 3
    :cond_c
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    if-gez v0, :cond_13

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 5
    :cond_13
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    iget-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method private GetNativeSampleRate()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_12
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const v1, 0xac44

    if-nez v0, :cond_21

    const-string v0, "AudioDevice Java"

    const-string v2, "Could not set audio mode - no audio manager"

    .line 4
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_21
    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 5
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_2d
    return v1
.end method

.method private GetPlayoutMaxVolume()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_12
    const/4 v0, -0x1

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1d

    .line 4
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :cond_1d
    return v0
.end method

.method private GetPlayoutVolume()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_12
    const/4 v0, -0x1

    .line 3
    :try_start_13
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_25

    .line 4
    iget v2, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    const-string v1, "AudioDevice Java"

    const-string v2, "getStreamVolume failed! "

    .line 5
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return v0
.end method

.method private GetPreferedSampleRate()I
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_12
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_28

    :catch_1f
    move-exception v0

    const-string v1, "AudioDevice Java"

    const-string v2, "GetPreferedSampleRate error"

    .line 5
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_2c

    const/16 v0, 0x3e80

    :cond_2c
    return v0
.end method

.method private GetUnderrunCount()I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnNougatOrHigher()I

    move-result v0

    return v0

    .line 3
    :cond_b
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnLowerThanNougat()I

    move-result v0

    return v0
.end method

.method private GetUnderrunCountOnLowerThanNougat()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method private GetUnderrunCountOnNougatOrHigher()I
    .registers 5

    const-string v0, "AudioDevice Java"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_37

    .line 2
    :try_start_9
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    move-exception v1

    const-string v3, "getUnderrun fail "

    .line 3
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 4
    :goto_17
    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    sub-int v3, v1, v3

    if-gez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    .line 5
    :goto_1f
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    if-lez v2, :cond_37

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android AudioTrack underrun count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return v2
.end method

.method private InitPlayback(IIII)I
    .registers 20

    move-object v1, p0

    move/from16 v0, p1

    move/from16 v9, p2

    .line 1
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move/from16 v2, p3

    .line 2
    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    mul-int v2, p4, v0

    mul-int v2, v2, v9

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 3
    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0xc

    const/4 v5, 0x4

    if-ne v9, v3, :cond_1f

    const/16 v6, 0xc

    goto :goto_20

    :cond_1f
    const/4 v6, 0x4

    .line 4
    :goto_20
    invoke-static {v0, v6, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Java minimum playback buffer size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", profiledMiniOutBufferSize is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " stream type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AudioDevice Java"

    invoke-static {v10, v7}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v6, v2, :cond_50

    move v11, v2

    goto :goto_51

    :cond_50
    move v11, v6

    :goto_51
    const/4 v12, 0x0

    .line 6
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    const-wide/16 v6, 0x0

    .line 7
    iput-wide v6, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Java playback buffer size is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", duration is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v6, v11, 0x3e8

    mul-int v7, v0, v9

    mul-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_8a

    .line 10
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    :cond_8a
    const/4 v13, -0x1

    .line 12
    :try_start_8b
    new-instance v14, Landroid/media/AudioTrack;

    iget v6, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    if-ne v9, v3, :cond_93

    const/16 v5, 0xc

    :cond_93
    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v2, v14

    move v3, v6

    move/from16 v4, p1

    move v6, v7

    move v7, v11

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v14, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a0} :catch_107

    .line 13
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 14
    iput v9, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 15
    iput v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 16
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 17
    invoke-virtual {v14}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c9

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java playback not initialized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v13

    .line 20
    :cond_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java play sample rate is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_ef

    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_ef

    const-string v2, "audio"

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 23
    :cond_ef
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_f9

    .line 24
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v12

    .line 25
    :cond_f9
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :catch_107
    move-exception v0

    const-string v2, "Unable to new AudioTrack: "

    .line 27
    invoke-static {v10, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v13
.end method

.method private InitRecording(III)I
    .registers 16

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v0, 0xc

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne p3, v2, :cond_f

    const/16 v3, 0xc

    goto :goto_11

    :cond_f
    const/16 v3, 0x10

    .line 2
    :goto_11
    invoke-static {p2, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Java minimum recording buffer size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "AudioDevice Java"

    invoke-static {v10, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v4, p2, 0x5

    .line 4
    div-int/lit16 v4, v4, 0xc8

    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v5, 0x0

    if-eqz v4, :cond_3b

    .line 6
    invoke-virtual {v4}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 7
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 8
    :cond_3b
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_44

    .line 9
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 10
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 11
    :cond_44
    :try_start_44
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_5e

    .line 12
    new-instance v11, Landroid/media/AudioRecord;

    if-ne p3, v2, :cond_51

    const/16 v7, 0xc

    goto :goto_53

    :cond_51
    const/16 v7, 0x10

    :goto_53
    const/4 v8, 0x2

    move-object v4, v11

    move v5, p1

    move v6, p2

    move v9, v3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v11, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    goto :goto_90

    .line 13
    :cond_5e
    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v4, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    if-ne p3, v2, :cond_6e

    goto :goto_70

    :cond_6e
    const/16 v0, 0x10

    .line 15
    :goto_70
    invoke-virtual {v4, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 17
    new-instance v1, Landroid/media/AudioRecord$Builder;

    invoke-direct {v1}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 18
    invoke-virtual {v1, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    .line 19
    invoke-virtual {v1, v3}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    .line 20
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_8a

    .line 21
    invoke-virtual {v1, v0}, Landroid/media/AudioRecord$Builder;->setContext(Landroid/content/Context;)Landroid/media/AudioRecord$Builder;

    .line 22
    :cond_8a
    invoke-virtual {v1}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_90} :catch_150

    .line 23
    :goto_90
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b4

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Java recording not initialized "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, -0x2

    return p1

    .line 26
    :cond_b4
    iput p2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 27
    iput p3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 28
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 29
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Java recording sample rate set to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AcousticEchoCanceler.isAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    move-result p1

    if-nez p1, :cond_f9

    .line 34
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    return p1

    .line 36
    :cond_f9
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p1

    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez p1, :cond_10d

    const-string p1, "AcousticEchoCanceler.create failed"

    .line 37
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    .line 38
    :cond_10d
    invoke-virtual {p1}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object p1

    if-nez p1, :cond_119

    const-string p1, "getDescriptor() failed"

    .line 39
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_143

    .line 40
    :cond_119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AcousticEchoCanceler name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", implementor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", uuid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_143
    iget-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    invoke-direct {p0, p1}, Lio/agora/rtc/audio/AudioDevice;->EnableBuiltInAEC(Z)Z

    .line 42
    :goto_148
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    return p1

    :catch_150
    move-exception p1

    const-string p2, "Unable to new AudioRecord: "

    .line 44
    invoke-static {v10, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, -0x1

    return p1
.end method

.method private PlayAudio(I)I
    .registers 16

    const-string v0, "AudioDevice Java"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_7
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_13f
    .catchall {:try_start_7 .. :try_end_9} :catchall_13d

    if-nez v1, :cond_12

    const/4 p1, -0x2

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 4
    :cond_12
    :try_start_12
    iget-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const/4 v2, 0x0

    if-nez v1, :cond_22

    const-string p1, "PlayAudio not ready!"

    .line 5
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_13f
    .catchall {:try_start_12 .. :try_end_1c} :catchall_13d

    .line 6
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 7
    :cond_22
    :try_start_22
    iget-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_24} :catch_13f
    .catchall {:try_start_22 .. :try_end_24} :catchall_13d

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-ne v1, v3, :cond_3f

    const/16 v1, -0x13

    .line 8
    :try_start_2b
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_13d

    goto :goto_35

    :catch_2f
    move-exception v1

    :try_start_30
    const-string v6, "Set play thread priority failed: "

    .line 9
    invoke-static {v0, v6, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_35
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 12
    :cond_3f
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v1, v6, v2, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 14
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    shr-int/lit8 v7, v1, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 16
    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    add-int/2addr v6, v1

    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 17
    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v7, v6

    int-to-long v6, v7

    add-long/2addr v8, v6

    iput-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 18
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_b1

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    .line 20
    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x32

    cmp-long v10, v6, v8

    if-ltz v10, :cond_b1

    .line 21
    new-instance v6, Landroid/media/AudioTimestamp;

    invoke-direct {v6}, Landroid/media/AudioTimestamp;-><init>()V

    .line 22
    iget-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7, v6}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 23
    iget-wide v7, v6, Landroid/media/AudioTimestamp;->framePosition:J

    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_framePostion:J

    .line 24
    iget-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    iget-wide v11, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x41

    cmp-long v13, v9, v11

    if-lez v13, :cond_a5

    .line 25
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v9, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v9, v10

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v8, v7

    iput v8, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    goto :goto_ab

    .line 26
    :cond_a5
    iget-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    sub-long/2addr v9, v7

    long-to-int v7, v9

    iput v7, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 27
    :goto_ab
    iget-wide v6, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 28
    :cond_b1
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int v6, v6, v7

    .line 29
    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    if-ge v6, v7, :cond_c1

    .line 30
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 31
    :cond_c1
    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 32
    iget-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    mul-long v8, v8, v4

    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    int-to-long v11, v10

    div-long/2addr v8, v11

    aput-wide v8, v7, v2

    int-to-long v8, v6

    mul-long v8, v8, v4

    int-to-long v10, v10

    .line 33
    div-long/2addr v8, v10

    aput-wide v8, v7, v3

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v4

    div-long/2addr v8, v4

    const/4 v2, 0x2

    aput-wide v8, v7, v2

    .line 35
    iget-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    if-eq v1, p1, :cond_145

    .line 36
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_e5} :catch_13f
    .catchall {:try_start_30 .. :try_end_e5} :catchall_13d

    const/16 v4, 0x14

    if-le p1, v4, :cond_ef

    .line 37
    :goto_e9
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 38
    :cond_ef
    :try_start_ef
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing AudioTrack! Restart AudioTrack "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 40
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 41
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_117} :catch_13f
    .catchall {:try_start_ef .. :try_end_117} :catchall_13d

    .line 43
    :try_start_117
    new-instance p1, Landroid/media/AudioTrack;

    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-ne v3, v2, :cond_126

    const/16 v2, 0xc

    const/16 v6, 0xc

    goto :goto_128

    :cond_126
    const/4 v2, 0x4

    const/4 v6, 0x4

    :goto_128
    const/4 v7, 0x2

    iget v8, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    const/4 v9, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 44
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_135} :catch_136
    .catchall {:try_start_117 .. :try_end_135} :catchall_13d

    goto :goto_e9

    :catch_136
    move-exception p1

    :try_start_137
    const-string v2, "restart audio fail"

    .line 45
    invoke-static {v0, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13c} :catch_13f
    .catchall {:try_start_137 .. :try_end_13c} :catchall_13d

    goto :goto_e9

    :catchall_13d
    move-exception p1

    goto :goto_151

    :catch_13f
    move-exception p1

    :try_start_140
    const-string v1, "PlayAudio got fatal error "

    .line 46
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_145
    .catchall {:try_start_140 .. :try_end_145} :catchall_13d

    .line 47
    :cond_145
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int p1, p1, v0

    return p1

    .line 49
    :goto_151
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    throw p1
.end method

.method private PlayNoBlockAudio(I)I
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, -0x2

    const-string v4, "AudioDevice Java"

    const/16 v5, 0x17

    if-ge v0, v5, :cond_22

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play failed,  SDK_INT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3
    :cond_22
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_27
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_3b

    const-string v0, "Play failed, _audioTrack == null "

    .line 5
    invoke-static {v4, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_176
    .catchall {:try_start_27 .. :try_end_30} :catchall_174

    .line 6
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    .line 8
    :cond_3b
    :try_start_3b
    iget-boolean v0, v1, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_176
    .catchall {:try_start_3b .. :try_end_3d} :catchall_174

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    if-ne v0, v5, :cond_5a

    const/16 v0, -0x13

    .line 9
    :try_start_45
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_174

    goto :goto_50

    :catch_49
    move-exception v0

    move-object v8, v0

    :try_start_4b
    const-string v0, "Set play thread priority failed: "

    .line 10
    invoke-static {v4, v0, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_50
    iput-boolean v3, v1, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 13
    :cond_5a
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v8, v1, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v0, v2

    const/4 v8, 0x0

    .line 14
    :goto_63
    iget-boolean v9, v1, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_e6

    .line 15
    iget-object v9, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v11, v1, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v9, v11, v8, v0, v5}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v9

    if-gez v9, :cond_d2

    .line 16
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_74} :catch_176
    .catchall {:try_start_4b .. :try_end_74} :catchall_174

    const/16 v2, 0x14

    if-le v0, v2, :cond_83

    .line 17
    :goto_78
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 18
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v8

    .line 19
    :cond_83
    :try_start_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing AudioTrack! Restart AudioTrack "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 21
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 22
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a9} :catch_176
    .catchall {:try_start_83 .. :try_end_a9} :catchall_174

    .line 24
    :try_start_a9
    new-instance v0, Landroid/media/AudioTrack;

    iget v12, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    iget v13, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-ne v2, v10, :cond_b8

    const/16 v2, 0xc

    const/16 v14, 0xc

    goto :goto_ba

    :cond_b8
    const/4 v2, 0x4

    const/4 v14, 0x4

    :goto_ba
    const/4 v15, 0x2

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    const/16 v17, 0x1

    move-object v11, v0

    move/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 25
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ca} :catch_cb
    .catchall {:try_start_a9 .. :try_end_ca} :catchall_174

    goto :goto_78

    :catch_cb
    move-exception v0

    :try_start_cc
    const-string v2, "restart audio fail"

    .line 26
    invoke-static {v4, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_78

    :cond_d2
    add-int/2addr v8, v9

    if-ne v8, v2, :cond_d6

    goto :goto_e6

    :cond_d6
    if-ge v9, v0, :cond_e2

    .line 27
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/audio/AudioDevice;->getPlayBufferMs()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-long v9, v0

    .line 28
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    :cond_e2
    sub-int v0, v2, v8

    goto/16 :goto_63

    .line 29
    :cond_e6
    :goto_e6
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    shr-int/lit8 v2, v8, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 30
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    add-int/2addr v0, v8

    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 31
    iget-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v2, v0

    int-to-long v11, v2

    add-long/2addr v8, v11

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_144

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    .line 34
    iget-wide v11, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v8, v11

    const-wide/16 v11, 0x32

    cmp-long v0, v8, v11

    if-ltz v0, :cond_144

    .line 35
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 36
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 37
    iget-wide v8, v0, Landroid/media/AudioTimestamp;->framePosition:J

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_framePostion:J

    .line 38
    iget-wide v11, v1, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    iget-wide v13, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x41

    cmp-long v2, v11, v13

    if-lez v2, :cond_138

    .line 39
    iget-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    iget v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v2, v11

    int-to-long v11, v2

    sub-long/2addr v8, v11

    long-to-int v2, v8

    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    goto :goto_13e

    .line 40
    :cond_138
    iget-wide v11, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    sub-long/2addr v11, v8

    long-to-int v2, v11

    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 41
    :goto_13e
    iget-wide v8, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 42
    :cond_144
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int v0, v0, v2

    .line 43
    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    if-ge v0, v2, :cond_154

    .line 44
    iput v3, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 45
    :cond_154
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 46
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    iget-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    mul-long v8, v8, v6

    iget v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    int-to-long v12, v11

    div-long/2addr v8, v12

    aput-wide v8, v2, v3

    int-to-long v8, v0

    mul-long v8, v8, v6

    int-to-long v11, v11

    .line 47
    div-long/2addr v8, v11

    aput-wide v8, v2, v5

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    aput-wide v8, v2, v10

    .line 49
    iget-boolean v0, v1, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_173} :catch_176
    .catchall {:try_start_cc .. :try_end_173} :catchall_174

    goto :goto_17c

    :catchall_174
    move-exception v0

    goto :goto_18d

    :catch_176
    move-exception v0

    :try_start_177
    const-string v2, "PlayNBAudio got fatal error "

    .line 50
    invoke-static {v4, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17c
    .catchall {:try_start_177 .. :try_end_17c} :catchall_174

    .line 51
    :goto_17c
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 52
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int v0, v0, v2

    return v0

    .line 54
    :goto_18d
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 55
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 56
    throw v0
.end method

.method private QuerySpeakerStatus()I
    .registers 14

    const-string v0, "bluetooth"

    const-string v1, "headset"

    const-string v2, "phone"

    const-string v3, "AudioDevice Java"

    .line 1
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_1a

    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v4, :cond_1a

    const-string v5, "audio"

    .line 2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_1a
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, -0x1

    .line 3
    :try_start_1e
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_bc

    .line 4
    iget-object v8, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    const-string v9, "media_router"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter;

    .line 5
    invoke-virtual {v8, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 7
    iget-object v9, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    .line 9
    iget-object v11, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 10
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 11
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 12
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_79

    const-string v0, "speaker"

    .line 13
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 14
    :cond_79
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8e

    .line 15
    invoke-static {v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a4

    .line 16
    :cond_8e
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a3

    .line 17
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    goto :goto_a4

    :cond_a3
    :goto_a3
    const/4 v0, -0x1

    .line 18
    :goto_a4
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 19
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_b0} :catch_b3

    if-eq v0, v7, :cond_bc

    return v0

    :catch_b3
    move-exception v0

    const-string v1, "error in Query audio route "

    .line 20
    invoke-static {v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_bc
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_c6

    const-string v0, "Could not get audio routing - no audio manager"

    .line 23
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 24
    :cond_c6
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_cd

    return v6

    .line 25
    :cond_cd
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_d7

    const/4 v0, 0x3

    return v0

    .line 26
    :cond_d7
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_e0

    return v6

    .line 27
    :cond_e0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_e9

    return v4

    :cond_e9
    return v5
.end method

.method private RecordAudio(I)I
    .registers 16

    const-string v0, "AudioDevice Java"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_9
    iget-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    if-nez v3, :cond_18

    const-string p1, "RecordAudio not ready!"

    .line 3
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_184
    .catchall {:try_start_9 .. :try_end_12} :catchall_182

    .line 4
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 5
    :cond_18
    :try_start_18
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1a} :catch_184
    .catchall {:try_start_18 .. :try_end_1a} :catchall_182

    if-nez v3, :cond_23

    const/4 p1, -0x4

    .line 6
    :goto_1d
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 7
    :cond_23
    :try_start_23
    iget-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_25} :catch_184
    .catchall {:try_start_23 .. :try_end_25} :catchall_182

    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    const/16 v3, -0x13

    .line 8
    :try_start_2a
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_182

    goto :goto_34

    :catch_2e
    move-exception v3

    :try_start_2f
    const-string v5, "Set rec thread priority failed: "

    .line 9
    invoke-static {v0, v5, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_34
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 11
    :cond_36
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    invoke-virtual {v3, v5, v2, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, p1, :cond_ac

    .line 13
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    if-lez p1, :cond_5d

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v6, :cond_5d

    const-string p1, "audioRecord.read retry failed!  "

    .line 14
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 16
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    const/16 p1, -0x14

    goto :goto_1d

    :cond_5d
    if-nez p1, :cond_a1

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry audioRecord for read failed:  "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_73} :catch_184
    .catchall {:try_start_2f .. :try_end_73} :catchall_182

    .line 18
    :try_start_73
    new-instance p1, Landroid/media/AudioRecord;

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    iget v8, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    if-ne v6, v5, :cond_82

    const/16 v5, 0xc

    const/16 v9, 0xc

    goto :goto_86

    :cond_82
    const/16 v5, 0x10

    const/16 v9, 0x10

    :goto_86
    const/4 v10, 0x2

    iget v11, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 19
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_92} :catch_93
    .catchall {:try_start_73 .. :try_end_92} :catchall_182

    goto :goto_99

    :catch_93
    move-exception p1

    :try_start_94
    const-string v5, "Retry audioRecord created failed: "

    .line 20
    invoke-static {v0, v5, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 22
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 23
    :cond_a1
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a6} :catch_184
    .catchall {:try_start_94 .. :try_end_a6} :catchall_182

    .line 24
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    .line 25
    :cond_ac
    :try_start_ac
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 26
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v8, 0xa

    const-wide/16 v10, 0x3e8

    cmp-long p1, v6, v8

    if-nez p1, :cond_ff

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt p1, v4, :cond_e3

    .line 29
    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    .line 30
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4, p1, v2}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v12, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v6, v12

    div-long/2addr v6, v10

    div-long/2addr v6, v10

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v12, 0x32

    cmp-long p1, v6, v12

    if-lez p1, :cond_e5

    .line 32
    iput-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    goto :goto_e5

    .line 33
    :cond_e3
    iput-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 34
    :cond_e5
    :goto_e5
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    if-nez p1, :cond_f7

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    sub-long/2addr v6, v8

    long-to-int p1, v6

    div-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 36
    :cond_f7
    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    int-to-long v8, p1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 37
    :cond_ff
    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_15d

    .line 38
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt p1, v4, :cond_143

    .line 39
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result p1

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frames  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " recDelay "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " caculated frames delay "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    div-int/2addr p1, v6

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_159

    .line 41
    :cond_143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_recDelay: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_159
    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    :cond_15d
    if-ltz v3, :cond_169

    .line 43
    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    div-int/2addr v3, p1

    div-int/2addr v3, v5

    int-to-long v3, v3

    add-long/2addr v6, v3

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    .line 44
    :cond_169
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    const/4 v3, 0x3

    iget-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    mul-long v4, v4, v10

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x5

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v10

    div-long/2addr v4, v10

    aput-wide v4, p1, v3

    .line 46
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_181} :catch_184
    .catchall {:try_start_ac .. :try_end_181} :catchall_182

    goto :goto_18e

    :catchall_182
    move-exception p1

    goto :goto_194

    :catch_184
    move-exception p1

    const/16 v2, -0xa

    .line 47
    :try_start_187
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    const-string v1, "RecordAudio try failed: "

    .line 48
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18e
    .catchall {:try_start_187 .. :try_end_18e} :catchall_182

    .line 49
    :goto_18e
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :goto_194
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    throw p1
.end method

.method private SetAudioMode(I)I
    .registers 6

    const-string v0, "AudioDevice Java"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_15

    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v2, :cond_15

    const-string v3, "audio"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_15
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_20

    const-string p1, "Could not change audio routing - no audio manager"

    .line 4
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_20
    const/4 v3, 0x3

    .line 5
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 6
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 7
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 8
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 9
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-ne v2, p1, :cond_3c

    return v1

    :cond_3c
    if-eqz p1, :cond_5e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_58

    const/4 v2, 0x2

    if-eq p1, v2, :cond_52

    if-eq p1, v3, :cond_4c

    .line 10
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_69

    .line 11
    :cond_4c
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_69

    .line 12
    :cond_52
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_69

    .line 13
    :cond_58
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_69

    .line 14
    :cond_5e
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_64

    goto :goto_69

    :catch_64
    const-string p1, "set audio mode failed! "

    .line 15
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return v1
.end method

.method private SetPlayoutSpeaker(Z)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_12
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1f

    const-string p1, "AudioDevice Java"

    const-string v0, "Could not change audio routing - no audio manager"

    .line 4
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_1f
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method private SetPlayoutVolume(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_12
    const/4 v0, -0x1

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 4
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_23

    goto :goto_27

    :cond_23
    mul-int p1, p1, v0

    .line 5
    div-int/lit16 v0, p1, 0xff

    .line 6
    :goto_27
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, 0x0

    :cond_2f
    return v0
.end method

.method private StartPlayback()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    const/4 v1, -0x1

    .line 4
    :try_start_d
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 5
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 7
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 8
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_20} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_2e
    .catchall {:try_start_d .. :try_end_20} :catchall_2c

    .line 10
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    invoke-virtual {p0, v2}, Lio/agora/rtc/audio/AudioDevice;->monitorPlayoutVolumeChange(Z)V

    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/audio/AudioDevice;->notifyPlayoutVolumeChange()V

    return v0

    :catchall_2c
    move-exception v0

    goto :goto_41

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v2, "AudioDevice Java"

    const-string v3, "startplayback fail"

    .line 13
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    .line 14
    :goto_36
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catch_3c
    move-exception v0

    .line 15
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_2c

    goto :goto_36

    .line 16
    :goto_41
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    throw v0
.end method

.method private StartRecording()I
    .registers 6

    const-string v0, "AudioDevice Java"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, -0x2

    .line 2
    :try_start_8
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_a} :catch_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_49
    .catchall {:try_start_8 .. :try_end_a} :catchall_47

    if-nez v2, :cond_12

    .line 3
    :goto_c
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 4
    :cond_12
    :try_start_12
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording start time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    const-wide/16 v3, 0xa

    .line 8
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_41} :catch_50
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_49
    .catchall {:try_start_12 .. :try_end_41} :catchall_47

    .line 11
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_47
    move-exception v0

    goto :goto_5d

    :catch_49
    move-exception v2

    :try_start_4a
    const-string v3, "failed to startRecording Exception"

    .line 12
    invoke-static {v0, v3, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_50
    move-exception v1

    const-string v2, "failed to startRecording"

    .line 13
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_47

    const/4 v0, -0x1

    .line 14
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_5d
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    throw v0
.end method

.method private StopPlayback()I
    .registers 7

    const-string v0, "AudioDevice Java"

    const-wide/16 v1, 0x0

    .line 1
    iput-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 3
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_10
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_29

    .line 6
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    .line 7
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    .line 8
    :cond_29
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    .line 9
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_30} :catch_52
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_33
    .catchall {:try_start_10 .. :try_end_30} :catchall_31

    goto :goto_47

    :catchall_31
    move-exception v0

    goto :goto_6f

    :catch_33
    move-exception v4

    :try_start_34
    const-string v5, "Stop playback fail"

    .line 10
    invoke-static {v0, v5, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    .line 11
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_47

    .line 12
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 13
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 14
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 15
    :cond_47
    :goto_47
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 16
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    invoke-virtual {p0, v1}, Lio/agora/rtc/audio/AudioDevice;->monitorPlayoutVolumeChange(Z)V

    return v1

    :catch_52
    move-exception v1

    :try_start_53
    const-string v4, "Unable to stop playback: "

    .line 18
    invoke-static {v0, v4, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_31

    const/4 v0, -0x1

    .line 19
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_67

    .line 20
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 21
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 22
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 23
    :cond_67
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 24
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 25
    :goto_6f
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_7d

    .line 26
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 27
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 28
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 29
    :cond_7d
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 30
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    throw v0
.end method

.method private StopRecording()I
    .registers 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_8
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_18

    .line 3
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    .line 4
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 5
    :cond_18
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v3, :cond_21

    .line 6
    invoke-virtual {v3}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 7
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 8
    :cond_21
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_2a
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 9
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_3b

    goto :goto_36

    :catchall_28
    move-exception v0

    goto :goto_43

    :catch_2a
    move-exception v3

    :try_start_2b
    const-string v4, "AudioDevice Java"

    const-string v5, "error in StopRecording "

    .line 10
    invoke-static {v4, v5, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 11
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_3b

    .line 12
    :goto_36
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 13
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 14
    :cond_3b
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 15
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 16
    :goto_43
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_4c

    .line 17
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 18
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 19
    :cond_4c
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 20
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    throw v0
.end method

.method private enableHardwareEarback(Z)I
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHardwareEarback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioDevice Java"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->enableHardwareEarback(Z)I

    move-result v0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ret "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getPlayBufferMs()I
    .registers 4

    .line 1
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    if-eqz v0, :cond_12

    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-nez v1, :cond_9

    goto :goto_12

    .line 2
    :cond_9
    iget v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3e8

    .line 3
    div-int/2addr v2, v0

    return v2

    :cond_12
    :goto_12
    const/16 v0, 0xa

    return v0
.end method

.method private isHardwareEarbackSupported()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 2
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->isHardwareEarbackSupported()Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private setHardwareEarbackVolume(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 2
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->setHardwareEarbackVolume(I)I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    return p1
.end method


# virtual methods
.method public monitorPlayoutVolumeChange(Z)V
    .registers 4

    if-eqz p1, :cond_2a

    .line 1
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    if-nez p1, :cond_38

    .line 2
    :try_start_6
    new-instance p1, Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    invoke-direct {p1, p0}, Lio/agora/rtc/audio/VolumeBroadcastReceiver;-><init>(Lio/agora/rtc/audio/AudioDevice;)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    .line 3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz p1, :cond_38

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_38

    :catch_21
    move-exception p1

    const-string v0, "AudioDevice Java"

    const-string v1, "Unable to create VolumeBroadcastReceiver, "

    .line 7
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 8
    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz p1, :cond_35

    .line 9
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    if-eqz v0, :cond_35

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    :cond_38
    :goto_38
    return-void
.end method

.method public native nativeNotifyPlayoutVolumeChange(JI)V
.end method

.method public notifyPlayoutVolumeChange()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetPlayoutVolume()I

    move-result v0

    .line 3
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->currentPlayoutVolume:I

    if-eq v1, v0, :cond_26

    .line 4
    iget-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->mNativeHandle:J

    invoke-virtual {p0, v1, v2, v0}, Lio/agora/rtc/audio/AudioDevice;->nativeNotifyPlayoutVolumeChange(JI)V

    .line 5
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->currentPlayoutVolume:I

    const-string v1, "AudioDevice Java"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notifyPlayoutVolumeChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method
