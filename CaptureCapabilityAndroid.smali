# classes13.dex

.class public Lio/agora/rtc/video/CaptureCapabilityAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mPreviewFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewFramerates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/video/CaptureCapabilityAndroid;->mPreviewSizes:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/video/CaptureCapabilityAndroid;->mPreviewFormats:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/video/CaptureCapabilityAndroid;->mPreviewFramerates:Ljava/util/List;

    return-void
.end method
