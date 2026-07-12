# classes13.dex

.class public Lio/agora/rtc/gdp/GDPAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static final CPU_TEMP_FILE_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICEINFO_UNKNOWN:I = -0x1

.field private static TAG:Ljava/lang/String; = "GDPAndroid"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mGpuRenderer:Ljava/lang/String;

.field private mGpuVendor:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    .line 1
    new-instance v0, Lio/agora/rtc/gdp/GDPAndroid$1;

    invoke-direct {v0}, Lio/agora/rtc/gdp/GDPAndroid$1;-><init>()V

    sput-object v0, Lio/agora/rtc/gdp/GDPAndroid;->CPU_FILTER:Ljava/io/FileFilter;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp"

    const-string v3, "/sys/class/thermal/thermal_zone0/temp"

    const-string v4, "/sys/class/i2c-adapter/i2c-4/4-004c/temperature"

    const-string v5, "/sys/devices/platform/tegra-i2c.3/i2c-4/4-004c/temperature"

    const-string v6, "/sys/devices/platform/omap/omap_temp_sensor.0/temperature"

    const-string v7, "/sys/devices/platform/tegra_tmon/temp1_input"

    const-string v8, "/sys/kernel/debug/tegra_thermal/temp_tj"

    const-string v9, "/sys/devices/platform/s5p-tmu/temperature"

    const-string v10, "/sys/class/thermal/thermal_zone1/temp"

    const-string v11, "/sys/class/hwmon/hwmon0/device/temp1_input"

    const-string v12, "/sys/devices/virtual/thermal/thermal_zone1/temp"

    const-string v13, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    const-string v14, "/sys/class/thermal/thermal_zone3/temp"

    const-string v15, "/sys/class/thermal/thermal_zone4/temp"

    const-string v16, "/sys/class/hwmon/hwmonX/temp1_input"

    const-string v17, "/sys/devices/platform/s5p-tmu/curr_temp"

    .line 2
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/agora/rtc/gdp/GDPAndroid;->CPU_TEMP_FILE_PATHS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    const-string v0, "unkown"

    .line 3
    iput-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuVendor:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuRenderer:Ljava/lang/String;

    return-void
.end method

.method private static extractValue([BI)I
    .registers 5

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_30

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_30

    .line 2
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    add-int/lit8 v0, p1, 0x1

    .line 3
    :goto_13
    array-length v1, p0

    if-ge v0, v1, :cond_21

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 4
    :cond_21
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_30
    const/4 p0, -0x1

    return p0
.end method

.method private gatherGlInfo()V
    .registers 4

    .line 1
    new-instance v0, Lio/agora/rtc/gdp/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/gdp/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 2
    new-instance v1, Lio/agora/rtc/gdp/OffscreenSurface;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lio/agora/rtc/gdp/OffscreenSurface;-><init>(Lio/agora/rtc/gdp/EglCore;II)V

    .line 3
    invoke-virtual {v1}, Lio/agora/rtc/gdp/EglSurfaceBase;->makeCurrent()V

    const/16 v2, 0x1f00

    .line 4
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuVendor:Ljava/lang/String;

    const/16 v2, 0x1f01

    .line 5
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuRenderer:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lio/agora/rtc/gdp/OffscreenSurface;->release()V

    .line 7
    invoke-virtual {v0}, Lio/agora/rtc/gdp/EglCore;->release()V

    return-void
.end method

.method private getBatteryLevel()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method

.method private static getCPUMaxFreqKHz()I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1
    :goto_4
    :try_start_4
    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getNumberOfCPUCores()I

    move-result v4

    if-ge v2, v4, :cond_6e

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_6b

    const/16 v4, 0x80

    new-array v6, v4, [B

    .line 5
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3a} :catch_8c

    .line 6
    :try_start_3a
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    const/4 v5, 0x0

    .line 7
    :goto_3e
    aget-byte v8, v6, v5

    invoke-static {v8}, Ljava/lang/Character;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_4b

    if-ge v5, v4, :cond_4b

    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 8
    :cond_4b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v3, :cond_62

    .line 11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_62} :catch_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_66

    .line 12
    :catch_62
    :cond_62
    :try_start_62
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_6b

    :catchall_66
    move-exception v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 13
    throw v0

    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6e
    if-ne v3, v1, :cond_8b

    .line 14
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_77} :catch_8c

    :try_start_77
    const-string v2, "cpu MHz"

    .line 15
    invoke-static {v2, v0}, Lio/agora/rtc/gdp/GDPAndroid;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v2
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_86

    mul-int/lit16 v2, v2, 0x3e8

    if-le v2, v3, :cond_82

    move v3, v2

    .line 16
    :cond_82
    :try_start_82
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_8b

    :catchall_86
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 17
    throw v2
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8b} :catch_8c

    :cond_8b
    :goto_8b
    move v1, v3

    .line 18
    :catch_8c
    sget-object v0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static getCoresFromCPUFileList()I
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/agora/rtc/gdp/GDPAndroid;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private static getCoresFromFileInfo(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_2b
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    .line 2
    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 5
    invoke-static {v0}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromFileString(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_22
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    .line 6
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1e

    :catch_1e
    return p0

    :catchall_1f
    move-exception p0

    move-object v0, v1

    goto :goto_25

    :catch_22
    move-object v0, v1

    goto :goto_2c

    :catchall_24
    move-exception p0

    :goto_25
    if-eqz v0, :cond_2a

    :try_start_27
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2a

    .line 7
    :catch_2a
    :cond_2a
    throw p0

    :catch_2b
    nop

    :goto_2c
    const/4 p0, -0x1

    if-eqz v0, :cond_32

    .line 8
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return p0
.end method

.method private static getCoresFromFileString(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_1b

    const-string v0, "0-[\\d]+$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1b

    :cond_b
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, -0x1

    return p0
.end method

.method private static getNumberOfCPUCores()I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    const-string v1, "/sys/devices/system/cpu/possible"

    .line 1
    invoke-static {v1}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_f

    const-string v1, "/sys/devices/system/cpu/present"

    .line 2
    invoke-static {v1}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v1

    :cond_f
    if-ne v1, v0, :cond_16

    .line 3
    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromCPUFileList()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_15} :catch_17

    goto :goto_17

    :cond_16
    move v0, v1

    .line 4
    :catch_17
    :goto_17
    sget-object v1, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cores:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static getTotalMemory(Landroid/content/Context;)J
    .registers 5

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    sget-object p0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total mem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method private isEGL14SupportedHere()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private isTemperatureValid(D)Z
    .registers 6

    const-wide/high16 v0, -0x3fc2000000000000L  # -30.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_11

    const-wide v0, 0x406f400000000000L  # 250.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .registers 8

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_3a

    .line 2
    aget-byte v2, v0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_13

    if-nez v1, :cond_37

    .line 3
    :cond_13
    aget-byte v2, v0, v1

    if-ne v2, v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    :cond_19
    move v2, v1

    :goto_1a
    if-ge v2, p1, :cond_37

    sub-int v3, v2, v1

    .line 4
    aget-byte v4, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_27

    goto :goto_37

    .line 5
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_34

    .line 6
    invoke-static {v0, v2}, Lio/agora/rtc/gdp/GDPAndroid;->extractValue([BI)I

    move-result p0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_33} :catch_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_33} :catch_3a

    return p0

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_3a
    :cond_3a
    const/4 p0, -0x1

    return p0
.end method

.method private readOneLine(Ljava/io/File;)D
    .registers 7

    const-string v0, ""

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide v2, -0x3f07960000000000L  # -100000.0

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_39

    .line 2
    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_35
    :try_start_35
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    :goto_39
    return-wide v2
.end method


# virtual methods
.method public checkBackground()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 2
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 3
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_14

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getBattery()I
    .registers 2

    invoke-direct {p0}, Lio/agora/rtc/gdp/GDPAndroid;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public getCpuClock()I
    .registers 2

    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getCPUMaxFreqKHz()I

    move-result v0

    return v0
.end method

.method public getCpuCores()I
    .registers 2

    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getNumberOfCPUCores()I

    move-result v0

    return v0
.end method

.method public getCpuTemperature()I
    .registers 10

    const/4 v0, 0x0

    .line 1
    :goto_1
    sget-object v1, Lio/agora/rtc/gdp/GDPAndroid;->CPU_TEMP_FILE_PATHS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-wide v3, 0x408f400000000000L  # 1000.0

    if-ge v0, v2, :cond_6e

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lio/agora/rtc/gdp/GDPAndroid;->readOneLine(Ljava/io/File;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lio/agora/rtc/gdp/GDPAndroid;->isTemperatureValid(D)Z

    move-result v5

    const-string v6, "getCpuTemperature valid path:"

    if-eqz v5, :cond_46

    .line 5
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 6
    sget-object v0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 7
    :cond_46
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    div-double/2addr v7, v3

    invoke-direct {p0, v7, v8}, Lio/agora/rtc/gdp/GDPAndroid;->isTemperatureValid(D)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 8
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    div-double/2addr v7, v3

    .line 9
    sget-object v0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6e
    const-wide/16 v7, 0x0

    :goto_70
    mul-double v7, v7, v3

    double-to-int v0, v7

    return v0
.end method

.method public getCpuVendor()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuRenderer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getRam()I
    .registers 5

    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lio/agora/rtc/gdp/GDPAndroid;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public initGDP(Landroid/content/Context;)Z
    .registers 2

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/gdp/GDPAndroid;->isEGL14SupportedHere()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3
    invoke-direct {p0}, Lio/agora/rtc/gdp/GDPAndroid;->gatherGlInfo()V

    :cond_b
    const/4 p1, 0x1

    return p1
.end method
