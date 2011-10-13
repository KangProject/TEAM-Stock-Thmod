.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$5;,
        Lcom/android/server/WifiService$RegulatoryDomain;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiHandler;,
        Lcom/android/server/WifiService$DriverAction;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MILLIS:J = 0xdbba0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final IDLE_REQUEST:I = 0x0

.field private static final MESSAGE_DISABLE_WIFI:I = 0x1

.field private static final MESSAGE_ENABLE_NETWORKS:I = 0x9

.field private static final MESSAGE_ENABLE_RSSI_POLLING:I = 0xc

.field private static final MESSAGE_ENABLE_WIFI:I = 0x0

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_REPORT_WORKSOURCE:I = 0xb

.field private static final MESSAGE_SET_CHANNELS:I = 0x8

.field private static final MESSAGE_START_ACCESS_POINT:I = 0x6

.field private static final MESSAGE_START_SCAN:I = 0xa

.field private static final MESSAGE_START_WIFI:I = 0x3

.field private static final MESSAGE_STOP_ACCESS_POINT:I = 0x7

.field private static final MESSAGE_STOP_WIFI:I = 0x2

.field private static final MESSAGE_UPDATE_STATE:I = 0x5

.field private static final SCAN_RESULT_BUFFER_SIZE:I = 0x200

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wl0.1"

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "*wifi*"

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sValidRegulatoryChannelCounts:[I

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAirplaneModeOverwridden:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdle:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mLastApEnableUid:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReconfig:Z

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegulatoryDomain:Lcom/android/server/WifiService$RegulatoryDomain;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private final mScanResultCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOff:Z

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWifiApState:I

.field private final mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

.field private mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .registers 14
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "*wifi*"

    .line 229
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 124
    new-instance v4, Lcom/android/server/WifiService$LockList;

    invoke-direct {v4, p0, v8}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 142
    iput-object v8, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    .line 205
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 210
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 215
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    .line 1760
    new-instance v4, Lcom/android/server/WifiService$4;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 232
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 233
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 235
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    .line 238
    new-instance v4, Lcom/android/server/WifiService$1;

    const/16 v5, 0x50

    const/high16 v6, 0x3f40

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;IFZ)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    .line 249
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 251
    new-instance v4, Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/WifiService$WifiHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    .line 253
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    .line 254
    iput v7, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 256
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 257
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .local v1, idleIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v4, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 260
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 261
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v4, "*wifi*"

    invoke-virtual {v2, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 262
    const-string v4, "*wifi*"

    invoke-virtual {v2, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    new-instance v4, Lcom/android/server/WifiService$RegulatoryDomain;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$RegulatoryDomain;-><init>(Lcom/android/server/WifiService;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mRegulatoryDomain:Lcom/android/server/WifiService$RegulatoryDomain;

    .line 266
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$2;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$3;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/WifiService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/WifiService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendEnableNetworksMessage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/WifiService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$RegulatoryDomain;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mRegulatoryDomain:Lcom/android/server/WifiService$RegulatoryDomain;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;ZZI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object p1
.end method

.method static synthetic access$2300()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->doUpdateWifiState()V

    return-void
.end method

.method static synthetic access$2600()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;IZ)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->setNumAllowedChannelsBlocking(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$4100()[I
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .registers 6
    .parameter "wifiLock"

    .prologue
    .line 2369
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$3600(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 2371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2373
    .local v1, ident:J
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2374
    iget v3, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_3a

    .line 2388
    :goto_11
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    .line 2390
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_2e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_23

    .line 2391
    const/4 v3, 0x1

    .line 2395
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2393
    return v3

    .line 2376
    :pswitch_1c
    :try_start_1c
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_11

    .line 2392
    :catch_23
    move-exception v3

    move-object v0, v3

    .line 2393
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_18

    .line 2379
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_27
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2d} :catch_23

    goto :goto_11

    .line 2395
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2382
    :pswitch_33
    :try_start_33
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_2e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_23

    goto :goto_11

    .line 2374
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doUpdateWifiState()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1975
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v4

    .line 1976
    .local v4, wifiEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_47

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v7, :cond_47

    move v0, v10

    .line 1979
    .local v0, airplaneMode:Z
    :goto_12
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7

    .line 1980
    :try_start_15
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$1900(Lcom/android/server/WifiService$LockList;)Z

    move-result v1

    .line 1981
    .local v1, lockHeld:Z
    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_49

    .line 1983
    const/4 v2, 0x1

    .line 1984
    .local v2, strongestLockMode:I
    if-eqz v4, :cond_4c

    if-nez v0, :cond_4c

    move v5, v10

    .line 1985
    .local v5, wifiShouldBeEnabled:Z
    :goto_22
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v7, :cond_28

    if-eqz v1, :cond_4e

    :cond_28
    move v6, v10

    .line 1987
    .local v6, wifiShouldBeStarted:Z
    :goto_29
    if-eqz v1, :cond_31

    .line 1988
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$2000(Lcom/android/server/WifiService$LockList;)I

    move-result v2

    .line 1991
    :cond_31
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v7, :cond_38

    if-ne v2, v11, :cond_38

    .line 1992
    const/4 v2, 0x1

    .line 1995
    :cond_38
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v7

    .line 1996
    :try_start_3b
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v8

    if-ne v8, v11, :cond_50

    if-nez v0, :cond_50

    .line 1997
    monitor-exit v7
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_81

    .line 2033
    :goto_46
    return-void

    .end local v0           #airplaneMode:Z
    .end local v1           #lockHeld:Z
    .end local v2           #strongestLockMode:I
    .end local v5           #wifiShouldBeEnabled:Z
    .end local v6           #wifiShouldBeStarted:Z
    :cond_47
    move v0, v9

    .line 1976
    goto :goto_12

    .line 1981
    .restart local v0       #airplaneMode:Z
    :catchall_49
    move-exception v8

    :try_start_4a
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v8

    .restart local v1       #lockHeld:Z
    .restart local v2       #strongestLockMode:I
    :cond_4c
    move v5, v9

    .line 1984
    goto :goto_22

    .restart local v5       #wifiShouldBeEnabled:Z
    :cond_4e
    move v6, v9

    .line 1985
    goto :goto_29

    .line 2001
    .restart local v6       #wifiShouldBeStarted:Z
    :cond_50
    if-eqz v0, :cond_67

    :try_start_52
    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v8, v11, :cond_5b

    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_67

    .line 2003
    :cond_5b
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2004
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 2007
    :cond_67
    if-eqz v5, :cond_ad

    .line 2008
    if-eqz v6, :cond_84

    .line 2009
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2010
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 2011
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2012
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->sendStartMessage(I)V

    .line 2032
    :cond_7f
    :goto_7f
    monitor-exit v7

    goto :goto_46

    :catchall_81
    move-exception v8

    monitor-exit v7
    :try_end_83
    .catchall {:try_start_52 .. :try_end_83} :catchall_81

    throw v8

    .line 2013
    :cond_84
    :try_start_84
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v8

    if-nez v8, :cond_7f

    .line 2014
    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_mobile_data_transition_wakelock_timeout_ms"

    const/16 v10, 0x1f40

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2024
    .local v3, wakeLockTimeout:I
    sget-object v8, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2025
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    .line 2026
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x4

    int-to-long v10, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7f

    .line 2029
    .end local v3           #wakeLockTimeout:I
    :cond_ad
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2030
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V
    :try_end_b9
    .catchall {:try_start_84 .. :try_end_b9} :catchall_81

    goto :goto_7f
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private getPersistedWifiEnabled()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "wifi_on"

    .line 371
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 373
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_a
    const-string v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_f} :catch_16

    move-result v2

    if-ne v2, v4, :cond_14

    move v2, v4

    .line 376
    :goto_13
    return v2

    :cond_14
    move v2, v3

    .line 373
    goto :goto_13

    .line 374
    :catch_16
    move-exception v2

    move-object v1, v2

    .line 375
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "wifi_on"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 376
    goto :goto_13
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2067
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_18

    move v0, v3

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method

.method private isAirplaneSensitive()Z
    .registers 4

    .prologue
    .line 2048
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2050
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isAirplaneToggleable()Z
    .registers 4

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2057
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 1423
    array-length v1, p1

    .line 1425
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1427
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_19

    .line 1428
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v0

    .line 1438
    :goto_15
    return v2

    .line 1427
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1438
    :cond_19
    const/4 v2, -0x1

    goto :goto_15
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 1403
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1404
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1408
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 1410
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 1411
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1415
    :cond_29
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1419
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 4
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2337
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_1e

    .line 2349
    :goto_5
    return-void

    .line 2339
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2343
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2346
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2337
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 4
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2352
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_1e

    .line 2364
    :goto_5
    return-void

    .line 2354
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2358
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2361
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2352
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .registers 16
    .parameter "line"

    .prologue
    .line 1550
    const/4 v0, 0x0

    .line 1551
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_63

    .line 1556
    iget-object v10, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    monitor-enter v10

    .line 1557
    :try_start_6
    sget-object v11, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 1558
    .local v8, result:[Ljava/lang/String;
    const/4 v11, 0x3

    array-length v12, v8

    if-gt v11, v12, :cond_97

    array-length v11, v8

    const/4 v12, 0x5

    if-gt v11, v12, :cond_97

    .line 1559
    const/4 v11, 0x0

    aget-object v2, v8, v11
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_94

    .line 1564
    .local v2, bssid:Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_18
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1565
    .local v5, frequency:I
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_94
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_24} :catch_64

    move-result v4

    .line 1569
    .local v4, level:I
    if-lez v4, :cond_29

    add-int/lit16 v4, v4, -0x100

    .line 1585
    :cond_29
    :goto_29
    :try_start_29
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6f

    .line 1586
    const/4 v11, 0x3

    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_69

    .line 1587
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 1588
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 1604
    .local v1, ssid:Ljava/lang/String;
    :goto_3e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1605
    .local v7, key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_57
    .catchall {:try_start_29 .. :try_end_57} :catchall_94

    .line 1606
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_7f

    .line 1607
    :try_start_59
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 1608
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1609
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1610
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_bb

    move-object v0, v9

    .line 1624
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_62
    :try_start_62
    monitor-exit v10

    .line 1627
    .end local v8           #result:[Ljava/lang/String;
    :cond_63
    return-object v0

    .line 1570
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_64
    move-exception v11

    move-object v6, v11

    .line 1571
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 1572
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_29

    .line 1590
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_69
    const-string v3, ""

    .line 1591
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 1593
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_6f
    array-length v11, v8

    const/4 v12, 0x5

    if-ne v11, v12, :cond_7a

    .line 1594
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 1595
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 1599
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_7a
    const-string v3, ""

    .line 1600
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_94

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 1613
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_be

    .line 1614
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_bb

    .line 1617
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_8e
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 1624
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_94
    move-exception v11

    :goto_95
    monitor-exit v10
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_94

    throw v11

    .line 1621
    .restart local v8       #result:[Ljava/lang/String;
    :cond_97
    :try_start_97
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Misformatted scan result text with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fields: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_97 .. :try_end_ba} :catchall_94

    goto :goto_62

    .line 1624
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_bb
    move-exception v11

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_95

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_be
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_62
.end method

.method private persistWifiEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_on"

    if-eqz p1, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    return-void

    .line 382
    :cond_f
    const/4 v2, 0x0

    goto :goto_b
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .registers 15
    .parameter "config"

    .prologue
    .line 879
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 880
    .local v6, netId:I
    if-gez v6, :cond_5

    .line 1074
    :cond_4
    return-void

    .line 890
    :cond_5
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 891
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 892
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 897
    :goto_15
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "bssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 898
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8c

    .line 899
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 904
    :goto_25
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "priority"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 905
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 906
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 908
    :try_start_36
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3c} :catch_235

    .line 913
    :cond_3c
    :goto_3c
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "scan_ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 914
    const/4 v10, 0x0

    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 915
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_56

    .line 917
    :try_start_4d
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_90

    const/4 v10, 0x1

    :goto_54
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_56} :catch_232

    .line 922
    :cond_56
    :goto_56
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wep_tx_keyidx"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 923
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 924
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6d

    .line 926
    :try_start_67
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6d} :catch_22f

    .line 935
    :cond_6d
    :goto_6d
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6e
    const/4 v10, 0x4

    if-ge v2, v10, :cond_98

    .line 936
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 937
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_92

    .line 938
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 935
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 894
    .end local v2           #i:I
    :cond_88
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_15

    .line 901
    :cond_8c
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_25

    .line 917
    :cond_90
    const/4 v10, 0x0

    goto :goto_54

    .line 940
    .restart local v2       #i:I
    :cond_92
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v10, v2

    goto :goto_85

    .line 948
    :cond_98
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "psk"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 949
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13f

    .line 950
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 959
    :goto_a8
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "as_cert_uri"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 960
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_144

    .line 961
    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 967
    :goto_bc
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "user_cert_uri"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 968
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_149

    .line 969
    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 975
    :goto_d0
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "user_key_uri"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 976
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14d

    .line 977
    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserPrivateKey:Ljava/lang/String;

    .line 983
    :goto_e4
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wapi_psk"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 984
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_151

    .line 985
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 991
    :goto_f4
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wapi_key_type"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 993
    const/4 v10, 0x0

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 994
    if-eqz v9, :cond_112

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_112

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_112

    .line 997
    const/4 v10, 0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 1000
    :cond_112
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "proto"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1002
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_155

    .line 1003
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1004
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_12b
    if-ge v3, v5, :cond_155

    aget-object v7, v0, v3

    .line 1005
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1007
    .local v4, index:I
    if-ltz v4, :cond_13c

    .line 1008
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1004
    :cond_13c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12b

    .line 952
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_13f
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_a8

    .line 963
    :cond_144
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    goto/16 :goto_bc

    .line 971
    :cond_149
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto :goto_d0

    .line 979
    :cond_14d
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserPrivateKey:Ljava/lang/String;

    goto :goto_e4

    .line 987
    :cond_151
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_f4

    .line 1013
    :cond_155
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "key_mgmt"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1015
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_182

    .line 1016
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1017
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_16e
    if-ge v3, v5, :cond_182

    aget-object v7, v0, v3

    .line 1018
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1020
    .restart local v4       #index:I
    if-ltz v4, :cond_17f

    .line 1021
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1017
    :cond_17f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16e

    .line 1026
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_182
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "auth_alg"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1028
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1af

    .line 1029
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1030
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_19b
    if-ge v3, v5, :cond_1af

    aget-object v7, v0, v3

    .line 1031
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1033
    .restart local v4       #index:I
    if-ltz v4, :cond_1ac

    .line 1034
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1030
    :cond_1ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_19b

    .line 1039
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_1af
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "pairwise"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1041
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1dc

    .line 1042
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1043
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1c8
    if-ge v3, v5, :cond_1dc

    aget-object v7, v0, v3

    .line 1044
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1046
    .restart local v4       #index:I
    if-ltz v4, :cond_1d9

    .line 1047
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1043
    :cond_1d9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c8

    .line 1052
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_1dc
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "group"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1054
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_209

    .line 1055
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1056
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1f5
    if-ge v3, v5, :cond_209

    aget-object v7, v0, v3

    .line 1057
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1059
    .restart local v4       #index:I
    if-ltz v4, :cond_206

    .line 1060
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1056
    :cond_206
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f5

    .line 1066
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_209
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_20d
    if-ge v3, v5, :cond_4

    aget-object v1, v0, v3

    .line 1067
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1069
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_22c

    .line 1070
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_229

    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1071
    :cond_229
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1066
    :cond_22c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20d

    .line 927
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_22f
    move-exception v10

    goto/16 :goto_6d

    .line 918
    :catch_232
    move-exception v10

    goto/16 :goto_56

    .line 909
    :catch_235
    move-exception v10

    goto/16 :goto_3c
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 2036
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2037
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2038
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2039
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2040
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2041
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2042
    const-string v1, "android.intent.action.HYSTERESIS_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2043
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2044
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2045
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .registers 7
    .parameter "lock"

    .prologue
    .line 2436
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$3800(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 2440
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    if-eqz v3, :cond_1f

    const/4 v4, 0x1

    move v0, v4

    .line 2442
    .local v0, hadLock:Z
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2444
    .local v1, ident:J
    if-eqz v0, :cond_18

    .line 2445
    :try_start_10
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2446
    iget v4, v3, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_3e

    .line 2460
    :cond_18
    :goto_18
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_29

    .line 2464
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2467
    return v0

    .line 2440
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1f
    const/4 v4, 0x0

    move v0, v4

    goto :goto_a

    .line 2448
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_22
    :try_start_22
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_18

    .line 2462
    :catch_29
    move-exception v4

    goto :goto_1b

    .line 2451
    :pswitch_2b
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_31} :catch_29

    goto :goto_18

    .line 2464
    :catchall_32
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2454
    :pswitch_37
    :try_start_37
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3d} :catch_29

    goto :goto_18

    .line 2446
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 1077
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    const-string v0, ""

    .line 1078
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private removeMulticasterLocked(II)V
    .registers 8
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 2573
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2575
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_d

    .line 2576
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 2578
    :cond_d
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2579
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    .line 2582
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2584
    .local v0, ident:Ljava/lang/Long;
    :try_start_22
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_38

    .line 2587
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2589
    return-void

    .line 2587
    :catchall_2f
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2585
    :catch_38
    move-exception v2

    .line 2587
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2b
.end method

.method private reportStartWorkSource()V
    .registers 5

    .prologue
    .line 1957
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 1958
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 1959
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_2f

    .line 1960
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$1800(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1961
    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$1800(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 1960
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1964
    .end local v0           #i:I
    :cond_2f
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1965
    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1966
    monitor-exit v2

    .line 1967
    return-void

    .line 1966
    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .registers 7
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "uid"

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_e

    const/4 v1, 0x6

    :goto_5
    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1941
    return-void

    .line 1938
    :cond_e
    const/4 v1, 0x7

    goto :goto_5
.end method

.method private sendEnableMessage(ZZI)V
    .registers 9
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1927
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_12

    move v2, v3

    :goto_7
    if-eqz p2, :cond_a

    move v3, v4

    :cond_a
    invoke-static {v1, v2, v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1930
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1931
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_12
    move v2, v4

    .line 1927
    goto :goto_7
.end method

.method private sendEnableNetworksMessage()V
    .registers 3

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1945
    return-void
.end method

.method private sendEnableRssiPollingMessage(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1952
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xc

    if-eqz p1, :cond_10

    const/4 v2, 0x1

    :goto_8
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1953
    return-void

    :cond_10
    move v2, v3

    .line 1952
    goto :goto_8
.end method

.method private sendReportWorkSourceMessage()V
    .registers 3

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1949
    return-void
.end method

.method private sendStartMessage(I)V
    .registers 5
    .parameter "lockMode"

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1935
    return-void
.end method

.method private setNumAllowedChannelsBlocking(IZ)Z
    .registers 5
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 1708
    if-eqz p2, :cond_d

    .line 1709
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_allowed_channels"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1713
    :cond_d
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z

    move-result v0

    return v0
.end method

.method private setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    .registers 14
    .parameter "enable"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v8, "WifiService"

    .line 692
    if-eqz p1, :cond_23

    move v2, v4

    .line 694
    .local v2, eventualWifiApState:I
    :goto_9
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v3, v2, :cond_57

    .line 696
    if-eqz p1, :cond_55

    if-eqz p3, :cond_55

    .line 698
    :try_start_11
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wl0.1"

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_25

    move v3, v9

    .line 772
    :goto_22
    return v3

    .end local v2           #eventualWifiApState:I
    :cond_23
    move v2, v9

    .line 692
    goto :goto_9

    .line 702
    .restart local v2       #eventualWifiApState:I
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 703
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in nwService during AP restart"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_3a

    .line 709
    :goto_33
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v7, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 710
    goto :goto_22

    .line 706
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 707
    .local v1, ee:Ljava/lang/Exception;
    const-string v3, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not stop AP, :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    :cond_55
    move v3, v9

    .line 713
    goto :goto_22

    .line 720
    :cond_57
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    if-ne v3, v4, :cond_68

    if-eqz p1, :cond_68

    .line 721
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v7, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 722
    goto :goto_22

    .line 725
    :cond_68
    if-eqz p1, :cond_a6

    const/4 v3, 0x2

    :goto_6b
    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .line 728
    if-eqz p1, :cond_d1

    .line 731
    if-nez p3, :cond_8f

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    if-nez p3, :cond_8f

    .line 732
    new-instance p3, Landroid/net/wifi/WifiConfiguration;

    .end local p3
    invoke-direct {p3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 733
    .restart local p3
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v4, 0x1040346

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 734
    iget-object v3, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 737
    :cond_8f
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->loadApDriver()Z

    move-result v3

    if-nez v3, :cond_a8

    .line 738
    const-string v3, "WifiService"

    const-string v3, "Failed to load Wi-Fi driver for AP mode"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v7, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 740
    goto/16 :goto_22

    :cond_a6
    move v3, v6

    .line 725
    goto :goto_6b

    .line 744
    :cond_a8
    :try_start_a8
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wl0.1"

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b5} :catch_c0

    .line 752
    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 771
    :cond_b8
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v9

    .line 772
    goto/16 :goto_22

    .line 746
    :catch_c0
    move-exception v3

    move-object v0, v3

    .line 747
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in startAccessPoint()"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v7, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 749
    goto/16 :goto_22

    .line 757
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d1
    :try_start_d1
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d6} :catch_ed

    .line 764
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->unloadApDriver()Z

    move-result v3

    if-nez v3, :cond_b8

    .line 765
    const-string v3, "WifiService"

    const-string v3, "Failed to unload Wi-Fi driver for AP mode"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v7, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 767
    goto/16 :goto_22

    .line 758
    :catch_ed
    move-exception v3

    move-object v0, v3

    .line 759
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v7, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 761
    goto/16 :goto_22
.end method

.method private setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V
    .registers 10
    .parameter "wifiAPState"
    .parameter "uid"
    .parameter "flag"

    .prologue
    .line 789
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 794
    .local v3, previousWifiApState:I
    iget v4, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_10

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    if-ne p3, v4, :cond_10

    .line 795
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->unloadApDriver()Z

    .line 798
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 800
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3d

    .line 801
    :try_start_17
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_46

    .line 807
    :cond_1c
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    iput p1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 814
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 816
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 819
    return-void

    .line 802
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3d
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1c

    .line 803
    :try_start_40
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_1c

    .line 805
    :catch_46
    move-exception v4

    goto :goto_1c

    .line 807
    :catchall_48
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setWifiEnabledBlocking(ZZI)Z
    .registers 13
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    const-string v8, "WifiService"

    .line 443
    if-eqz p1, :cond_13

    move v0, v4

    .line 444
    .local v0, eventualWifiState:I
    :goto_9
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v2

    .line 446
    .local v2, wifiState:I
    if-ne v2, v0, :cond_15

    move v3, v7

    .line 533
    :goto_12
    return v3

    .end local v0           #eventualWifiState:I
    .end local v2           #wifiState:I
    :cond_13
    move v0, v7

    .line 443
    goto :goto_9

    .line 449
    .restart local v0       #eventualWifiState:I
    .restart local v2       #wifiState:I
    :cond_15
    if-eqz p1, :cond_23

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v3, :cond_23

    move v3, v5

    .line 450
    goto :goto_12

    .line 460
    :cond_23
    if-ne v2, v6, :cond_29

    if-nez p1, :cond_29

    move v3, v5

    .line 461
    goto :goto_12

    .line 469
    :cond_29
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v3, v4, :cond_34

    if-eqz p1, :cond_34

    .line 470
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v3, v5

    .line 471
    goto :goto_12

    .line 474
    :cond_34
    if-eqz p1, :cond_55

    const/4 v3, 0x2

    :goto_37
    invoke-direct {p0, v3, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 476
    if-eqz p1, :cond_82

    .line 477
    iget-object v3, p0, Lcom/android/server/WifiService;->mRegulatoryDomain:Lcom/android/server/WifiService$RegulatoryDomain;

    invoke-virtual {v3, v7}, Lcom/android/server/WifiService$RegulatoryDomain;->updateChannels(Z)V

    .line 478
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v3

    if-nez v3, :cond_57

    .line 479
    const-string v3, "WifiService"

    const-string v3, "Failed to load Wi-Fi driver."

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v3, v5

    .line 481
    goto :goto_12

    :cond_55
    move v3, v5

    .line 474
    goto :goto_37

    .line 483
    :cond_57
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->startSupplicant()Z

    move-result v3

    if-nez v3, :cond_70

    .line 484
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    .line 485
    const-string v3, "WifiService"

    const-string v3, "Failed to start supplicant daemon."

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v3, v5

    .line 487
    goto :goto_12

    .line 490
    :cond_70
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 491
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->startEventLoop()V

    .line 529
    :cond_78
    if-eqz p2, :cond_7d

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    .line 532
    :cond_7d
    invoke-direct {p0, v0, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v3, v7

    .line 533
    goto :goto_12

    .line 494
    :cond_82
    iget-object v3, p0, Lcom/android/server/WifiService;->mRegulatoryDomain:Lcom/android/server/WifiService$RegulatoryDomain;

    invoke-virtual {v3}, Lcom/android/server/WifiService$RegulatoryDomain;->stop()V

    .line 496
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 500
    const/4 v1, 0x0

    .line 506
    .local v1, failedToStopSupplicantOrUnloadDriver:Z
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 508
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->stopSupplicant()Z

    move-result v3

    if-nez v3, :cond_ac

    .line 509
    const-string v3, "WifiService"

    const-string v3, "Failed to stop supplicant daemon."

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 511
    const/4 v1, 0x1

    .line 514
    :cond_ac
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v3

    if-nez v3, :cond_c1

    .line 515
    const-string v3, "WifiService"

    const-string v3, "Failed to unload Wi-Fi driver."

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-nez v1, :cond_c1

    .line 517
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 518
    const/4 v1, 0x1

    .line 522
    :cond_c1
    if-eqz v1, :cond_78

    move v3, v5

    .line 523
    goto/16 :goto_12
.end method

.method private setWifiEnabledState(II)V
    .registers 8
    .parameter "wifiState"
    .parameter "uid"

    .prologue
    .line 537
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    .line 539
    .local v3, previousWifiState:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 541
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_36

    .line 542
    :try_start_d
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_3f

    .line 548
    :cond_12
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    .line 555
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 560
    return-void

    .line 543
    .end local v2           #intent:Landroid/content/Intent;
    :cond_36
    const/4 v4, 0x1

    if-ne p1, v4, :cond_12

    .line 544
    :try_start_39
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_12

    .line 546
    :catch_3f
    move-exception v4

    goto :goto_12

    .line 548
    :catchall_41
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static stateName(I)Ljava/lang/String;
    .registers 2
    .parameter "wifiState"

    .prologue
    .line 2212
    packed-switch p0, :pswitch_data_16

    .line 2224
    const-string v0, "[invalid state]"

    :goto_5
    return-object v0

    .line 2214
    :pswitch_6
    const-string v0, "disabling"

    goto :goto_5

    .line 2216
    :pswitch_9
    const-string v0, "disabled"

    goto :goto_5

    .line 2218
    :pswitch_c
    const-string v0, "enabling"

    goto :goto_5

    .line 2220
    :pswitch_f
    const-string v0, "enabled"

    goto :goto_5

    .line 2222
    :pswitch_12
    const-string v0, "unknown state"

    goto :goto_5

    .line 2212
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private testAndClearWifiSavedState()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "wifi_saved_state"

    .line 358
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 361
    .local v1, wifiSavedState:I
    :try_start_b
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 362
    if-ne v1, v4, :cond_19

    .line 363
    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_19
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b .. :try_end_19} :catch_1f

    .line 367
    :cond_19
    :goto_19
    if-ne v1, v4, :cond_1d

    move v2, v4

    :goto_1c
    return v2

    :cond_1d
    move v2, v5

    goto :goto_1c

    .line 364
    :catch_1f
    move-exception v2

    goto :goto_19
.end method

.method private updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 23
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 314
    .local v16, wifiTethered:Z
    const/4 v15, 0x0

    .line 316
    .local v15, wifiAvailable:Z
    const-string v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 317
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v14

    .line 319
    .local v14, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_35
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 323
    .local v11, intf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    move-object v4, v0

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_48
    if-ge v9, v12, :cond_35

    aget-object v13, v4, v9

    .line 324
    .local v13, regex:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_102

    .line 326
    const/4 v10, 0x0

    .line 328
    .local v10, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_53
    invoke-interface {v14, v11}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 329
    if-eqz v10, :cond_72

    .line 331
    const v17, -0x3f57d4ff

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 332
    const/16 v17, -0x100

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 333
    const-string v17, "up"

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 335
    invoke-interface {v14, v11, v10}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_72} :catch_9d

    .line 348
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_35

    .line 349
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error tethering "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 337
    :catch_9d
    move-exception v17

    move-object/from16 v6, v17

    .line 338
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error configuring interface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_e3

    .line 344
    :goto_d1
    const/16 v17, 0x4

    const/16 v18, 0x0

    sget-object v19, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .line 355
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #i$:I
    .end local v10           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v11           #intf:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #regex:Ljava/lang/String;
    :cond_e2
    return-void

    .line 341
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v9       #i$:I
    .restart local v10       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v11       #intf:Ljava/lang/String;
    .restart local v12       #len$:I
    .restart local v13       #regex:Ljava/lang/String;
    :catch_e3
    move-exception v17

    move-object/from16 v7, v17

    .line 342
    .local v7, ee:Ljava/lang/Exception;
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not stop AP, :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 323
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #ee:Ljava/lang/Exception;
    .end local v10           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_102
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_48
.end method

.method private updateWifiState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1971
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1972
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 2533
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2535
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v2

    .line 2536
    :try_start_6
    iget v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 2537
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2542
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->stopPacketFiltering()Z

    .line 2543
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_35

    .line 2545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2546
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2548
    .local v0, ident:Ljava/lang/Long;
    :try_start_28
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_41

    .line 2551
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    return-void

    .line 2543
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v3

    .line 2551
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_38
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2549
    :catch_41
    move-exception v2

    .line 2551
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_31
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .registers 11
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 2313
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2b

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2b

    .line 2317
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/4 v1, 0x0

    .line 2332
    :goto_2a
    return v1

    .line 2321
    :cond_2b
    if-eqz p4, :cond_34

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_34

    .line 2322
    const/4 p4, 0x0

    .line 2324
    :cond_34
    if-eqz p4, :cond_41

    .line 2325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2327
    :cond_41
    if-nez p4, :cond_4c

    .line 2328
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 2330
    .restart local p4
    :cond_4c
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2331
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 2332
    :try_start_59
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2a

    .line 2333
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_60

    throw v2
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 26
    .parameter "config"

    .prologue
    .line 1091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1098
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    .line 1099
    .local v16, netId:I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1100
    .local v17, newNetwork:Z
    :goto_15
    const/4 v10, 0x0

    .line 1102
    .local v10, doReconfig:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1103
    if-eqz v17, :cond_37

    .line 1104
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiStateTracker;->addNetwork()I

    move-result v16

    .line 1105
    if-gez v16, :cond_36

    .line 1109
    const/16 v21, -0x1

    monitor-exit v20

    move/from16 v20, v21

    .line 1399
    :goto_30
    return v20

    .line 1099
    .end local v10           #doReconfig:Z
    .end local v17           #newNetwork:Z
    :cond_31
    const/16 v20, 0x0

    move/from16 v17, v20

    goto :goto_15

    .line 1111
    .restart local v10       #doReconfig:Z
    .restart local v17       #newNetwork:Z
    :cond_36
    const/4 v10, 0x1

    .line 1113
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    move/from16 v21, v0

    if-nez v21, :cond_41

    if-eqz v10, :cond_7a

    :cond_41
    const/16 v21, 0x1

    :goto_43
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 1114
    monitor-exit v20
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_7d

    .line 1123
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_80

    .line 1391
    :cond_6e
    if-eqz v17, :cond_77

    .line 1392
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService;->removeNetwork(I)Z

    .line 1399
    :cond_77
    const/16 v20, -0x1

    goto :goto_30

    .line 1113
    :cond_7a
    const/16 v21, 0x0

    goto :goto_43

    .line 1114
    :catchall_7d
    move-exception v21

    :try_start_7e
    monitor-exit v20
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v21

    .line 1134
    :cond_80
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1145
    :cond_a4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    .local v6, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "key_mgmt"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1159
    :cond_d1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1161
    .local v8, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proto"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1173
    :cond_fe
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1175
    .local v4, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_12b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "auth_alg"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1187
    :cond_12b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1189
    .local v7, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_158

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "pairwise"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1201
    :cond_158
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1203
    .local v5, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_185

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "group"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1217
    :cond_185
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1232
    :cond_1b7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_231

    .line 1235
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "as_cert_uri"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1245
    :cond_1e9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "user_cert_uri"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1255
    :cond_20d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserPrivateKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_231

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "user_key_uri"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserPrivateKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1272
    :cond_231
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_2bd

    .line 1273
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v20, v0

    if-eqz v20, :cond_255

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_315

    :cond_255
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_315

    .line 1281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_287

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wapi_psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1291
    :cond_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wapi_key_type"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1298
    const-string v20, "WifiService"

    const-string v21, "WAPI: addOrUpdate Network wapiPsk and wapiPskType set handled ok"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_2bd
    :goto_2bd
    const/4 v12, 0x0

    .line 1305
    .local v12, hasSetKey:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_31d

    .line 1306
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2c7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_31d

    .line 1309
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    if-eqz v20, :cond_312

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_312

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v21, v21, v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1321
    const/4 v12, 0x1

    .line 1306
    :cond_312
    add-int/lit8 v13, v13, 0x1

    goto :goto_2c7

    .line 1300
    .end local v12           #hasSetKey:Z
    .end local v13           #i:I
    :cond_315
    const-string v20, "WifiService"

    const-string v21, "WAPI: Invalid parameters supplied for setting: WAPI_PSK"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2bd

    .line 1326
    .restart local v12       #hasSetKey:Z
    :cond_31d
    if-eqz v12, :cond_33f

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1340
    :cond_33f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1351
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v20, v0

    if-eqz v20, :cond_38b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3cc

    const/16 v22, 0x1

    :goto_379
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1363
    :cond_38b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object v9, v0

    .local v9, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_392
    if-ge v14, v15, :cond_3d6

    aget-object v11, v9, v14

    .line 1364
    .local v11, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v19

    .line 1365
    .local v19, varName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v18

    .line 1366
    .local v18, value:Ljava/lang/String;
    if-eqz v18, :cond_3c9

    .line 1367
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3b5

    .line 1368
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_3cf

    const-string v20, "NULL"

    move-object/from16 v18, v20

    .line 1370
    :cond_3b5
    :goto_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1363
    :cond_3c9
    add-int/lit8 v14, v14, 0x1

    goto :goto_392

    .line 1351
    .end local v9           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_3cc
    const/16 v22, 0x0

    goto :goto_379

    .line 1368
    .restart local v9       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v11       #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #value:Ljava/lang/String;
    .restart local v19       #varName:Ljava/lang/String;
    :cond_3cf
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    goto :goto_3b5

    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_3d6
    move/from16 v20, v16

    .line 1382
    goto/16 :goto_30
.end method

.method public disableNetwork(I)Z
    .registers 3
    .parameter "netId"

    .prologue
    .line 1479
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1481
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 599
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    const-string v10, " scan"

    const-string v9, " full, "

    const-string v8, " full high perf, "

    .line 2170
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3a

    .line 2172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    :goto_39
    return-void

    .line 2177
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/WifiService;->stateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2183
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2185
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2186
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 2188
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_e4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_e4

    .line 2189
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2191
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v3, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_e1

    const-string v6, ""

    :goto_db
    aput-object v6, v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_a8

    :cond_e1
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_db

    .line 2199
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_e4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2207
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$2900(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_39
.end method

.method public enableNetwork(IZ)Z
    .registers 6
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1463
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    .line 1465
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateTracker;->enableNetwork(IZ)Z

    move-result v1

    .line 1466
    .local v1, result:Z
    if-nez v1, :cond_17

    .line 1467
    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1469
    :cond_17
    return v1
.end method

.method enforceWakeSourcePermission(II)V
    .registers 6
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 2305
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2310
    :goto_6
    return-void

    .line 2308
    :cond_7
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 826
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 835
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->listNetworks()Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, listStr:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v5, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_15

    .line 867
    :cond_14
    return-object v5

    .line 842
    :cond_15
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1c
    array-length v7, v3

    if-ge v2, v7, :cond_14

    .line 845
    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 849
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    :try_start_2d
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_35} :catch_4d

    .line 853
    array-length v7, v6

    if-le v7, v9, :cond_61

    .line 854
    aget-object v7, v6, v9

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_50

    .line 855
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 863
    :goto_44
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 864
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 850
    :catch_4d
    move-exception v7

    move-object v1, v7

    .line 851
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_4a

    .line 856
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_50
    aget-object v7, v6, v9

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_5e

    .line 857
    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_44

    .line 859
    :cond_5e
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_44

    .line 861
    :cond_61
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_44
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1494
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1757
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getNumAllowedChannels()I
    .registers 5

    .prologue
    .line 1724
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1731
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->getNumAllowedChannels()I

    move-result v0

    .line 1732
    .local v0, numChannels:I
    if-gez v0, :cond_18

    .line 1733
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_num_allowed_channels"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1737
    :cond_18
    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1506
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->scanResults()Ljava/lang/String;

    move-result-object v4

    .line 1507
    .local v4, reply:Ljava/lang/String;
    if-nez v4, :cond_d

    .line 1508
    const/4 v8, 0x0

    .line 1541
    :goto_c
    return-object v8

    .line 1511
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v6, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 1515
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1518
    .local v5, replyLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_19
    if-gt v3, v5, :cond_41

    .line 1519
    if-eq v3, v5, :cond_25

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2c

    .line 1520
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 1524
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2f

    .line 1525
    add-int/lit8 v1, v3, 0x1

    .line 1518
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1528
    :cond_2f
    if-le v3, v1, :cond_3e

    .line 1529
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 1531
    .local v7, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_3e

    .line 1532
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    .end local v0           #line:Ljava/lang/String;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_3e
    add-int/lit8 v1, v3, 0x1

    goto :goto_2c

    .line 1540
    :cond_41
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateTracker;->setScanResultsList(Ljava/util/List;)V

    move-object v8, v6

    .line 1541
    goto :goto_c
.end method

.method public getValidChannelCounts()[I
    .registers 2

    .prologue
    .line 1746
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1747
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 648
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 649
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 650
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 653
    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_start_f
    const-string v4, "wifi_ap_ssid"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 654
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_1d

    move-object v4, v6

    .line 662
    :goto_1c
    return-object v4

    .line 656
    :cond_1d
    const-string v4, "wifi_ap_security"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 657
    .local v0, authType:I
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 658
    const-string v4, "wifi_ap_passwd"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f .. :try_end_30} :catch_32

    move-object v4, v3

    .line 659
    goto :goto_1c

    .line 660
    .end local v0           #authType:I
    :catch_32
    move-exception v4

    move-object v2, v4

    .line 661
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiService"

    const-string v5, "AP settings not found, returning"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 662
    goto :goto_1c
.end method

.method public getWifiApEnabledState()I
    .registers 2

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 785
    iget v0, p0, Lcom/android/server/WifiService;->mWifiApState:I

    return v0
.end method

.method public getWifiEnabledState()I
    .registers 2

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 589
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .registers 3

    .prologue
    .line 2520
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2522
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 2524
    :try_start_6
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_10

    .line 2525
    monitor-exit v0

    .line 2530
    :goto_f
    return-void

    .line 2527
    :cond_10
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    .line 2529
    monitor-exit v0

    goto :goto_f

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 2592
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2594
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 2595
    :try_start_6
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    .line 2596
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method parseScanFlags(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .parameter "flags"

    .prologue
    .line 1638
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1640
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 1641
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1644
    :cond_11
    return-object v0
.end method

.method public pingSupplicant()Z
    .registers 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 396
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->ping()Z

    move-result v0

    return v0
.end method

.method public reassociate()Z
    .registers 2

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 619
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reassociate()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 609
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    move-result v0

    return v0
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 2556
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2559
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 2560
    :try_start_a
    iget v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 2561
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 2562
    .local v2, size:I
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_19
    if-ltz v0, :cond_31

    .line 2563
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2564
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v5

    if-ne v5, v3, :cond_2e

    .line 2565
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 2562
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 2568
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_31
    monitor-exit v4

    .line 2569
    return-void

    .line 2568
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_33
    move-exception v5

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v5
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "lock"

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v0

    .line 2429
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2430
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removeNetwork(I)Z
    .registers 3
    .parameter "netId"

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1450
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()Z
    .registers 6

    .prologue
    .line 1653
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1655
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v3

    .line 1656
    :try_start_6
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->saveConfig()Z

    move-result v2

    .line 1657
    .local v2, result:Z
    if-eqz v2, :cond_29

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    if-eqz v4, :cond_29

    .line 1658
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 1659
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->reloadConfig()Z

    move-result v2

    .line 1661
    if-eqz v2, :cond_29

    .line 1662
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1666
    .end local v1           #intent:Landroid/content/Intent;
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_3c

    .line 1668
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 1670
    .local v0, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_3b

    .line 1672
    :try_start_36
    const-string v3, "com.android.providers.settings"

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_3f

    .line 1677
    :cond_3b
    :goto_3b
    return v2

    .line 1666
    .end local v0           #ibm:Landroid/app/backup/IBackupManager;
    .end local v2           #result:Z
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v4

    .line 1673
    .restart local v0       #ibm:Landroid/app/backup/IBackupManager;
    .restart local v2       #result:Z
    :catch_3f
    move-exception v3

    goto :goto_3b
.end method

.method public setNumAllowedChannels(IZ)Z
    .registers 6
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 1693
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to setNumAllowed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1697
    iget-object v0, p0, Lcom/android/server/WifiService;->mRegulatoryDomain:Lcom/android/server/WifiService$RegulatoryDomain;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WifiService$RegulatoryDomain;->setChannels(IZ)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 7
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x1

    .line 667
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 668
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 670
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez p1, :cond_d

    .line 679
    :cond_c
    :goto_c
    return-void

    .line 672
    :cond_d
    const-string v2, "wifi_ap_ssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 674
    .local v1, isWpa:Z
    const-string v2, "wifi_ap_security"

    if-eqz v1, :cond_2c

    move v3, v4

    :goto_1f
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    if-eqz v1, :cond_c

    .line 678
    const-string v2, "wifi_ap_passwd"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    .line 674
    :cond_2c
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 632
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    .line 644
    :goto_8
    return v2

    .line 634
    :cond_9
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v2

    .line 636
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 637
    .local v0, ident:J
    sget-object v3, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    .line 641
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 642
    monitor-exit v2

    .line 644
    const/4 v2, 0x1

    goto :goto_8

    .line 642
    .end local v0           #ident:J
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public setWifiEnabled(Z)Z
    .registers 8
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 416
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 417
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v2, :cond_b

    move v2, v4

    .line 431
    :goto_a
    return v2

    .line 419
    :cond_b
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v2

    .line 421
    :try_start_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 422
    .local v0, ident:J
    sget-object v3, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 427
    if-eqz p1, :cond_3c

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v5

    :goto_2f
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    .line 428
    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 429
    monitor-exit v2

    move v2, v5

    .line 431
    goto :goto_a

    :cond_3c
    move v3, v4

    .line 427
    goto :goto_2f

    .line 429
    .end local v0           #ident:J
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public startScan(Z)V
    .registers 6
    .parameter "forceActive"

    .prologue
    const/4 v3, 0x0

    .line 403
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 404
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_9

    .line 407
    :goto_8
    return-void

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xa

    if-eqz p1, :cond_18

    const/4 v2, 0x1

    :goto_10
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    :cond_18
    move v2, v3

    goto :goto_10
.end method

.method public startWifi()V
    .registers 5

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_12
    const/4 v1, 0x1

    move v0, v1

    .line 306
    .local v0, wifiEnabled:Z
    :goto_14
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_37

    const-string v3, "enabled"

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 309
    return-void

    .line 304
    .end local v0           #wifiEnabled:Z
    :cond_34
    const/4 v1, 0x0

    move v0, v1

    goto :goto_14

    .line 306
    .restart local v0       #wifiEnabled:Z
    :cond_37
    const-string v3, "disabled"

    goto :goto_25
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 12
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 2400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2401
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2402
    .local v3, pid:I
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_11

    .line 2403
    const/4 p2, 0x0

    .line 2405
    :cond_11
    if-eqz p2, :cond_16

    .line 2406
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2408
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2410
    .local v0, ident:J
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v6
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_30

    .line 2411
    :try_start_1d
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v7, p1}, Lcom/android/server/WifiService$LockList;->access$3700(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 2412
    .local v2, index:I
    if-gez v2, :cond_35

    .line 2413
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2419
    .end local v2           #index:I
    :catchall_2d
    move-exception v7

    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v7
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_30} :catch_30

    .line 2420
    :catch_30
    move-exception v6

    .line 2422
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2424
    return-void

    .line 2415
    .restart local v2       #index:I
    :cond_35
    :try_start_35
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$1800(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 2416
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2417
    if-eqz p2, :cond_52

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_4b
    iput-object v7, v5, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 2418
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2419
    monitor-exit v6

    goto :goto_31

    .line 2417
    :cond_52
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_2d

    goto :goto_4b

    .line 2422
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_58
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
