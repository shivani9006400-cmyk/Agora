# classes13.dex

.class public Lio/agora/rtc/IRtcEngineEventHandler$WlAccReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/IRtcEngineEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WlAccReason"
.end annotation


# static fields
.field public static final WLACC_MESSAGE_REASON_CHANNEL_CONGESTION:I = 0x1

.field public static final WLACC_MESSAGE_REASON_WEAK_SIGNAL:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
