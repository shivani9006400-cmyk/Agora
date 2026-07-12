# classes13.dex

.class public abstract Lio/agora/rtc/IRtcChannelEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSpeaker(Lio/agora/rtc/RtcChannel;I)V
    .registers 3

    return-void
.end method

.method public onAudioPublishStateChanged(Lio/agora/rtc/RtcChannel;III)V
    .registers 5

    return-void
.end method

.method public onAudioSubscribeStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .registers 6

    return-void
.end method

.method public onChannelError(Lio/agora/rtc/RtcChannel;I)V
    .registers 3

    return-void
.end method

.method public onChannelMediaRelayEvent(Lio/agora/rtc/RtcChannel;I)V
    .registers 3

    return-void
.end method

.method public onChannelMediaRelayStateChanged(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onChannelWarning(Lio/agora/rtc/RtcChannel;I)V
    .registers 3

    return-void
.end method

.method public onClientRoleChangeFailed(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onClientRoleChanged(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onConnectionLost(Lio/agora/rtc/RtcChannel;)V
    .registers 2

    return-void
.end method

.method public onConnectionStateChanged(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onFirstRemoteVideoFrame(Lio/agora/rtc/RtcChannel;IIII)V
    .registers 6

    return-void
.end method

.method public onJoinChannelSuccess(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .registers 3

    return-void
.end method

.method public onLocalPublishFallbackToAudioOnly(Lio/agora/rtc/RtcChannel;Z)V
    .registers 3

    return-void
.end method

.method public onNetworkQuality(Lio/agora/rtc/RtcChannel;III)V
    .registers 5

    return-void
.end method

.method public onProxyConnected(Lio/agora/rtc/RtcChannel;IILjava/lang/String;I)V
    .registers 6

    return-void
.end method

.method public onRejoinChannelSuccess(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onRemoteAudioStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .registers 6

    return-void
.end method

.method public onRemoteAudioStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;)V
    .registers 3

    return-void
.end method

.method public onRemoteSubscribeFallbackToAudioOnly(Lio/agora/rtc/RtcChannel;IZ)V
    .registers 4

    return-void
.end method

.method public onRemoteVideoStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .registers 6

    return-void
.end method

.method public onRemoteVideoStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V
    .registers 3

    return-void
.end method

.method public onRequestToken(Lio/agora/rtc/RtcChannel;)V
    .registers 2

    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .registers 3

    return-void
.end method

.method public onRtmpStreamingEvent(Lio/agora/rtc/RtcChannel;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public onRtmpStreamingStateChanged(Lio/agora/rtc/RtcChannel;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method

.method public onStreamInjectedStatus(Lio/agora/rtc/RtcChannel;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method

.method public onStreamMessage(Lio/agora/rtc/RtcChannel;II[B)V
    .registers 5

    return-void
.end method

.method public onStreamMessageError(Lio/agora/rtc/RtcChannel;IIIII)V
    .registers 7

    return-void
.end method

.method public onTokenPrivilegeWillExpire(Lio/agora/rtc/RtcChannel;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onTranscodingUpdated(Lio/agora/rtc/RtcChannel;)V
    .registers 2

    return-void
.end method

.method public onUserJoined(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onUserOffline(Lio/agora/rtc/RtcChannel;II)V
    .registers 4

    return-void
.end method

.method public onUserSuperResolutionEnabled(Lio/agora/rtc/RtcChannel;IZI)V
    .registers 5

    return-void
.end method

.method public onVideoPublishStateChanged(Lio/agora/rtc/RtcChannel;III)V
    .registers 5

    return-void
.end method

.method public onVideoSizeChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .registers 6

    return-void
.end method

.method public onVideoSubscribeStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .registers 6

    return-void
.end method
