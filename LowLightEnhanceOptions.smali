# classes13.dex

.class public Lio/agora/rtc/video/LowLightEnhanceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOW_LIGHT_ENHANCE_AUTO:I = 0x0

.field public static final LOW_LIGHT_ENHANCE_LEVEL_FAST:I = 0x1

.field public static final LOW_LIGHT_ENHANCE_LEVEL_HIGH_QUALITY:I = 0x0

.field public static final LOW_LIGHT_ENHANCE_MANUAL:I = 0x1


# instance fields
.field public lowlightEnhanceLevel:I

.field public lowlightEnhanceMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/video/LowLightEnhanceOptions;->lowlightEnhanceMode:I

    .line 3
    iput v0, p0, Lio/agora/rtc/video/LowLightEnhanceOptions;->lowlightEnhanceLevel:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lio/agora/rtc/video/LowLightEnhanceOptions;->lowlightEnhanceMode:I

    .line 6
    iput p2, p0, Lio/agora/rtc/video/LowLightEnhanceOptions;->lowlightEnhanceLevel:I

    return-void
.end method
