# classes13.dex

.class public Lio/agora/rtc/video/WatermarkOptions$Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/WatermarkOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rectangle"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 3
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 4
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 5
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 8
    iput p2, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 9
    iput p3, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 10
    iput p4, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    return-void
.end method
