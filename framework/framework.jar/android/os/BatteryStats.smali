.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field public static final AUDIO_TURNED_ON:I = 0x7

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x5

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String; = null

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0xd

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final FULL_WIFI_LOCK:I = 0x5

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription; = null

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0xe

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final SCAN_WIFI_LOCK:I = 0x6

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String; = null

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field public static final STATS_CURRENT:I = 0x2

.field public static final STATS_LAST:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x3

.field private static final STAT_NAMES:[Ljava/lang/String; = null

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field private static final WIFI_LOCK_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 114
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "t"

    aput-object v1, v0, v8

    const-string v1, "l"

    aput-object v1, v0, v9

    const-string v1, "c"

    aput-object v1, v0, v10

    const-string/jumbo v1, "u"

    aput-object v1, v0, v11

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 586
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dark"

    aput-object v1, v0, v8

    const-string v1, "dim"

    aput-object v1, v0, v9

    const-string v1, "medium"

    aput-object v1, v0, v10

    const-string v1, "light"

    aput-object v1, v0, v11

    const-string v1, "bright"

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 617
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v8

    const-string v1, "poor"

    aput-object v1, v0, v9

    const-string v1, "moderate"

    aput-object v1, v0, v10

    const-string v1, "good"

    aput-object v1, v0, v11

    const-string v1, "great"

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/BatteryStats;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 663
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v8

    const-string v1, "gprs"

    aput-object v1, v0, v9

    const-string v1, "edge"

    aput-object v1, v0, v10

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v11

    const-string v1, "cdma"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "evdo_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "evdo_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1xrtt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hsdpa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hsupa"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hspa"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iden"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "evdo_b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "other"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 687
    const/16 v0, 0x13

    new-array v0, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x4000

    const-string v3, "plugged"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x2000

    const-string v3, "screen"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x1000

    const-string v3, "gps"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x800

    const-string v3, "phone_in_call"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v11

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x400

    const-string v3, "phone_scanning"

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x200

    const-string/jumbo v4, "wifi"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x100

    const-string/jumbo v4, "wifi_running"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x80

    const-string/jumbo v4, "wifi_full_lock"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x40

    const-string/jumbo v4, "wifi_scan_lock"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x20

    const-string/jumbo v4, "wifi_multicast"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x10

    const-string v4, "bluetooth"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x8

    const-string v4, "audio"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x4

    const-string/jumbo v4, "video"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x2

    const-string/jumbo v4, "wake_lock"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/high16 v3, 0x1

    const-string v4, "sensor"

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/16 v3, 0xf

    const-string v4, "brightness"

    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v8, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/16 v3, 0xf0

    const-string v4, "signal_strength"

    sget-object v5, Landroid/os/BatteryStats;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const/16 v3, 0xf00

    const/16 v4, 0x8

    const-string v5, "phone_state"

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "in"

    aput-object v7, v6, v8

    const-string v7, "out"

    aput-object v7, v6, v9

    const-string v7, "emergency"

    aput-object v7, v6, v10

    const-string v7, "off"

    aput-object v7, v6, v11

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const v3, 0xf000

    const/16 v4, 0xc

    const-string v5, "data_conn"

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 146
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 532
    return-void
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "pw"
    .parameter "uid"
    .parameter "category"
    .parameter "type"
    .parameter "args"

    .prologue
    const/16 v5, 0x2c

    .line 979
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 980
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 981
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 982
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 985
    .local v0, arg:Ljava/lang/Object;
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 986
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    .end local v0           #arg:Ljava/lang/Object;
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 989
    return-void
.end method

.method private final formatBytesLocked(J)Ljava/lang/String;
    .locals 8
    .parameter "bytes"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 893
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 895
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    :goto_0
    return-object v0

    .line 897
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 898
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 899
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 900
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 901
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 902
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x41d0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 905
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 6
    .parameter "num"
    .parameter "den"

    .prologue
    const/4 v5, 0x0

    .line 883
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 884
    const-string v1, "---%"

    .line 889
    :goto_0
    return-object v1

    .line 886
    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float v0, v1, v2

    .line 887
    .local v0, perc:F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 888
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 889
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final formatTime(Ljava/lang/StringBuilder;J)V
    .locals 6
    .parameter "sb"
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x64

    .line 869
    div-long v0, p1, v2

    .line 870
    .local v0, sec:J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 871
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 872
    const-string v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    return-void
.end method

.method private static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4
    .parameter "sb"
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 876
    div-long v0, p1, v2

    .line 877
    .local v0, sec:J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 878
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 879
    const-string v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 6
    .parameter "out"
    .parameter "seconds"

    .prologue
    .line 841
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 842
    .local v0, days:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 843
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 844
    const-string v2, "d "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_0
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x18

    mul-long/2addr v2, v0

    .line 848
    .local v2, used:J
    sub-long v0, p1, v2

    const-wide/16 v4, 0xe10

    div-long/2addr v0, v4

    .line 849
    .local v0, hours:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 850
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 851
    const-string v4, "h "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_2
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 855
    sub-long v0, p1, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 856
    .local v0, mins:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    .line 857
    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 858
    const-string v4, "m "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_4
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 862
    .end local v2           #used:J
    .local v0, used:J
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 863
    :cond_5
    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 864
    .end local p1
    const-string p1, "s "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    :cond_6
    return-void
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "sb"
    .parameter "timer"
    .parameter "batteryRealtime"
    .parameter "name"
    .parameter "which"
    .parameter "linePrefix"

    .prologue
    .line 922
    if-eqz p1, :cond_1

    .line 924
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    .line 925
    .local v1, totalTimeMicros:J
    const-wide/16 v5, 0x1f4

    add-long/2addr v5, v1

    const-wide/16 v7, 0x3e8

    div-long v3, v5, v7

    .line 927
    .local v3, totalTimeMillis:J
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 928
    .local v0, count:I
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 929
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-static {p0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 931
    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    :cond_0
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 933
    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    const-string v5, " times)"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string v5, ", "

    .line 939
    .end local v0           #count:I
    .end local v1           #totalTimeMicros:J
    .end local v3           #totalTimeMillis:J
    :goto_0
    return-object v5

    :cond_1
    move-object v5, p6

    goto :goto_0
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "sb"
    .parameter "timer"
    .parameter "now"
    .parameter "name"
    .parameter "which"
    .parameter "linePrefix"

    .prologue
    const-string v7, ","

    .line 955
    const-wide/16 v1, 0x0

    .line 956
    .local v1, totalTimeMicros:J
    const/4 v0, 0x0

    .line 957
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    .line 959
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 961
    :cond_0
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-wide/16 v3, 0x1f4

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 963
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 964
    if-eqz p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    const-string v3, ","

    return-object v7

    .line 964
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Ljava/io/PrintWriter;II)V
    .locals 98
    .parameter "pw"
    .parameter "which"
    .parameter "reqUid"

    .prologue
    .line 997
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v47, v9, v11

    .line 998
    .local v47, rawUptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v45, v9, v11

    .line 999
    .local v45, rawRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v14

    .line 1000
    .local v14, batteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v7

    .line 1001
    .local v7, batteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v91

    .line 1002
    .local v91, whichBatteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v45

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v89

    .line 1003
    .local v89, whichBatteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v45

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v69

    .line 1004
    .local v69, totalRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v73

    .line 1005
    .local v73, totalUptime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v55

    .line 1006
    .local v55, screenOnTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v41

    .line 1007
    .local v41, phoneOnTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v93

    .line 1008
    .local v93, wifiOnTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v95

    .line 1009
    .local v95, wifiRunningTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v16

    .line 1011
    .local v16, bluetoothOnTime:J
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1013
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v81

    .line 1014
    .local v81, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v81 .. v81}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1016
    .local v12, NU:I
    sget-object v6, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v18, v6, p2

    .line 1019
    .local v18, category:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v9, "bt"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-nez p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_0
    aput-object v13, v10, v11

    const/4 v11, 0x1

    const-wide/16 v19, 0x3e8

    div-long v19, v89, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x2

    const-wide/16 v19, 0x3e8

    div-long v19, v91, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x3

    const-wide/16 v19, 0x3e8

    div-long v19, v69, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x4

    const-wide/16 v19, 0x3e8

    div-long v19, v73, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1025
    const-wide/16 v51, 0x0

    .line 1026
    .local v51, rxTotal:J
    const-wide/16 v77, 0x0

    .line 1027
    .local v77, txTotal:J
    const-wide/16 v25, 0x0

    .line 1028
    .local v25, fullWakeLockTimeTotal:J
    const-wide/16 v38, 0x0

    .line 1030
    .local v38, partialWakeLockTimeTotal:J
    const/16 v34, 0x0

    .local v34, iu:I
    :goto_1
    move/from16 v0, v34

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 1031
    move-object/from16 v0, v81

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/BatteryStats$Uid;

    .line 1032
    .local v79, u:Landroid/os/BatteryStats$Uid;
    move-object/from16 v0, v79

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v9

    add-long v51, v51, v9

    .line 1033
    move-object/from16 v0, v79

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v9

    add-long v77, v77, v9

    .line 1035
    invoke-virtual/range {v79 .. v79}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v87

    .line 1036
    .local v87, wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v87 .. v87}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1038
    invoke-interface/range {v87 .. v87}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 1039
    .local v24, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1041
    .local v97, wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v27

    .line 1042
    .local v27, fullWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v27, :cond_1

    .line 1043
    move-object/from16 v0, v27

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    add-long v25, v25, v9

    .line 1046
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, v97

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v40

    .line 1047
    .local v40, partialWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v40, :cond_0

    .line 1048
    move-object/from16 v0, v40

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    add-long v38, v38, v9

    goto :goto_2

    .line 1019
    .end local v24           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v25           #fullWakeLockTimeTotal:J
    .end local v27           #fullWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v34           #iu:I
    .end local v38           #partialWakeLockTimeTotal:J
    .end local v40           #partialWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v51           #rxTotal:J
    .end local v77           #txTotal:J
    .end local v79           #u:Landroid/os/BatteryStats$Uid;
    .end local v87           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v97           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string v13, "N/A"

    goto/16 :goto_0

    .line 1030
    .restart local v25       #fullWakeLockTimeTotal:J
    .restart local v34       #iu:I
    .restart local v38       #partialWakeLockTimeTotal:J
    .restart local v51       #rxTotal:J
    .restart local v77       #txTotal:J
    .restart local v79       #u:Landroid/os/BatteryStats$Uid;
    .restart local v87       #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 1056
    .end local v79           #u:Landroid/os/BatteryStats$Uid;
    .end local v87           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v6, 0x0

    const-string v9, "m"

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v19, 0x3e8

    div-long v19, v55, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x1

    const-wide/16 v19, 0x3e8

    div-long v19, v41, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x2

    const-wide/16 v19, 0x3e8

    div-long v19, v93, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x3

    const-wide/16 v19, 0x3e8

    div-long v19, v95, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x4

    const-wide/16 v19, 0x3e8

    div-long v16, v16, v19

    .end local v16           #bluetoothOnTime:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x5

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x6

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x7

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/16 v11, 0x8

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/16 v11, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getInputEventCount(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    const/4 v6, 0x5

    new-array v13, v6, [Ljava/lang/Object;

    .line 1064
    .local v13, args:[Ljava/lang/Object;
    const/16 v31, 0x0

    .local v31, i:I
    :goto_3
    const/4 v6, 0x5

    move/from16 v0, v31

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 1065
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-wide v2, v7

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    div-long v9, v9, v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v31

    .line 1064
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 1067
    :cond_5
    const/4 v6, 0x0

    const-string v9, "br"

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    const/4 v6, 0x5

    new-array v13, v6, [Ljava/lang/Object;

    .line 1071
    const/16 v31, 0x0

    :goto_4
    const/4 v6, 0x5

    move/from16 v0, v31

    move v1, v6

    if-ge v0, v1, :cond_6

    .line 1072
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-wide v2, v7

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    div-long v9, v9, v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v31

    .line 1071
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 1074
    :cond_6
    const/4 v6, 0x0

    const-string v9, "sgt"

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1075
    const/4 v6, 0x0

    const-string v9, "sst"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v16

    const-wide/16 v19, 0x3e8

    div-long v16, v16, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v10, v11

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    const/16 v31, 0x0

    :goto_5
    const/4 v6, 0x5

    move/from16 v0, v31

    move v1, v6

    if-ge v0, v1, :cond_7

    .line 1078
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v31

    .line 1077
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 1080
    :cond_7
    const/4 v6, 0x0

    const-string v9, "sgc"

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    const/16 v6, 0xe

    new-array v13, v6, [Ljava/lang/Object;

    .line 1084
    const/16 v31, 0x0

    :goto_6
    const/16 v6, 0xe

    move/from16 v0, v31

    move v1, v6

    if-ge v0, v1, :cond_8

    .line 1085
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-wide v2, v7

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    div-long v9, v9, v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v31

    .line 1084
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 1087
    :cond_8
    const/4 v6, 0x0

    const-string v9, "dct"

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    const/16 v31, 0x0

    :goto_7
    const/16 v6, 0xe

    move/from16 v0, v31

    move v1, v6

    if-ge v0, v1, :cond_9

    .line 1089
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v31

    .line 1088
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 1091
    :cond_9
    const/4 v6, 0x0

    const-string v9, "dcc"

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1093
    const/4 v6, 0x3

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_a

    .line 1094
    const/4 v6, 0x0

    const-string v9, "lv"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v10, v11

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    :cond_a
    if-gez p3, :cond_b

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v35

    .line 1100
    .local v35, kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 1101
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 1102
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1103
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    const/4 v9, 0x0

    const-string v11, ""

    move/from16 v10, p2

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 1105
    const/4 v6, 0x0

    const-string v9, "kwl"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v11

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1111
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v35           #kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_b
    const/16 v34, 0x0

    .end local p0
    :goto_9
    move/from16 v0, v34

    move v1, v12

    if-ge v0, v1, :cond_1f

    .line 1112
    move-object/from16 v0, v81

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v80

    .line 1113
    .local v80, uid:I
    if-ltz p3, :cond_d

    move/from16 v0, v80

    move/from16 v1, p3

    if-eq v0, v1, :cond_d

    .line 1111
    :cond_c
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 1116
    :cond_d
    move-object/from16 v0, v81

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/BatteryStats$Uid;

    .line 1118
    .restart local v79       #u:Landroid/os/BatteryStats$Uid;
    move-object/from16 v0, v79

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v49

    .line 1119
    .local v49, rx:J
    move-object/from16 v0, v79

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v75

    .line 1120
    .local v75, tx:J
    move-object/from16 v0, v79

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v28

    .line 1121
    .local v28, fullWifiLockOnTime:J
    move-object/from16 v0, v79

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getScanWifiLockTime(JI)J

    move-result-wide v53

    .line 1122
    .local v53, scanWifiLockOnTime:J
    move-object/from16 v0, v79

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v82

    .line 1124
    .local v82, uidWifiRunningTime:J
    const-wide/16 v9, 0x0

    cmp-long v6, v49, v9

    if-gtz v6, :cond_e

    const-wide/16 v9, 0x0

    cmp-long v6, v75, v9

    if-lez v6, :cond_f

    :cond_e
    const-string v6, "nt"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v75 .. v76}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move/from16 v1, v80

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    :cond_f
    const-wide/16 v9, 0x0

    cmp-long v6, v28, v9

    if-nez v6, :cond_10

    const-wide/16 v9, 0x0

    cmp-long v6, v53, v9

    if-nez v6, :cond_10

    const-wide/16 v9, 0x0

    cmp-long v6, v82, v9

    if-eqz v6, :cond_11

    .line 1128
    :cond_10
    const-string/jumbo v6, "wfl"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move/from16 v1, v80

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    :cond_11
    invoke-virtual/range {v79 .. v79}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1133
    const/4 v6, 0x7

    new-array v13, v6, [Ljava/lang/Object;

    .line 1134
    const/16 v30, 0x0

    .line 1135
    .local v30, hasData:Z
    const/16 v31, 0x0

    :goto_a
    const/4 v6, 0x7

    move/from16 v0, v31

    move v1, v6

    if-ge v0, v1, :cond_13

    .line 1136
    move-object/from16 v0, v79

    move/from16 v1, v31

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v86

    .line 1137
    .local v86, val:I
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v31

    .line 1138
    if-eqz v86, :cond_12

    const/16 v30, 0x1

    .line 1135
    :cond_12
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 1140
    .end local v86           #val:I
    :cond_13
    if-eqz v30, :cond_14

    .line 1141
    const/4 v6, 0x0

    const-string/jumbo v9, "ua"

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    .end local v30           #hasData:Z
    :cond_14
    invoke-virtual/range {v79 .. v79}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v87

    .line 1146
    .restart local v87       #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v87 .. v87}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_16

    .line 1148
    invoke-interface/range {v87 .. v87}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :cond_15
    :goto_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 1149
    .restart local v24       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1150
    .restart local v97       #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v11, ""

    .line 1151
    .local v11, linePrefix:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1152
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string v9, "f"

    move/from16 v10, p2

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1154
    const/4 v6, 0x0

    move-object/from16 v0, v97

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string v9, "p"

    move/from16 v10, p2

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1156
    const/4 v6, 0x2

    move-object/from16 v0, v97

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string/jumbo v9, "w"

    move/from16 v10, p2

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_15

    .line 1161
    const-string/jumbo v6, "wl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #linePrefix:Ljava/lang/String;
    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move/from16 v1, v80

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 1166
    .end local v24           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v97           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_16
    invoke-virtual/range {v79 .. v79}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v59

    .line 1167
    .local v59, sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v59 .. v59}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_18

    .line 1169
    invoke-interface/range {v59 .. v59}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :cond_17
    :goto_c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1170
    .local v20, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/os/BatteryStats$Uid$Sensor;

    .line 1171
    .local v57, se:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v58

    .line 1172
    .local v58, sensorNumber:I
    invoke-virtual/range {v57 .. v57}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v68

    .line 1173
    .local v68, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v68, :cond_17

    .line 1175
    move-object/from16 v0, v68

    move-wide v1, v7

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    const-wide/16 v16, 0x1f4

    add-long v9, v9, v16

    const-wide/16 v16, 0x3e8

    div-long v71, v9, v16

    .line 1176
    .local v71, totalTime:J
    move-object/from16 v0, v68

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v19

    .line 1177
    .local v19, count:I
    const-wide/16 v9, 0x0

    cmp-long v6, v71, v9

    if-eqz v6, :cond_17

    .line 1178
    const-string v6, "sr"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v71 .. v72}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move/from16 v1, v80

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 1184
    .end local v19           #count:I
    .end local v20           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v57           #se:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v58           #sensorNumber:I
    .end local v68           #timer:Landroid/os/BatteryStats$Timer;
    .end local v71           #totalTime:J
    :cond_18
    invoke-virtual/range {v79 .. v79}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v43

    .line 1185
    .local v43, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1b

    .line 1187
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :cond_19
    :goto_d
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1188
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/BatteryStats$Uid$Proc;

    .line 1190
    .local v44, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v44

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v84

    .line 1191
    .local v84, userTime:J
    move-object/from16 v0, v44

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v66

    .line 1192
    .local v66, systemTime:J
    move-object/from16 v0, v44

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v65

    .line 1194
    .local v65, starts:I
    const-wide/16 v9, 0x0

    cmp-long v6, v84, v9

    if-nez v6, :cond_1a

    const-wide/16 v9, 0x0

    cmp-long v6, v66, v9

    if-nez v6, :cond_1a

    if-eqz v65, :cond_19

    .line 1195
    :cond_1a
    const-string v6, "pr"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-wide/16 v16, 0xa

    mul-long v16, v16, v84

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-wide/16 v16, 0xa

    mul-long v16, v16, v66

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move/from16 v1, v80

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 1204
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v44           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v65           #starts:I
    .end local v66           #systemTime:J
    .end local v84           #userTime:J
    :cond_1b
    invoke-virtual/range {v79 .. v79}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v37

    .line 1205
    .local v37, packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 1207
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1209
    .local v22, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/BatteryStats$Uid$Pkg;

    .line 1210
    .local v44, ps:Landroid/os/BatteryStats$Uid$Pkg;
    move-object/from16 v0, v44

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v88

    .line 1211
    .local v88, wakeups:I
    invoke-virtual/range {v44 .. v44}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Ljava/util/Map;

    move-result-object v61

    .line 1213
    .local v61, serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/util/Map$Entry;

    .line 1214
    .local v60, sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 1215
    .local v62, ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v62

    move-wide v1, v14

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v63

    .line 1216
    .local v63, startTime:J
    move-object/from16 v0, v62

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v65

    .line 1217
    .restart local v65       #starts:I
    move-object/from16 v0, v62

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v36

    .line 1218
    .local v36, launches:I
    const-wide/16 v9, 0x0

    cmp-long v6, v63, v9

    if-nez v6, :cond_1e

    if-nez v65, :cond_1e

    if-eqz v36, :cond_1d

    .line 1219
    :cond_1e
    const-string v6, "apk"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-interface/range {v60 .. v60}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-wide/16 v16, 0x3e8

    div-long v16, v63, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move/from16 v1, v80

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 1231
    .end local v22           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v28           #fullWifiLockOnTime:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v36           #launches:I
    .end local v37           #packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v43           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v44           #ps:Landroid/os/BatteryStats$Uid$Pkg;
    .end local v49           #rx:J
    .end local v53           #scanWifiLockOnTime:J
    .end local v59           #sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v60           #sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v61           #serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v62           #ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v63           #startTime:J
    .end local v65           #starts:I
    .end local v75           #tx:J
    .end local v79           #u:Landroid/os/BatteryStats$Uid;
    .end local v80           #uid:I
    .end local v82           #uidWifiRunningTime:J
    .end local v87           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v88           #wakeups:I
    :cond_1f
    return-void
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/util/List;)V
    .locals 23
    .parameter "pw"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1885
    .local p3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v11, 0x0

    .line 1887
    .local v11, isUnpluggedOnly:Z
    move-object/from16 v8, p2

    .local v8, arr$:[Ljava/lang/String;
    array-length v13, v8

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v13, :cond_1

    aget-object v7, v8, v10

    .line 1888
    .local v7, arg:Ljava/lang/String;
    const-string v19, "-u"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1890
    const/4 v11, 0x1

    .line 1887
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1894
    .end local v7           #arg:Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_5

    .line 1895
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 1896
    .local v18, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 1897
    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 1898
    .local v6, ai:Landroid/content/pm/ApplicationInfo;
    move-object v0, v6

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1899
    .local v15, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_2

    .line 1900
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    .restart local v15       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1903
    :cond_2
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1905
    .end local v6           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v15           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v17

    .line 1906
    .local v17, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1907
    .local v5, NU:I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 1908
    .local v14, lineArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .end local p2
    :goto_2
    if-ge v9, v5, :cond_5

    .line 1909
    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 1910
    .local v16, uid:I
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1911
    .restart local v15       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_4

    .line 1912
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1913
    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    .line 1914
    const/16 v19, 0x1

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, v14, v19

    .line 1915
    const/16 v20, 0x0

    const-string v21, "i"

    const-string/jumbo v22, "uid"

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1912
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1908
    .end local v12           #j:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1921
    .end local v5           #NU:I
    .end local v9           #i:I
    .end local v14           #lineArgs:[Ljava/lang/String;
    .end local v15           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #uid:I
    .end local v17           #uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v18           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_5
    if-eqz v11, :cond_6

    .line 1922
    const/16 v19, 0x3

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 1928
    :goto_4
    return-void

    .line 1925
    :cond_6
    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 1926
    const/16 v19, 0x3

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    goto :goto_4
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 33
    .parameter "pw"

    .prologue
    .line 1727
    new-instance v21, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v21 .. v21}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1728
    .local v21, rec:Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 1729
    const-string v27, "Battery History:"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    add-long v9, v27, v29

    .line 1731
    .local v9, now:J
    const/4 v15, 0x0

    .line 1732
    .local v15, oldState:I
    const/16 v16, -0x1

    .line 1733
    .local v16, oldStatus:I
    const/4 v13, -0x1

    .line 1734
    .local v13, oldHealth:I
    const/4 v14, -0x1

    .line 1735
    .local v14, oldPlug:I
    const/16 v17, -0x1

    .line 1736
    .local v17, oldTemp:I
    const/16 v18, -0x1

    .line 1737
    .local v18, oldVolt:I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1738
    const-string v27, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v27, v0

    sub-long v27, v27, v9

    const/16 v29, 0x13

    move-wide/from16 v0, v27

    move-object/from16 v2, p1

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 1740
    const-string v27, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1741
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 1742
    const-string v27, " START"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    :goto_1
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v15, v0

    goto :goto_0

    .line 1743
    :cond_0
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 1744
    const-string v27, " *OVERFLOW*"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1746
    :cond_1
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v27, v0

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    const-string v27, "00"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1748
    :cond_2
    :goto_2
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1749
    const-string v27, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1750
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/16 v28, 0x10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    const-string v27, "0000000"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1757
    :cond_3
    :goto_3
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1758
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    .line 1759
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v16, v0

    .line 1760
    const-string v27, " status="

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    packed-switch v16, :pswitch_data_0

    .line 1778
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1782
    :cond_4
    :goto_4
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move/from16 v27, v0

    move v0, v13

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 1783
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move v13, v0

    .line 1784
    const-string v27, " health="

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    packed-switch v13, :pswitch_data_1

    .line 1805
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1809
    :cond_5
    :goto_5
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move/from16 v27, v0

    move v0, v14

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 1810
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move v14, v0

    .line 1811
    const-string v27, " plug="

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1812
    packed-switch v14, :pswitch_data_2

    .line 1823
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1827
    :cond_6
    :goto_6
    move-object/from16 v0, v21

    iget-char v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 1828
    move-object/from16 v0, v21

    iget-char v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    move/from16 v17, v0

    .line 1829
    const-string v27, " temp="

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1832
    :cond_7
    move-object/from16 v0, v21

    iget-char v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 1833
    move-object/from16 v0, v21

    iget-char v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move/from16 v18, v0

    .line 1834
    const-string v27, " volt="

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1837
    :cond_8
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    sget-object v28, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V

    .line 1839
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_1

    .line 1747
    :cond_9
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v27, v0

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    const-string v27, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1751
    :cond_a
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    const-string v27, "000000"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1752
    :cond_b
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/16 v28, 0x1000

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    const-string v27, "00000"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1753
    :cond_c
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/high16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    const-string v27, "0000"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1754
    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/high16 v28, 0x10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    const-string v27, "000"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1755
    :cond_e
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/high16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    const-string v27, "00"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1756
    :cond_f
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v27, v0

    const/high16 v28, 0x1000

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    const-string v27, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1763
    :pswitch_0
    const-string/jumbo v27, "unknown"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1766
    :pswitch_1
    const-string v27, "charging"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1769
    :pswitch_2
    const-string v27, "discharging"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1772
    :pswitch_3
    const-string v27, "not-charging"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1775
    :pswitch_4
    const-string v27, "full"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1787
    :pswitch_5
    const-string/jumbo v27, "unknown"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1790
    :pswitch_6
    const-string v27, "good"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1793
    :pswitch_7
    const-string v27, "overheat"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1796
    :pswitch_8
    const-string v27, "dead"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1799
    :pswitch_9
    const-string v27, "over-voltage"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1802
    :pswitch_a
    const-string v27, "failure"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1814
    :pswitch_b
    const-string v27, "none"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1817
    :pswitch_c
    const-string v27, "ac"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1820
    :pswitch_d
    const-string/jumbo v27, "usb"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1843
    :cond_10
    const-string v27, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    .end local v9           #now:J
    .end local v13           #oldHealth:I
    .end local v14           #oldPlug:I
    .end local v15           #oldState:I
    .end local v16           #oldStatus:I
    .end local v17           #oldTemp:I
    .end local v18           #oldVolt:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v26

    .line 1847
    .local v26, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1848
    .local v5, NU:I
    const/4 v6, 0x0

    .line 1849
    .local v6, didPid:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1850
    .local v11, nowRealtime:J
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v27, 0x40

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1851
    .local v22, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    if-ge v7, v5, :cond_15

    .line 1852
    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/BatteryStats$Uid;

    .line 1853
    .local v25, uid:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v20

    .line 1854
    .local v20, pids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v20, :cond_14

    .line 1855
    const/4 v8, 0x0

    .local v8, j:I
    :goto_8
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v27

    move v0, v8

    move/from16 v1, v27

    if-ge v0, v1, :cond_14

    .line 1856
    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Uid$Pid;

    .line 1857
    .local v19, pid:Landroid/os/BatteryStats$Uid$Pid;
    if-nez v6, :cond_12

    .line 1858
    const-string v27, "Per-PID Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    const/4 v6, 0x1

    .line 1861
    :cond_12
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_13

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v29, v0

    sub-long v29, v11, v29

    :goto_9
    add-long v23, v27, v29

    .line 1863
    .local v23, time:J
    const-string v27, "  PID "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1864
    const-string v27, " wake time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    move-wide/from16 v0, v23

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1866
    const-string v27, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1861
    .end local v23           #time:J
    :cond_13
    const-wide/16 v29, 0x0

    goto :goto_9

    .line 1851
    .end local v8           #j:I
    .end local v19           #pid:Landroid/os/BatteryStats$Uid$Pid;
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 1870
    .end local v20           #pids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v25           #uid:Landroid/os/BatteryStats$Uid;
    :cond_15
    if-eqz v6, :cond_16

    .line 1871
    const-string v27, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    :cond_16
    const-string v27, "Statistics since last charge:"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  System starts: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", currently on battery: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    const-string v27, ""

    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 1878
    const-string v27, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    const-string v27, "Statistics since last unplugged:"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    const-string v27, ""

    const/16 v28, 0x3

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 1881
    return-void

    .line 1761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1785
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1812
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 105
    .parameter "pw"
    .parameter "prefix"
    .parameter "which"
    .parameter "reqUid"

    .prologue
    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v51, v9, v11

    .line 1236
    .local v51, rawUptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v49, v9, v11

    .line 1237
    .local v49, rawRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v14

    .line 1238
    .local v14, batteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v7

    .line 1240
    .local v7, batteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v98

    .line 1241
    .local v98, whichBatteryUptime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v96

    .line 1242
    .local v96, whichBatteryRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v77

    .line 1243
    .local v77, totalRealtime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v81

    .line 1245
    .local v81, totalUptime:J
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1247
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v88

    .line 1248
    .local v88, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v88 .. v88}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1250
    .local v12, NU:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1251
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    const-string v6, "  Time on battery: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-wide/16 v9, 0x3e8

    div-long v9, v96, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v77

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string v6, ") realtime, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-wide/16 v9, 0x3e8

    div-long v9, v98, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1257
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v98

    move-wide/from16 v3, v77

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v6, ") uptime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1261
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v6, "  Total run time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-wide/16 v9, 0x3e8

    div-long v9, v77, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1264
    const-string v6, "realtime, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-wide/16 v9, 0x3e8

    div-long v9, v81, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1266
    const-string/jumbo v6, "uptime, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v57

    .line 1270
    .local v57, screenOnTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v45

    .line 1271
    .local v45, phoneOnTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v102

    .line 1272
    .local v102, wifiRunningTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v100

    .line 1273
    .local v100, wifiOnTime:J
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v16

    .line 1274
    .local v16, bluetoothOnTime:J
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1275
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const-string v6, "  Screen on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v57, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1277
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v57

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    const-string v6, "), Input events: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getInputEventCount(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    const-string v6, ", Active phone call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v45, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1280
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v45

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1284
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const-string v6, "  Screen brightnesses: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const/16 v19, 0x0

    .line 1287
    .local v19, didOne:Z
    const/16 v34, 0x0

    .local v34, i:I
    :goto_0
    const/4 v6, 0x5

    move/from16 v0, v34

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 1288
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-wide v2, v7

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v74

    .line 1289
    .local v74, time:J
    const-wide/16 v9, 0x0

    cmp-long v6, v74, v9

    if-nez v6, :cond_0

    .line 1287
    :goto_1
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 1292
    :cond_0
    if-eqz v19, :cond_1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :cond_1
    const/16 v19, 0x1

    .line 1294
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v34

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-wide/16 v9, 0x3e8

    div-long v9, v74, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1297
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    move-object/from16 v0, p0

    move-wide/from16 v1, v74

    move-wide/from16 v3, v57

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1301
    .end local v74           #time:J
    :cond_2
    if-nez v19, :cond_3

    const-string v6, "No activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    const-wide/16 v53, 0x0

    .line 1306
    .local v53, rxTotal:J
    const-wide/16 v83, 0x0

    .line 1307
    .local v83, txTotal:J
    const-wide/16 v27, 0x0

    .line 1308
    .local v27, fullWakeLockTimeTotalMicros:J
    const-wide/16 v42, 0x0

    .line 1310
    .local v42, partialWakeLockTimeTotalMicros:J
    if-gez p4, :cond_5

    .line 1311
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v38

    .line 1312
    .local v38, kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1313
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1315
    .local v22, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-string v11, ": "

    .line 1316
    .local v11, linePrefix:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1317
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    const-string v6, "  Kernel Wake lock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    const/4 v9, 0x0

    move/from16 v10, p3

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1322
    const-string v6, ": "

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1323
    const-string v6, " realtime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1331
    .end local v11           #linePrefix:Ljava/lang/String;
    .end local v22           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v38           #kernelWakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_5
    const/16 v37, 0x0

    .local v37, iu:I
    :goto_3
    move/from16 v0, v37

    move v1, v12

    if-ge v0, v1, :cond_9

    .line 1332
    move-object/from16 v0, v88

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/os/BatteryStats$Uid;

    .line 1333
    .local v85, u:Landroid/os/BatteryStats$Uid;
    move-object/from16 v0, v85

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v9

    add-long v53, v53, v9

    .line 1334
    move-object/from16 v0, v85

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v9

    add-long v83, v83, v9

    .line 1336
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v94

    .line 1337
    .local v94, wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v94 .. v94}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 1339
    invoke-interface/range {v94 .. v94}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .restart local v35       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 1340
    .local v25, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1342
    .local v104, wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    move-object/from16 v0, v104

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v29

    .line 1343
    .local v29, fullWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v29, :cond_7

    .line 1344
    move-object/from16 v0, v29

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    add-long v27, v27, v9

    .line 1348
    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, v104

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v44

    .line 1349
    .local v44, partialWakeTimer:Landroid/os/BatteryStats$Timer;
    if-eqz v44, :cond_6

    .line 1350
    move-object/from16 v0, v44

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    add-long v42, v42, v9

    goto :goto_4

    .line 1331
    .end local v25           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v29           #fullWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v44           #partialWakeTimer:Landroid/os/BatteryStats$Timer;
    .end local v104           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_8
    add-int/lit8 v37, v37, 0x1

    goto :goto_3

    .line 1357
    .end local v85           #u:Landroid/os/BatteryStats$Uid;
    .end local v94           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1358
    const-string v6, "  Total received: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v53

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1359
    const-string v6, ", Total sent: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v83

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1361
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    const-string v6, "  Total full wakelock time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x1f4

    add-long v9, v9, v27

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1364
    const-string v6, ", Total partial waklock time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x1f4

    add-long v9, v9, v42

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1369
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    const-string v6, "  Signal levels: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    const/16 v19, 0x0

    .line 1372
    const/16 v34, 0x0

    :goto_5
    const/4 v6, 0x5

    move/from16 v0, v34

    move v1, v6

    if-ge v0, v1, :cond_c

    .line 1373
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-wide v2, v7

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v74

    .line 1374
    .restart local v74       #time:J
    const-wide/16 v9, 0x0

    cmp-long v6, v74, v9

    if-nez v6, :cond_a

    .line 1372
    :goto_6
    add-int/lit8 v34, v34, 0x1

    goto :goto_5

    .line 1377
    :cond_a
    if-eqz v19, :cond_b

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    :cond_b
    const/16 v19, 0x1

    .line 1379
    sget-object v6, Landroid/os/BatteryStats;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v34

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-wide/16 v9, 0x3e8

    div-long v9, v74, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1382
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    move-object/from16 v0, p0

    move-wide/from16 v1, v74

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1386
    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1388
    .end local v74           #time:J
    :cond_c
    if-nez v19, :cond_d

    const-string v6, "No activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1392
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    const-string v6, "  Signal scanning time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    move-object/from16 v0, p0

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1395
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1398
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    const-string v6, "  Radio types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const/16 v19, 0x0

    .line 1401
    const/16 v34, 0x0

    :goto_7
    const/16 v6, 0xe

    move/from16 v0, v34

    move v1, v6

    if-ge v0, v1, :cond_10

    .line 1402
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-wide v2, v7

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v74

    .line 1403
    .restart local v74       #time:J
    const-wide/16 v9, 0x0

    cmp-long v6, v74, v9

    if-nez v6, :cond_e

    .line 1401
    :goto_8
    add-int/lit8 v34, v34, 0x1

    goto :goto_7

    .line 1406
    :cond_e
    if-eqz v19, :cond_f

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    :cond_f
    const/16 v19, 0x1

    .line 1408
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v34

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    const-wide/16 v9, 0x3e8

    div-long v9, v74, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1411
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    move-object/from16 v0, p0

    move-wide/from16 v1, v74

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1415
    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1417
    .end local v74           #time:J
    :cond_10
    if-nez v19, :cond_11

    const-string v6, "No activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1421
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    const-string v6, "  Radio data uptime when unplugged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRadioDataUptime()J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1424
    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1428
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    const-string v6, "  Wifi on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v100, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1430
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v100

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    const-string v6, "), Wifi running: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v102, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1432
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v102

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    const-string v6, "), Bluetooth on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v16, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1434
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    const-string v6, " "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    const/4 v6, 0x3

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_14

    .line 1441
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1442
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Device is currently unplugged"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Discharge cycle start level: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1445
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Discharge cycle current level: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1454
    :goto_9
    const-string v6, " "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    :goto_a
    const/16 v37, 0x0

    .end local v16           #bluetoothOnTime:J
    :goto_b
    move/from16 v0, v37

    move v1, v12

    if-ge v0, v1, :cond_33

    .line 1466
    move-object/from16 v0, v88

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v86

    .line 1467
    .local v86, uid:I
    if-ltz p4, :cond_15

    move/from16 v0, v86

    move/from16 v1, p4

    if-eq v0, v1, :cond_15

    const/16 v6, 0x3e8

    move/from16 v0, v86

    move v1, v6

    if-eq v0, v1, :cond_15

    .line 1465
    :cond_12
    :goto_c
    add-int/lit8 v37, v37, 0x1

    goto :goto_b

    .line 1448
    .end local v86           #uid:I
    .restart local v16       #bluetoothOnTime:J
    :cond_13
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Device is currently plugged into power"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Last discharge cycle start level: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1451
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Last discharge cycle end level: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_9

    .line 1456
    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Device battery use since last full charge"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged (lower bound): "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1459
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Amount discharged (upper bound): "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1461
    const-string v6, " "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1471
    .end local v16           #bluetoothOnTime:J
    .restart local v86       #uid:I
    :cond_15
    move-object/from16 v0, v88

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/os/BatteryStats$Uid;

    .line 1473
    .restart local v85       #u:Landroid/os/BatteryStats$Uid;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "  #"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const/16 v87, 0x0

    .line 1476
    .local v87, uidActivity:Z
    move-object/from16 v0, v85

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v70

    .line 1477
    .local v70, tcpReceived:J
    move-object/from16 v0, v85

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v72

    .line 1478
    .local v72, tcpSent:J
    move-object/from16 v0, v85

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v30

    .line 1479
    .local v30, fullWifiLockOnTime:J
    move-object/from16 v0, v85

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getScanWifiLockTime(JI)J

    move-result-wide v55

    .line 1480
    .local v55, scanWifiLockOnTime:J
    move-object/from16 v0, v85

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v89

    .line 1482
    .local v89, uidWifiRunningTime:J
    const-wide/16 v9, 0x0

    cmp-long v6, v70, v9

    if-nez v6, :cond_16

    const-wide/16 v9, 0x0

    cmp-long v6, v72, v9

    if-eqz v6, :cond_17

    .line 1483
    :cond_16
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Network: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p0

    move-wide/from16 v1, v70

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " received, "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    move-wide/from16 v1, v72

    invoke-direct {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " sent"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    :cond_17
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1489
    const/16 v33, 0x0

    .line 1490
    .local v33, hasData:Z
    const/16 v34, 0x0

    :goto_d
    const/4 v6, 0x5

    move/from16 v0, v34

    move v1, v6

    if-ge v0, v1, :cond_1a

    .line 1491
    move-object/from16 v0, v85

    move/from16 v1, v34

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v93

    .line 1492
    .local v93, val:I
    if-eqz v93, :cond_18

    .line 1493
    if-nez v33, :cond_19

    .line 1494
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1495
    const-string v6, "    User activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    const/16 v33, 0x1

    .line 1500
    :goto_e
    move-object v0, v5

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1501
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v34

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    :cond_18
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    .line 1498
    :cond_19
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1505
    .end local v93           #val:I
    :cond_1a
    if-eqz v33, :cond_1b

    .line 1506
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    .end local v33           #hasData:Z
    :cond_1b
    const-wide/16 v9, 0x0

    cmp-long v6, v30, v9

    if-nez v6, :cond_1c

    const-wide/16 v9, 0x0

    cmp-long v6, v55, v9

    if-nez v6, :cond_1c

    const-wide/16 v9, 0x0

    cmp-long v6, v89, v9

    if-eqz v6, :cond_1d

    .line 1512
    :cond_1c
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1513
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Wifi Running: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    const-wide/16 v9, 0x3e8

    div-long v9, v89, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1515
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v89

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Full Wifi Lock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const-wide/16 v9, 0x3e8

    div-long v9, v30, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1519
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Scan Wifi Lock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    const-wide/16 v9, 0x3e8

    div-long v9, v55, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1523
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v55

    move-wide/from16 v3, v96

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    :cond_1d
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v94

    .line 1529
    .restart local v94       #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v94 .. v94}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1f

    .line 1531
    invoke-interface/range {v94 .. v94}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .restart local v35       #i$:Ljava/util/Iterator;
    :cond_1e
    :goto_f
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 1532
    .restart local v25       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1533
    .restart local v104       #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v11, ": "

    .line 1534
    .restart local v11       #linePrefix:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1535
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    const-string v6, "    Wake lock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    const/4 v6, 0x1

    move-object/from16 v0, v104

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string v9, "full"

    move/from16 v10, p3

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1540
    const/4 v6, 0x0

    move-object/from16 v0, v104

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string v9, "partial"

    move/from16 v10, p3

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1542
    const/4 v6, 0x2

    move-object/from16 v0, v104

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const-string/jumbo v9, "window"

    move/from16 v10, p3

    invoke-static/range {v5 .. v11}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1544
    const-string v6, ": "

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 1545
    const-string v6, " realtime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    const/16 v87, 0x1

    goto :goto_f

    .line 1553
    .end local v11           #linePrefix:Ljava/lang/String;
    .end local v25           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v104           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_1f
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v61

    .line 1554
    .local v61, sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_23

    .line 1556
    invoke-interface/range {v61 .. v61}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .restart local v35       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 1557
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/os/BatteryStats$Uid$Sensor;

    .line 1558
    .local v59, se:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v60

    .line 1559
    .local v60, sensorNumber:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1560
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    const-string v6, "    Sensor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v32

    .line 1563
    .local v32, handle:I
    const/16 v6, -0x2710

    move/from16 v0, v32

    move v1, v6

    if-ne v0, v1, :cond_20

    .line 1564
    const-string v6, "GPS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :goto_11
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v76

    .line 1571
    .local v76, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v76, :cond_22

    .line 1573
    move-object/from16 v0, v76

    move-wide v1, v7

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    const-wide/16 v16, 0x1f4

    add-long v9, v9, v16

    const-wide/16 v16, 0x3e8

    div-long v79, v9, v16

    .line 1575
    .local v79, totalTime:J
    move-object/from16 v0, v76

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v18

    .line 1577
    .local v18, count:I
    const-wide/16 v9, 0x0

    cmp-long v6, v79, v9

    if-eqz v6, :cond_21

    .line 1578
    move-object v0, v5

    move-wide/from16 v1, v79

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1579
    const-string v6, "realtime ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1581
    const-string v6, " times)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    .end local v18           #count:I
    .end local v79           #totalTime:J
    :goto_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    const/16 v87, 0x1

    .line 1591
    goto/16 :goto_10

    .line 1566
    .end local v76           #timer:Landroid/os/BatteryStats$Timer;
    :cond_20
    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1583
    .restart local v18       #count:I
    .restart local v76       #timer:Landroid/os/BatteryStats$Timer;
    .restart local v79       #totalTime:J
    :cond_21
    const-string v6, "(not used)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1586
    .end local v18           #count:I
    .end local v79           #totalTime:J
    :cond_22
    const-string v6, "(not used)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1594
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v32           #handle:I
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v59           #se:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v60           #sensorNumber:I
    .end local v76           #timer:Landroid/os/BatteryStats$Timer;
    :cond_23
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v47

    .line 1595
    .local v47, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2c

    .line 1597
    invoke-interface/range {v47 .. v47}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .restart local v35       #i$:Ljava/util/Iterator;
    :cond_24
    :goto_13
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 1598
    .local v24, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Proc;

    .line 1604
    .local v48, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v91

    .line 1605
    .local v91, userTime:J
    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v68

    .line 1606
    .local v68, systemTime:J
    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v67

    .line 1607
    .local v67, starts:I
    if-nez p3, :cond_28

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v6

    move/from16 v40, v6

    .line 1610
    .local v40, numExcessive:I
    :goto_14
    const-wide/16 v9, 0x0

    cmp-long v6, v91, v9

    if-nez v6, :cond_25

    const-wide/16 v9, 0x0

    cmp-long v6, v68, v9

    if-nez v6, :cond_25

    if-nez v67, :cond_25

    if-eqz v40, :cond_24

    .line 1612
    :cond_25
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1613
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      CPU: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    move-object v0, v5

    move-wide/from16 v1, v91

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    move-object v0, v5

    move-wide/from16 v1, v68

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTime(Ljava/lang/StringBuilder;J)V

    const-string v6, "krn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    if-eqz v67, :cond_26

    .line 1619
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " proc starts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    :cond_26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const/16 v20, 0x0

    .local v20, e:I
    :goto_15
    move/from16 v0, v20

    move/from16 v1, v40

    if-ge v0, v1, :cond_2b

    .line 1624
    move-object/from16 v0, v48

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v26

    .line 1625
    .local v26, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v26, :cond_27

    .line 1626
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      * Killed for "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1627
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move v6, v0

    const/4 v9, 0x1

    if-ne v6, v9, :cond_29

    .line 1628
    const-string/jumbo v6, "wake lock"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    :goto_16
    const-string v6, " use: "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-wide v9, v0

    move-wide v0, v9

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1636
    const-string v6, " over "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-wide v9, v0

    move-wide v0, v9

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1638
    const-string v6, " ("

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1639
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-wide v9, v0

    const-wide/16 v16, 0x64

    mul-long v9, v9, v16

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-wide/from16 v16, v0

    div-long v9, v9, v16

    move-object/from16 v0, p1

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1640
    const-string v6, "%)"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    :cond_27
    add-int/lit8 v20, v20, 0x1

    goto :goto_15

    .line 1607
    .end local v20           #e:I
    .end local v26           #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v40           #numExcessive:I
    :cond_28
    const/4 v6, 0x0

    move/from16 v40, v6

    goto/16 :goto_14

    .line 1629
    .restart local v20       #e:I
    .restart local v26       #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .restart local v40       #numExcessive:I
    :cond_29
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move v6, v0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2a

    .line 1630
    const-string v6, "cpu"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    .line 1632
    :cond_2a
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16

    .line 1643
    .end local v26           #ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_2b
    const/16 v87, 0x1

    goto/16 :goto_13

    .line 1648
    .end local v20           #e:I
    .end local v24           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v40           #numExcessive:I
    .end local v48           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v67           #starts:I
    .end local v68           #systemTime:J
    .end local v91           #userTime:J
    :cond_2c
    invoke-virtual/range {v85 .. v85}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v41

    .line 1649
    .local v41, packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_32

    .line 1651
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_17
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1652
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Apk "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ":"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    const/4 v13, 0x0

    .line 1654
    .local v13, apkActivity:Z
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Pkg;

    .line 1655
    .local v48, ps:Landroid/os/BatteryStats$Uid$Pkg;
    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v95

    .line 1656
    .local v95, wakeups:I
    if-eqz v95, :cond_2d

    .line 1657
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      "

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p1

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " wakeup alarms"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    const/4 v13, 0x1

    .line 1661
    :cond_2d
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Ljava/util/Map;

    move-result-object v63

    .line 1662
    .local v63, serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v63 .. v63}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_30

    .line 1664
    invoke-interface/range {v63 .. v63}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_18
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/Map$Entry;

    .line 1665
    .local v62, sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 1666
    .local v64, ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v64

    move-wide v1, v14

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v65

    .line 1667
    .local v65, startTime:J
    move-object/from16 v0, v64

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v67

    .line 1668
    .restart local v67       #starts:I
    move-object/from16 v0, v64

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v39

    .line 1669
    .local v39, launches:I
    const-wide/16 v9, 0x0

    cmp-long v6, v65, v9

    if-nez v6, :cond_2f

    if-nez v67, :cond_2f

    if-eqz v39, :cond_2e

    .line 1670
    :cond_2f
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1671
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-interface/range {v62 .. v62}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "        Created for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    const-wide/16 v9, 0x3e8

    div-long v9, v65, v9

    invoke-static {v5, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1675
    const-string v6, " uptime\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "        Starts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1678
    const-string v6, ", launches: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1679
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    const/4 v13, 0x1

    goto/16 :goto_18

    .line 1684
    .end local v36           #i$:Ljava/util/Iterator;
    .end local v39           #launches:I
    .end local v62           #sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v64           #ss:Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v65           #startTime:J
    .end local v67           #starts:I
    :cond_30
    if-nez v13, :cond_31

    .line 1685
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "      (nothing executed)"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    :cond_31
    const/16 v87, 0x1

    .line 1688
    goto/16 :goto_17

    .line 1690
    .end local v13           #apkActivity:Z
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v48           #ps:Landroid/os/BatteryStats$Uid$Pkg;
    .end local v63           #serviceStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v95           #wakeups:I
    :cond_32
    if-nez v87, :cond_12

    .line 1691
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    (nothing executed)"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1694
    .end local v30           #fullWifiLockOnTime:J
    .end local v41           #packageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v47           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v55           #scanWifiLockOnTime:J
    .end local v61           #sensors:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v70           #tcpReceived:J
    .end local v72           #tcpSent:J
    .end local v85           #u:Landroid/os/BatteryStats$Uid;
    .end local v86           #uid:I
    .end local v87           #uidActivity:Z
    .end local v89           #uidWifiRunningTime:J
    .end local v94           #wakelocks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_33
    return-void
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothOnTime(JI)J
.end method

.method public abstract getCpuSpeedSteps()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistory()Landroid/os/BatteryStats$HistoryItem;
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getInputEventCount(I)I
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getRadioDataUptime()J
.end method

.method public getRadioDataUptimeMs()J
    .locals 4

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V
    .locals 6
    .parameter "pw"
    .parameter "oldval"
    .parameter "newval"
    .parameter "descriptions"

    .prologue
    .line 1697
    xor-int v1, p2, p3

    .line 1698
    .local v1, diff:I
    if-nez v1, :cond_1

    .line 1718
    :cond_0
    return-void

    .line 1699
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p4

    if-ge v2, v4, :cond_0

    .line 1700
    aget-object v0, p4, v2

    .line 1701
    .local v0, bd:Landroid/os/BatteryStats$BitDescription;
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 1702
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v4, :cond_4

    .line 1703
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p3

    if-eqz v4, :cond_3

    const-string v4, " +"

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1703
    :cond_3
    const-string v4, " -"

    goto :goto_1

    .line 1706
    :cond_4
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1707
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1708
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    iget v4, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p3

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v3, v4, v5

    .line 1710
    .local v3, val:I
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v4, :cond_5

    if-ltz v3, :cond_5

    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 1711
    iget-object v4, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1713
    :cond_5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_2
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method
