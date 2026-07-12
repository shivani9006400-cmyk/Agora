# classes13.dex

.class public Lio/agora/rtc/video/ColorEnhanceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public skinProtectLevel:F

.field public strengthLevel:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000  # 0.5f

    .line 2
    iput v0, p0, Lio/agora/rtc/video/ColorEnhanceOptions;->strengthLevel:F

    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    iput v0, p0, Lio/agora/rtc/video/ColorEnhanceOptions;->skinProtectLevel:F

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lio/agora/rtc/video/ColorEnhanceOptions;->strengthLevel:F

    .line 6
    iput p2, p0, Lio/agora/rtc/video/ColorEnhanceOptions;->skinProtectLevel:F

    return-void
.end method
