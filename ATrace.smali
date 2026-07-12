# classes13.dex

.class public Lio/agora/rtc/internal/ATrace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENABLE_TRACE:Z = false

.field private static final TAG:Ljava/lang/String; = "ATrace"

.field private static final TRACE_TAG_APP:J = 0x1000L

.field public static final VERBOSE_LOG:Z = false

.field private static traceCounterMethod:Ljava/lang/reflect/Method; = null

.field private static traceCounterMethodFailed:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static endSection()V
    .registers 0

    return-void
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .registers 2

    return-void
.end method
