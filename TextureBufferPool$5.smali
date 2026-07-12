# classes13.dex

.class synthetic Lio/agora/rtc/gl/TextureBufferPool$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/TextureBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->values()[Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/agora/rtc/gl/TextureBufferPool$5;->$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I

    :try_start_9
    sget-object v1, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/agora/rtc/gl/TextureBufferPool$5;->$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I

    sget-object v1, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
