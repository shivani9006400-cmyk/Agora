# classes13.dex

.class public abstract Lio/agora/rtc/RtcEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static externalLibPath:Ljava/lang/String;

.field private static mInstance:Lio/agora/rtc/internal/RtcEngineImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateRendererView(Landroid/content/Context;)Landroid/view/SurfaceView;
    .registers 2

    if-eqz p0, :cond_24

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    :cond_9
    const-string v0, "CreateRendererView"

    .line 2
    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkIfInUIThread(Ljava/lang/String;)Z

    .line 3
    invoke-static {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->IsSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    .line 5
    :cond_1a
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    :goto_1f
    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-object v0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static CreateTextureView(Landroid/content/Context;)Landroid/view/TextureView;
    .registers 2

    if-eqz p0, :cond_24

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    :cond_9
    const-string v0, "CreateTextureView"

    .line 2
    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkIfInUIThread(Ljava/lang/String;)Z

    .line 3
    invoke-static {p0}, Lio/agora/rtc/video/ViETextureView;->IsSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    new-instance v0, Lio/agora/rtc/video/ViETextureView;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViETextureView;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    .line 5
    :cond_1a
    new-instance v0, Lio/agora/rtc/video/GLTextureView;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/GLTextureView;-><init>(Landroid/content/Context;)V

    :goto_1f
    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-object v0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized create(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)Lio/agora/rtc/RtcEngine;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lio/agora/rtc/RtcEngine;

    monitor-enter v0

    if-eqz p0, :cond_22

    .line 1
    :try_start_5
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_22

    .line 2
    :cond_c
    sget-object v1, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    if-nez v1, :cond_18

    .line 3
    new-instance v1, Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-direct {v1, p0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V

    sput-object v1, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    goto :goto_1b

    .line 4
    :cond_18
    invoke-virtual {v1, p0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->reinitialize(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V

    .line 5
    :goto_1b
    sget-object p0, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    .line 6
    monitor-exit v0

    return-object p0
.end method

.method public static declared-synchronized create(Lio/agora/rtc/RtcEngineConfig;)Lio/agora/rtc/RtcEngine;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lio/agora/rtc/RtcEngine;

    monitor-enter v0

    if-eqz p0, :cond_2c

    .line 7
    :try_start_5
    iget-object v1, p0, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2c

    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2c

    .line 8
    :cond_10
    sget-object v1, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    if-nez v1, :cond_1c

    .line 9
    new-instance v1, Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-direct {v1, p0}, Lio/agora/rtc/internal/RtcEngineImpl;-><init>(Lio/agora/rtc/RtcEngineConfig;)V

    sput-object v1, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    goto :goto_25

    .line 10
    :cond_1c
    iget-object v2, p0, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/agora/rtc/RtcEngineConfig;->mAppId:Ljava/lang/String;

    iget-object p0, p0, Lio/agora/rtc/RtcEngineConfig;->mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    invoke-virtual {v1, v2, v3, p0}, Lio/agora/rtc/internal/RtcEngineImpl;->reinitialize(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V

    .line 11
    :goto_25
    sget-object p0, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_29

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    .line 12
    monitor-exit v0

    return-object p0
.end method

.method public static declared-synchronized destroy()V
    .registers 2

    const-class v0, Lio/agora/rtc/RtcEngine;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-nez v1, :cond_9

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_9
    :try_start_9
    invoke-virtual {v1}, Lio/agora/rtc/internal/RtcEngineImpl;->doDestroy()V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 5
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_14

    .line 6
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getErrorDescription(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 2
    :cond_9
    invoke-static {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetErrorDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaEngineVersion()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetChatEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecommendedEncoderType()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 2
    :cond_9
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAgoraLibPath(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3
    sput-object p0, Lio/agora/rtc/RtcEngine;->externalLibPath:Ljava/lang/String;

    return-void

    .line 4
    :cond_e
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RtcEngine.setLibraryPath path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V
    .registers 3

    sget-object v0, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    return-void
.end method

.method public abstract addInjectStreamUrl(Ljava/lang/String;Lio/agora/rtc/live/LiveInjectStreamConfig;)I
.end method

.method public abstract addPublishStreamUrl(Ljava/lang/String;Z)I
.end method

.method public abstract addVideoWatermark(Lio/agora/rtc/video/AgoraImage;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addVideoWatermark(Ljava/lang/String;Lio/agora/rtc/video/WatermarkOptions;)I
.end method

.method public abstract adjustAudioMixingPlayoutVolume(I)I
.end method

.method public abstract adjustAudioMixingPublishVolume(I)I
.end method

.method public abstract adjustAudioMixingVolume(I)I
.end method

.method public abstract adjustPlaybackSignalVolume(I)I
.end method

.method public abstract adjustRecordingSignalVolume(I)I
.end method

.method public abstract adjustUserPlaybackSignalVolume(II)I
.end method

.method public abstract clearVideoWatermarks()I
.end method

.method public abstract complain(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract createDataStream(Lio/agora/rtc/models/DataStreamConfig;)I
.end method

.method public abstract createDataStream(ZZ)I
.end method

.method public abstract createRtcChannel(Ljava/lang/String;)Lio/agora/rtc/RtcChannel;
.end method

.method public abstract disableAudio()I
.end method

.method public abstract disableLastmileTest()I
.end method

.method public abstract disableVideo()I
.end method

.method public abstract enableAudio()I
.end method

.method public abstract enableAudioQualityIndication(Z)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableAudioVolumeIndication(IIZ)I
.end method

.method public abstract enableContentInspect(ZLio/agora/rtc/models/ContentInspectConfig;)I
.end method

.method public abstract enableDeepLearningDenoise(Z)I
.end method

.method public abstract enableDualStreamMode(Z)I
.end method

.method public abstract enableEncryption(ZLio/agora/rtc/internal/EncryptionConfig;)I
.end method

.method public abstract enableFaceDetection(Z)I
.end method

.method public abstract enableHighPerfWifiMode(Z)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableInEarMonitoring(Z)I
.end method

.method public abstract enableLastmileTest()I
.end method

.method public abstract enableLocalAudio(Z)I
.end method

.method public abstract enableLocalVideo(Z)I
.end method

.method public abstract enableLocalVoicePitchCallback(I)I
.end method

.method public abstract enableRemoteSuperResolution(IZ)I
.end method

.method public abstract enableSoundPositionIndication(Z)I
.end method

.method public abstract enableSpatialAudio(Z)I
.end method

.method public abstract enableVideo()I
.end method

.method public abstract enableVirtualBackground(ZLio/agora/rtc/video/VirtualBackgroundSource;)I
.end method

.method public abstract enableWebSdkInteroperability(Z)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableWirelessAccelerate(Z)I
.end method

.method public abstract getAudioEffectManager()Lio/agora/rtc/IAudioEffectManager;
.end method

.method public abstract getAudioFileInfo(Ljava/lang/String;)I
.end method

.method public abstract getAudioMixingCurrentPosition()I
.end method

.method public abstract getAudioMixingDuration()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAudioMixingPlayoutVolume()I
.end method

.method public abstract getAudioMixingPublishVolume()I
.end method

.method public abstract getAudioTrackCount()I
.end method

.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract getCameraMaxZoomFactor()F
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract getNativeHandle()J
.end method

.method public abstract getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserInfoByUid(ILio/agora/rtc/models/UserInfo;)I
.end method

.method public abstract getUserInfoByUserAccount(Ljava/lang/String;Lio/agora/rtc/models/UserInfo;)I
.end method

.method public abstract isCameraAutoFocusFaceModeSupported()Z
.end method

.method public abstract isCameraExposurePositionSupported()Z
.end method

.method public abstract isCameraFocusSupported()Z
.end method

.method public abstract isCameraTorchSupported()Z
.end method

.method public abstract isCameraZoomSupported()Z
.end method

.method public abstract isSpeakerphoneEnabled()Z
.end method

.method public abstract isTextureEncodeSupported()Z
.end method

.method public abstract joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/agora/rtc/models/ChannelMediaOptions;)I
.end method

.method public abstract joinChannelWithUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract joinChannelWithUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/agora/rtc/models/ChannelMediaOptions;)I
.end method

.method public abstract leaveChannel()I
.end method

.method public abstract monitorBluetoothHeadsetEvent(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract monitorHeadsetEvent(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract muteAllRemoteAudioStreams(Z)I
.end method

.method public abstract muteAllRemoteVideoStreams(Z)I
.end method

.method public abstract muteLocalAudioStream(Z)I
.end method

.method public abstract muteLocalVideoStream(Z)I
.end method

.method public abstract muteRemoteAudioStream(IZ)I
.end method

.method public abstract muteRemoteVideoStream(IZ)I
.end method

.method public abstract pauseAllChannelMediaRelay()I
.end method

.method public abstract pauseAudio()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pauseAudioMixing()I
.end method

.method public abstract pullPlaybackAudioFrame([BI)I
.end method

.method public abstract pushExternalAudioFrame([BJ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pushExternalAudioFrame([BJIIII)I
.end method

.method public abstract pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z
.end method

.method public abstract rate(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract registerAudioFrameObserver(Lio/agora/rtc/IAudioFrameObserver;)I
.end method

.method public abstract registerLocalUserAccount(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract registerMediaMetadataObserver(Lio/agora/rtc/IMetadataObserver;I)I
.end method

.method public abstract registerVideoEncodedFrameObserver(Lio/agora/rtc/IVideoEncodedFrameObserver;)I
.end method

.method public abstract registerVideoFrameObserver(Lio/agora/rtc/IVideoFrameObserver;)I
.end method

.method public abstract releaseLogWriter()I
.end method

.method public removeHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V
    .registers 3

    sget-object v0, Lio/agora/rtc/RtcEngine;->mInstance:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->removeHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    return-void
.end method

.method public abstract removeInjectStreamUrl(Ljava/lang/String;)I
.end method

.method public abstract removePublishStreamUrl(Ljava/lang/String;)I
.end method

.method public abstract renewToken(Ljava/lang/String;)I
.end method

.method public abstract resumeAllChannelMediaRelay()I
.end method

.method public abstract resumeAudio()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resumeAudioMixing()I
.end method

.method public abstract selectAudioTrack(I)I
.end method

.method public abstract sendCustomReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract sendStreamMessage(I[B)I
.end method

.method public abstract setAVSyncSource(Ljava/lang/String;I)I
.end method

.method public abstract setAudioEffectParameters(III)I
.end method

.method public abstract setAudioEffectPreset(I)I
.end method

.method public abstract setAudioMixingDualMonoMode(I)I
.end method

.method public abstract setAudioMixingPitch(I)I
.end method

.method public abstract setAudioMixingPlaybackSpeed(I)I
.end method

.method public abstract setAudioMixingPosition(I)I
.end method

.method public abstract setAudioProfile(II)I
.end method

.method public abstract setBeautyEffectOptions(ZLio/agora/rtc/video/BeautyOptions;)I
.end method

.method public abstract setCameraAutoFocusFaceModeEnabled(Z)I
.end method

.method public abstract setCameraCapturerConfiguration(Lio/agora/rtc/video/CameraCapturerConfiguration;)I
.end method

.method public abstract setCameraExposurePosition(FF)I
.end method

.method public abstract setCameraFocusPositionInPreview(FF)I
.end method

.method public abstract setCameraTorchOn(Z)I
.end method

.method public abstract setCameraZoomFactor(F)I
.end method

.method public abstract setChannelProfile(I)I
.end method

.method public abstract setClientRole(I)I
.end method

.method public abstract setClientRole(ILio/agora/rtc/models/ClientRoleOptions;)I
.end method

.method public abstract setCloudProxy(I)I
.end method

.method public abstract setColorEnhanceOptions(ZLio/agora/rtc/video/ColorEnhanceOptions;)I
.end method

.method public abstract setDefaultAudioRoutetoSpeakerphone(Z)I
.end method

.method public abstract setDefaultMuteAllRemoteAudioStreams(Z)I
.end method

.method public abstract setDefaultMuteAllRemoteVideoStreams(Z)I
.end method

.method public abstract setEnableSpeakerphone(Z)I
.end method

.method public abstract setEncryptionMode(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setEncryptionSecret(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setExternalAudioSink(ZII)I
.end method

.method public abstract setExternalAudioSource(ZII)I
.end method

.method public abstract setExternalAudioSourceVolume(II)I
.end method

.method public abstract setExternalVideoSource(ZZZ)V
.end method

.method public abstract setHighQualityAudioParameters(ZZZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setInEarMonitoringVolume(I)I
.end method

.method public abstract setLiveTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I
.end method

.method public abstract setLocalAccessPoint(Lio/agora/rtc/proxy/LocalAccessPointConfiguration;)I
.end method

.method public abstract setLocalPublishFallbackOption(I)I
.end method

.method public abstract setLocalRenderMode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLocalRenderMode(II)I
.end method

.method public abstract setLocalVideoMirrorMode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLocalVideoRenderer(Lio/agora/rtc/mediaio/IVideoSink;)I
.end method

.method public abstract setLocalVoiceChanger(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLocalVoiceEqualization(II)I
.end method

.method public abstract setLocalVoicePitch(D)I
.end method

.method public abstract setLocalVoiceReverb(II)I
.end method

.method public abstract setLocalVoiceReverbPreset(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLogFile(Ljava/lang/String;)I
.end method

.method public abstract setLogFileSize(I)I
.end method

.method public abstract setLogFilter(I)I
.end method

.method public abstract setLogWriter(Lio/agora/rtc/ILogWriter;)I
.end method

.method public abstract setLowlightEnhanceOptions(ZLio/agora/rtc/video/LowLightEnhanceOptions;)I
.end method

.method public abstract setMixedAudioFrameParameters(II)I
.end method

.method public abstract setParameters(Ljava/lang/String;)I
.end method

.method public abstract setPlaybackAudioFrameParameters(IIII)I
.end method

.method public abstract setPreferHeadset(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setRecordingAudioFrameParameters(IIII)I
.end method

.method public abstract setRemoteDefaultVideoStreamType(I)I
.end method

.method public abstract setRemoteRenderMode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setRemoteRenderMode(III)I
.end method

.method public abstract setRemoteSubscribeFallbackOption(I)I
.end method

.method public abstract setRemoteUserPriority(II)I
.end method

.method public abstract setRemoteUserSpatialAudioParams(ILio/agora/rtc/audio/SpatialAudioParams;)I
.end method

.method public abstract setRemoteVideoRenderer(ILio/agora/rtc/mediaio/IVideoSink;)I
.end method

.method public abstract setRemoteVideoStreamType(II)I
.end method

.method public abstract setRemoteVoicePosition(IDD)I
.end method

.method public abstract setVideoDenoiserOptions(ZLio/agora/rtc/video/VideoDenoiserOptions;)I
.end method

.method public abstract setVideoEncoderConfiguration(Lio/agora/rtc/video/VideoEncoderConfiguration;)I
.end method

.method public abstract setVideoProfile(IIII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVideoProfile(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVideoQualityParameters(Z)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVideoSource(Lio/agora/rtc/mediaio/IVideoSource;)I
.end method

.method public abstract setVoiceBeautifierParameters(III)I
.end method

.method public abstract setVoiceBeautifierPreset(I)I
.end method

.method public abstract setVoiceConversionPreset(I)I
.end method

.method public abstract setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I
.end method

.method public abstract setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I
.end method

.method public abstract startAudioMixing(Ljava/lang/String;ZZI)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startAudioMixing(Ljava/lang/String;ZZII)I
.end method

.method public abstract startAudioRecording(Lio/agora/rtc/audio/AudioRecordingConfiguration;)I
.end method

.method public abstract startAudioRecording(Ljava/lang/String;I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startAudioRecording(Ljava/lang/String;II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
.end method

.method public abstract startDumpVideoReceiveTrack(ILjava/lang/String;)I
.end method

.method public abstract startEchoTest()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startEchoTest(I)I
.end method

.method public abstract startEchoTest(Lio/agora/rtc/models/EchoTestConfiguration;)I
.end method

.method public abstract startLastmileProbeTest(Lio/agora/rtc/internal/LastmileProbeConfig;)I
.end method

.method public abstract startPreview()I
.end method

.method public abstract startRtmpStreamWithTranscoding(Ljava/lang/String;Lio/agora/rtc/live/LiveTranscoding;)I
.end method

.method public abstract startRtmpStreamWithoutTranscoding(Ljava/lang/String;)I
.end method

.method public abstract startScreenCapture(Lio/agora/rtc/ScreenCaptureParameters;)I
.end method

.method public abstract stopAudioMixing()I
.end method

.method public abstract stopAudioRecording()I
.end method

.method public abstract stopChannelMediaRelay()I
.end method

.method public abstract stopDumpVideoReceiveTrack()I
.end method

.method public abstract stopEchoTest()I
.end method

.method public abstract stopLastmileProbeTest()I
.end method

.method public abstract stopPreview()I
.end method

.method public abstract stopRtmpStream(Ljava/lang/String;)I
.end method

.method public abstract stopScreenCapture()I
.end method

.method public abstract switchCamera()I
.end method

.method public abstract switchChannel(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract switchChannel(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtc/models/ChannelMediaOptions;)I
.end method

.method public abstract takeSnapshot(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract updateChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
.end method

.method public abstract updateRtmpTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I
.end method

.method public abstract updateScreenCaptureParameters(ZZLio/agora/rtc/ScreenCaptureParameters$VideoCaptureParameters;)I
.end method

.method public abstract uploadLogFile()Ljava/lang/String;
.end method

.method public abstract useExternalAudioDevice()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
