# classes13.dex

.class public Lio/agora/rtc/video/VideoDenoiserOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIDEO_DENOISER_AUTO:I = 0x0

.field public static final VIDEO_DENOISER_LEVEL_FAST:I = 0x1

.field public static final VIDEO_DENOISER_LEVEL_HIGH_QUALITY:I = 0x0

.field public static final VIDEO_DENOISER_LEVEL_STRENGTH:I = 0x2

.field public static final VIDEO_DENOISER_MANUAL:I = 0x1


# instance fields
.field public denoiserLevel:I

.field public denoiserMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/video/VideoDenoiserOptions;->denoiserMode:I

    .line 3
    iput v0, p0, Lio/agora/rtc/video/VideoDenoiserOptions;->denoiserLevel:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lio/agora/rtc/video/VideoDenoiserOptions;->denoiserMode:I

    .line 6
    iput p2, p0, Lio/agora/rtc/video/VideoDenoiserOptions;->denoiserLevel:I

    return-void
.end method
