# classes13.dex

.class public Lio/agora/rtc/IRtcEngineEventHandler$WlAccAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/IRtcEngineEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WlAccAction"
.end annotation


# static fields
.field public static final WLACC_SUGGEST_ACTION_CHECK_5G:I = 0x2

.field public static final WLACC_SUGGEST_ACTION_CLOSE_TO_WIFI:I = 0x0

.field public static final WLACC_SUGGEST_ACTION_CONNECT_SSID:I = 0x1

.field public static final WLACC_SUGGEST_ACTION_MODIFY_SSID:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
