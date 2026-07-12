# classes13.dex

.class public abstract Lio/agora/rtc/IRtcEngineEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;,
        Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;,
        Lio/agora/rtc/IRtcEngineEventHandler$WlAccStats;,
        Lio/agora/rtc/IRtcEngineEventHandler$LocalAudioStats;,
        Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;,
        Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;,
        Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;,
        Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;,
        Lio/agora/rtc/IRtcEngineEventHandler$AudioFileInfo;,
        Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;,
        Lio/agora/rtc/IRtcEngineEventHandler$UploadErrorReason;,
        Lio/agora/rtc/IRtcEngineEventHandler$UserOfflineReason;,
        Lio/agora/rtc/IRtcEngineEventHandler$ClientRole;,
        Lio/agora/rtc/IRtcEngineEventHandler$VideoProfile;,
        Lio/agora/rtc/IRtcEngineEventHandler$ErrorCode;,
        Lio/agora/rtc/IRtcEngineEventHandler$WarnCode;,
        Lio/agora/rtc/IRtcEngineEventHandler$WlAccAction;,
        Lio/agora/rtc/IRtcEngineEventHandler$WlAccReason;,
        Lio/agora/rtc/IRtcEngineEventHandler$ExperiencePoorReason;,
        Lio/agora/rtc/IRtcEngineEventHandler$ExperienceQuality;,
        Lio/agora/rtc/IRtcEngineEventHandler$Quality;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSpeaker(I)V
    .registers 2

    return-void
.end method

.method public onApiCallExecuted(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onAudioEffectFinished(I)V
    .registers 2

    return-void
.end method

.method public onAudioMixingFinished()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioMixingStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onAudioPublishStateChanged(Ljava/lang/String;III)V
    .registers 5

    return-void
.end method

.method public onAudioQuality(IISS)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioRouteChanged(I)V
    .registers 2

    return-void
.end method

.method public onAudioSubscribeStateChanged(Ljava/lang/String;IIII)V
    .registers 6

    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .registers 3

    return-void
.end method

.method public onCameraExposureAreaChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onCameraFocusAreaChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onCameraReady()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onChannelMediaRelayEvent(I)V
    .registers 2

    return-void
.end method

.method public onChannelMediaRelayStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onClientRoleChangeFailed(II)V
    .registers 3

    return-void
.end method

.method public onClientRoleChanged(II)V
    .registers 3

    return-void
.end method

.method public onConnectionBanned()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConnectionInterrupted()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConnectionLost()V
    .registers 1

    return-void
.end method

.method public onConnectionStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onContentInspectResult(I)V
    .registers 2

    return-void
.end method

.method public onError(I)V
    .registers 2

    return-void
.end method

.method public onFacePositionChanged(II[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;)V
    .registers 4

    return-void
.end method

.method public onFirstLocalAudioFrame(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onFirstLocalAudioFramePublished(I)V
    .registers 2

    return-void
.end method

.method public onFirstLocalVideoFrame(III)V
    .registers 4

    return-void
.end method

.method public onFirstLocalVideoFramePublished(I)V
    .registers 2

    return-void
.end method

.method public onFirstRemoteAudioDecoded(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onFirstRemoteAudioFrame(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .registers 5

    return-void
.end method

.method public onFirstRemoteVideoFrame(IIII)V
    .registers 5

    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onLastmileProbeResult(Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;)V
    .registers 2

    return-void
.end method

.method public onLastmileQuality(I)V
    .registers 2

    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .registers 2

    return-void
.end method

.method public onLocalAudioStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onLocalAudioStats(Lio/agora/rtc/IRtcEngineEventHandler$LocalAudioStats;)V
    .registers 2

    return-void
.end method

.method public onLocalPublishFallbackToAudioOnly(Z)V
    .registers 2

    return-void
.end method

.method public onLocalUserRegistered(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onLocalVideoStat(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onLocalVideoStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onLocalVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;)V
    .registers 2

    return-void
.end method

.method public onLocalVoicePitchInHz(I)V
    .registers 2

    return-void
.end method

.method public onMediaEngineLoadSuccess()V
    .registers 1

    return-void
.end method

.method public onMediaEngineStartCallSuccess()V
    .registers 1

    return-void
.end method

.method public onMicrophoneEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onNetworkQuality(III)V
    .registers 4

    return-void
.end method

.method public onNetworkTypeChanged(I)V
    .registers 2

    return-void
.end method

.method public onProxyConnected(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6

    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onRemoteAudioStateChanged(IIII)V
    .registers 5

    return-void
.end method

.method public onRemoteAudioStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;)V
    .registers 2

    return-void
.end method

.method public onRemoteAudioTransportStats(IIII)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onRemoteSubscribeFallbackToAudioOnly(IZ)V
    .registers 3

    return-void
.end method

.method public onRemoteVideoStat(IIII)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onRemoteVideoStateChanged(IIII)V
    .registers 5

    return-void
.end method

.method public onRemoteVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V
    .registers 2

    return-void
.end method

.method public onRemoteVideoTransportStats(IIII)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onRequestAudioFileInfo(Lio/agora/rtc/IRtcEngineEventHandler$AudioFileInfo;I)V
    .registers 3

    return-void
.end method

.method public onRequestToken()V
    .registers 1

    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .registers 2

    return-void
.end method

.method public onRtmpStreamingEvent(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onRtmpStreamingStateChanged(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onSnapshotTaken(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7

    return-void
.end method

.method public onStreamInjectedStatus(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onStreamMessage(II[B)V
    .registers 4

    return-void
.end method

.method public onStreamMessageError(IIIII)V
    .registers 6

    return-void
.end method

.method public onStreamPublished(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStreamUnpublished(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onTokenPrivilegeWillExpire(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onTranscodingUpdated()V
    .registers 1

    return-void
.end method

.method public onUploadLogResult(Ljava/lang/String;ZI)V
    .registers 4

    return-void
.end method

.method public onUserEnableLocalVideo(IZ)V
    .registers 3

    return-void
.end method

.method public onUserEnableVideo(IZ)V
    .registers 3

    return-void
.end method

.method public onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V
    .registers 3

    return-void
.end method

.method public onUserJoined(II)V
    .registers 3

    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .registers 3

    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .registers 3

    return-void
.end method

.method public onUserOffline(II)V
    .registers 3

    return-void
.end method

.method public onUserSuperResolutionEnabled(IZI)V
    .registers 4

    return-void
.end method

.method public onVideoPublishStateChanged(Ljava/lang/String;III)V
    .registers 5

    return-void
.end method

.method public onVideoSizeChanged(IIII)V
    .registers 5

    return-void
.end method

.method public onVideoStopped()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoSubscribeStateChanged(Ljava/lang/String;IIII)V
    .registers 6

    return-void
.end method

.method public onVirtualBackgroundSourceEnabled(ZI)V
    .registers 3

    return-void
.end method

.method public onWarning(I)V
    .registers 2

    return-void
.end method

.method public onWlAccMessage(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onWlAccStats(Lio/agora/rtc/IRtcEngineEventHandler$WlAccStats;Lio/agora/rtc/IRtcEngineEventHandler$WlAccStats;)V
    .registers 3

    return-void
.end method
