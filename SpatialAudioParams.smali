# classes13.dex

.class public Lio/agora/rtc/audio/SpatialAudioParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enable_air_absorb:Ljava/lang/Boolean;

.field public enable_blur:Ljava/lang/Boolean;

.field public spk_azimuth:Ljava/lang/Double;

.field public spk_distance:Ljava/lang/Double;

.field public spk_elevation:Ljava/lang/Double;

.field public spk_orientation:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableAirAbsorb(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/SpatialAudioParams;->enable_air_absorb:Ljava/lang/Boolean;

    return-void
.end method

.method public enableBlur(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/SpatialAudioParams;->enable_blur:Ljava/lang/Boolean;

    return-void
.end method

.method public getAirAbsorbFlag()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/audio/SpatialAudioParams;->enable_air_absorb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBlurFlag()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/audio/SpatialAudioParams;->enable_blur:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSpeakerAzimuth()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_azimuth:Ljava/lang/Double;

    return-object v0
.end method

.method public getSpeakerDistance()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_distance:Ljava/lang/Double;

    return-object v0
.end method

.method public getSpeakerElevation()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_elevation:Ljava/lang/Double;

    return-object v0
.end method

.method public getSpeakerOrientation()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_orientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSpeakerAzimuth(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_azimuth:Ljava/lang/Double;

    return-void
.end method

.method public setSpeakerDistance(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_distance:Ljava/lang/Double;

    return-void
.end method

.method public setSpeakerElevation(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_elevation:Ljava/lang/Double;

    return-void
.end method

.method public setSpeakerOrientation(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lio/agora/rtc/audio/SpatialAudioParams;->spk_orientation:Ljava/lang/Integer;

    return-void
.end method
