# classes13.dex

.class public Lio/agora/rtc/IRtcEngineEventHandler$WlAccStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/IRtcEngineEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WlAccStats"
.end annotation


# instance fields
.field public e2eDelayPercent:S

.field public frozenRatioPercent:S

.field public lossRatePercent:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
