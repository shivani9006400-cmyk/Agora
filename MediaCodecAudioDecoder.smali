# classes13.dex

.class public Lio/agora/rtc/audio/MediaCodecAudioDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;
    }
.end annotation


# static fields
.field private static final EXTRACTOR_TIMEOUT_MS:I = 0xea60

.field private static final HTTP_REQUEST_TIMEOUT:I = 0xfa0

.field private static final MAX_DECODER_RETRY_COUNT:I = 0x12c

.field private static final PREFIX_ASSETS:Ljava/lang/String; = "/assets/"

.field private static final PREFIX_DOCUMENT:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "MediaCodec Audio Decoder"


# instance fields
.field private eoInputStream:Z

.field private eoOutputStream:Z

.field private mAACDecoder:Landroid/media/MediaCodec;

.field private mAACOutputBuffer:Ljava/nio/ByteBuffer;

.field private mChannels:I

.field private mContext:Landroid/content/Context;

.field private mDecodedDataReady:Z

.field private mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

.field private mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

.field private mFileLength:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mRetryCount:I

.field private mSampleRate:I

.field private mTrackFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    .line 5
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    .line 7
    iput-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    .line 8
    iput-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    const v2, 0xac44

    .line 9
    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    const/4 v2, 0x2

    .line 10
    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    .line 11
    iput v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    .line 12
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/16 v0, 0x1000

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACOutputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static synthetic access$200(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkInfoChange()Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "sample-rate"

    .line 2
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5622

    if-ne v2, v3, :cond_14

    const/16 v2, 0x55f0

    goto :goto_1a

    :cond_14
    const/16 v3, 0x2b11

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x2af8

    :cond_1a
    :goto_1a
    const-string v3, "channel-count"

    .line 3
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 4
    iget v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    if-ne v3, v2, :cond_2b

    iget v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    if-eq v3, v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v3, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v3, 0x1

    .line 5
    :goto_2c
    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    .line 6
    iput v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    return v3

    :catch_31
    move-exception v1

    const-string v2, "MediaCodec Audio Decoder"

    const-string v3, "Error when checking file\'s new format"

    .line 7
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private cloneByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 2
    :cond_e
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_18

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :cond_18
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 6
    :cond_22
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_32
    return-void
.end method

.method private cloneByteBufferByLength(Ljava/nio/ByteBuffer;I)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1a

    .line 2
    :cond_a
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :cond_14
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    .line 6
    :cond_1a
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object p2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedRAWBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method private createStreaming(IJ)Z
    .registers 12

    const-string v0, "MediaCodec Audio Decoder"

    const/4 v1, 0x0

    .line 32
    :try_start_3
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackCount()I

    move-result v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createStreaming select audio track index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " TrackNums:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr p1, v3

    if-ge v2, p1, :cond_2a

    return v1

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v2, :cond_35

    .line 34
    iget-object v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v5, v4}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->unselectTrack(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_35
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_37
    if-ge v4, v2, :cond_59

    .line 35
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v6, v4}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    iput-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v7, "mime"

    .line 36
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/"

    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_56

    add-int/lit8 v5, v5, 0x1

    if-eq v5, p1, :cond_54

    goto :goto_56

    :cond_54
    const/4 p1, 0x1

    goto :goto_5a

    :cond_56
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_59
    const/4 p1, 0x0

    :goto_5a
    if-nez p1, :cond_62

    const-string p1, "the selected audio track won\'t found"

    .line 38
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 39
    :cond_62
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {p1, v4}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->selectTrack(I)V

    .line 40
    invoke-virtual {p0, p2, p3}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->setCurrentFilePosition(J)V

    .line 41
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string p2, "channel-count"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    .line 42
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string p2, "sample-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    const/16 p2, 0x5622

    if-ne p1, p2, :cond_87

    const/16 p1, 0x55f0

    .line 43
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    goto :goto_8f

    :cond_87
    const/16 p2, 0x2b11

    if-ne p1, p2, :cond_8f

    const/16 p1, 0x2af8

    .line 44
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    .line 45
    :cond_8f
    :goto_8f
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string p2, "durationUs"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_99} :catch_9a

    return v3

    :catch_9a
    move-exception p1

    const-string p2, "Error when creating aac audio file decoder"

    .line 46
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "MediaCodec Audio Decoder"

    const-string v1, "encodedUrl()"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_7
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v9, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v9}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static testNetworkUrlAvailable(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "MediaCodec Audio Decoder"

    const-string v1, "testNetworkUrlAvailable encodedUrl"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_9
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_3c
    .catchall {:try_start_9 .. :try_end_14} :catchall_3a

    const/16 v1, 0xfa0

    .line 4
    :try_start_16
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 8
    :goto_2a
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_38
    .catchall {:try_start_16 .. :try_end_33} :catchall_49

    .line 10
    :cond_33
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_48

    :catch_38
    move-exception v1

    goto :goto_40

    :catchall_3a
    move-exception v0

    goto :goto_4b

    :catch_3c
    move-exception p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    .line 11
    :goto_40
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_49

    if-eqz p0, :cond_48

    .line 12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_48
    :goto_48
    return v0

    :catchall_49
    move-exception v0

    move-object v1, p0

    :goto_4b
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_50
    throw v0
.end method


# virtual methods
.method public checkAACSupported()Z
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_2c

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_29

    .line 5
    :cond_18
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nvidia"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2e

    if-eqz v5, :cond_29

    goto :goto_2d

    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :catch_2e
    move-exception v1

    const-string v2, "MediaCodec Audio Decoder"

    const-string v3, "Error when checking aac codec availability"

    .line 7
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public checkUrlEncoded(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_d

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_d
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public createAACStreaming(I)Z
    .registers 6

    const-string v0, "audio/mp4a-latm"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, p1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 3
    invoke-virtual {v0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "channel-count"

    .line 4
    invoke-virtual {v0, p1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    const/16 v3, 0x12

    aput-byte v3, p1, v1

    const/16 v3, -0x78

    aput-byte v3, p1, v2

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v3, "csd-0"

    .line 6
    invoke-virtual {v0, v3, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_39

    .line 9
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_3a

    :cond_39
    return v2

    :catch_3a
    move-exception p1

    const-string v0, "MediaCodec Audio Decoder"

    const-string v2, "Error when creating aac decode stream"

    .line 10
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public createStreaming(Ljava/lang/String;)Z
    .registers 9

    const-string v0, "MediaCodec Audio Decoder"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to decode audio file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string p1, "Fail to open, empty url"

    .line 4
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_25
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 6
    invoke-virtual {p0, p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->checkUrlEncoded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v2, p1

    goto :goto_37

    :cond_33
    invoke-static {p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_37
    if-eqz v2, :cond_3f

    .line 7
    invoke-static {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->testNetworkUrlAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    :cond_3f
    const-string p1, "Fail to open, 404 for url"

    .line 8
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_45
    new-instance v2, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-direct {v2, p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;-><init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)V

    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    .line 10
    invoke-static {v2, p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$000(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5b

    const-string p1, "Failed to setDataSource"

    .line 11
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->releaseStreaming()V

    return v1

    .line 13
    :cond_5b
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {p1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackCount()I

    move-result p1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createStreaming getAudioTrack Tracknum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_76
    if-ge v2, p1, :cond_80

    .line 15
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v3, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->unselectTrack(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_80
    const/4 v2, 0x0

    :goto_81
    if-ge v2, p1, :cond_b6

    .line 16
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v3, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    .line 17
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v5, "pcm-encoding"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "audio/"

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 20
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {p1, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->selectTrack(I)V

    .line 21
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 22
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_b6

    :cond_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 23
    :cond_b6
    :goto_b6
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_bd

    .line 24
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 25
    :cond_bd
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v2, "channel-count"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    .line 26
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    const/16 v2, 0x5622

    if-ne p1, v2, :cond_da

    const/16 p1, 0x55f0

    .line 27
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    goto :goto_e2

    :cond_da
    const/16 v2, 0x2b11

    if-ne p1, v2, :cond_e2

    const/16 p1, 0x2af8

    .line 28
    iput p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    .line 29
    :cond_e2
    :goto_e2
    iget-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mTrackFormat:Landroid/media/MediaFormat;

    const-string v2, "durationUs"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ec} :catch_ee

    const/4 p1, 0x1

    return p1

    :catch_ee
    move-exception p1

    const-string v2, "Error when creating aac audio file decoder"

    .line 30
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public decodeAACFrame([B)I
    .registers 14

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_21

    .line 2
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    array-length v7, p1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 6
    :cond_21
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 7
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_65

    const/4 v2, -0x2

    if-eq v1, v2, :cond_65

    const/4 v2, -0x1

    if-eq v1, v2, :cond_65

    if-ltz v1, :cond_65

    .line 8
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_5a

    .line 10
    :try_start_41
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_53} :catch_55

    move v0, p1

    goto :goto_65

    :catch_55
    move-exception v0

    move-object v11, v0

    move v0, p1

    move-object p1, v11

    goto :goto_5b

    :catch_5a
    move-exception p1

    :goto_5b
    const-string v1, "MediaCodec Audio Decoder"

    const-string v2, "Error when decoding aac stream"

    .line 14
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_65
    :goto_65
    return v0
.end method

.method public decodeFrame()Z
    .registers 14

    const-string v0, "MediaCodec Audio Decoder"

    .line 1
    :try_start_2
    iget-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_43

    .line 2
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_43

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v6, v1, v5}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-gtz v1, :cond_24

    .line 5
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    const/4 v9, 0x0

    goto :goto_25

    :cond_24
    move v9, v1

    .line 6
    :goto_25
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getSampleTime()J

    move-result-wide v10

    .line 7
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getSampleFlags()I

    move-result v1

    .line 8
    iget-boolean v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    if-eqz v6, :cond_37

    or-int/lit8 v1, v1, 0x4

    :cond_37
    move v12, v1

    .line 9
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 10
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->advance()V

    .line 11
    :cond_43
    iget-boolean v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    if-nez v1, :cond_be

    .line 12
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 13
    iget-object v6, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 14
    iput-boolean v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    const/4 v3, -0x3

    if-eq v2, v3, :cond_be

    const/4 v3, -0x2

    if-eq v2, v3, :cond_be

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7a

    .line 15
    iput v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    if-ltz v2, :cond_be

    .line 16
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_69

    .line 17
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    .line 18
    :cond_69
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->cloneByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 20
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 21
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    goto :goto_be

    .line 22
    :cond_7a
    iget v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_be

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAGAIN count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " presentationTimeUs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalUs="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Force EOS"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-boolean v4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b4} :catch_b5

    goto :goto_be

    :catch_b5
    move-exception v1

    const-string v2, "Error when decoding audio file stream"

    .line 25
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_be
    :goto_be
    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mChannels:I

    return v0
.end method

.method public getCurrentFilePosition()J
    .registers 3

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecodeDataReadyFlag()Z
    .registers 2

    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    return v0
.end method

.method public getFileLength()J
    .registers 3

    iget-wide v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mFileLength:J

    return-wide v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mSampleRate:I

    return v0
.end method

.method public getTrackNum()I
    .registers 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v1, v0, :cond_26

    .line 3
    iget-object v3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-virtual {v3, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 4
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v2, v2, 0x1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_26
    return v2
.end method

.method public releaseAACStreaming()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mAACDecoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    const-string v1, "MediaCodec Audio Decoder"

    const-string v2, "Error when releasing aac decode stream"

    .line 5
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public releaseStreaming()V
    .registers 5

    const-string v0, "MediaCodec Audio Decoder"

    .line 1
    :try_start_2
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_29

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 2
    :try_start_7
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v1

    :try_start_c
    const-string v3, "Media decoder stop failed"

    .line 3
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_29

    .line 4
    :goto_11
    :try_start_11
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v1

    :try_start_18
    const-string v3, "Media decoder release failed"

    .line 5
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1d
    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 7
    :cond_1f
    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    if-eqz v1, :cond_32

    .line 8
    invoke-virtual {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->release()V

    .line 9
    iput-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_29

    goto :goto_32

    :catch_29
    move-exception v1

    const-string v2, "Error when releasing audio file stream"

    .line 10
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_32
    :goto_32
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    .line 13
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    return-void
.end method

.method public rewindStreaming()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->seekTo(JI)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_19

    :catch_e
    move-exception v0

    const-string v1, "MediaCodec Audio Decoder"

    const-string v2, "Error when rewinding audio file stream"

    .line 3
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_19
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoInputStream:Z

    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->eoOutputStream:Z

    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mDecodedDataReady:Z

    return-void
.end method

.method public selectTrack(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    invoke-virtual {p0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->getCurrentFilePosition()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->createStreaming(IJ)Z

    move-result p1

    return p1
.end method

.method public setCurrentFilePosition(J)V
    .registers 5

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->mExtractor:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->seekTo(JI)V

    return-void
.end method
