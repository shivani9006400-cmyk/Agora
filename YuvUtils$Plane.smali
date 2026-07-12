# classes13.dex

.class Lio/agora/rtc/utils/YuvUtils$Plane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/utils/YuvUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plane"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private pixelStride:I

.field private rowStride:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/utils/YuvUtils$Plane;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    iput p2, p0, Lio/agora/rtc/utils/YuvUtils$Plane;->rowStride:I

    .line 4
    iput p3, p0, Lio/agora/rtc/utils/YuvUtils$Plane;->pixelStride:I

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/utils/YuvUtils$Plane;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/utils/YuvUtils$Plane;->pixelStride:I

    return v0
.end method

.method public getRowStride()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/utils/YuvUtils$Plane;->rowStride:I

    return v0
.end method
