# classes13.dex

.class public Lio/agora/rtc/utils/AgoraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgoraUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureNativeLibsInitialized()Z
    .registers 1

    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    move-result v0

    return v0
.end method

.method public static getDisplayRotation(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    const/16 p0, 0x10e

    return p0

    :cond_1e
    const/16 p0, 0xb4

    return p0

    :cond_21
    const/16 p0, 0x5a

    return p0
.end method

.method public static getFrameOrientation(IIZZ)I
    .registers 4

    if-eqz p2, :cond_c

    add-int/2addr p1, p0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    if-eqz p3, :cond_11

    rsub-int p0, p1, 0x168

    .line 2
    rem-int/lit16 p1, p0, 0x168

    goto :goto_11

    :cond_c
    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    .line 3
    rem-int/lit16 p1, p1, 0x168

    :cond_11
    :goto_11
    return p1
.end method
