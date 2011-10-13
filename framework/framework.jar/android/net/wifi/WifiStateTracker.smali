.class public Landroid/net/wifi/WifiStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$SettingsObserver;,
        Landroid/net/wifi/WifiStateTracker$DhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$DhcpObserver;,
        Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;,
        Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DHCP_FILEEVENTS:I = 0x8

.field private static final DHCP_FILEPATH:Ljava/lang/String; = "/data/misc/dhcp"

.field private static final DHCP_POPULATE_DELAY_MSECS:I = 0x61a8

.field private static final DISCONNECT_DELAY_MSECS:I = 0x1388

.field private static final DRIVER_HUNG:I = 0x2

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_STARTED:I = 0x0

.field private static final DRIVER_STOPPED:I = 0x1

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0xc368

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0xc365

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0xc369

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc366

.field private static final EVENT_CERT_MAY_BE_INCORRECT:I = 0x11

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xc

.field private static final EVENT_DEFERRED_RECONNECT:I = 0xd

.field private static final EVENT_DHCP_POPULATE:I = 0xa

.field private static final EVENT_DHCP_POPULATE_SUCCEEDED:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x9

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0xe

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x6

.field private static final EVENT_MAYBE_START_SCAN_POST_DISCONNECT:I = 0x10

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0xf

.field private static final EVENT_POLL_INTERVAL:I = 0x8

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SUPPLICANT_CONNECTION:I = 0x1

.field private static final EVENT_SUPPLICANT_DISCONNECT:I = 0x2

.field private static final EVENT_SUPPLICANT_STATE_CHANGED:I = 0x3

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x108043f

.field private static final KICKSTART_SCANNING_DELAY_MSECS:I = 0x3a98

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final RECONNECT_DELAY_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field public static final SUPPL_SCAN_HANDLING_LIST_ONLY:I = 0x2

.field public static final SUPPL_SCAN_HANDLING_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final mRunStateNames:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mCertMayBeIncorrect:Z

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

.field private mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

.field private mDisconnectExpected:Z

.field private mDisconnectPending:Z

.field private mEnableRssiPolling:Z

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsHighPerfEnabled:Z

.field private mIsScanModeActive:Z

.field private mIsScanOnly:Z

.field private mLastBssid:Ljava/lang/String;

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLastSsid:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumAllowedChannels:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumSupplicantLoopIterations:I

.field private mNumSupplicantStateChanges:I

.field private mObtainingIpAddress:Z

.field private mOptimizationsDisabledRefCount:I

.field private mPasswordKeyMayBeIncorrect:Z

.field private mPowerModeRefCount:I

.field private mReconnectCount:I

.field private mReportedRunning:Z

.field private mRunState:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

.field private mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wifi/WifiManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Starting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 344
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v8, "dhcp."

    .line 397
    const-string v5, "WIFI"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 182
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 190
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 198
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 199
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mCertMayBeIncorrect:Z

    .line 224
    iput v7, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 227
    iput v7, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 228
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 307
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 308
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 351
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    .line 356
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 361
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 399
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 400
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 401
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 402
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 403
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    .line 404
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;

    .line 407
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 408
    iput v3, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 413
    new-instance v0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    .line 414
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->register()V

    .line 416
    new-instance v0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$SettingsObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    .line 418
    const-string/jumbo v0, "wifi.interface"

    const-string/jumbo v1, "tiwlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 419
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 423
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 425
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiStateTracker$DhcpHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    return-void
.end method

.method private cancelDisconnect()V
    .locals 1

    .prologue
    .line 1511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1512
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->removeMessages(I)V

    .line 1513
    return-void
.end method

.method private checkIsBluetoothPlaying()V
    .locals 6

    .prologue
    .line 799
    const/4 v3, 0x0

    .line 800
    .local v3, isBluetoothPlaying:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    .line 802
    .local v0, connected:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 803
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 804
    const/4 v3, 0x1

    .line 808
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    .line 809
    return-void
.end method

.method private declared-synchronized checkPollTimer()V
    .locals 3

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :cond_0
    monitor-exit p0

    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkUseStaticIp()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2680
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 2681
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2683
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v3, "wifi_use_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2686
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2687
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0

    .line 2691
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "wifi_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2692
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2693
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2697
    const-string/jumbo v3, "wifi_static_gateway"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2698
    if-eqz v0, :cond_0

    .line 2699
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->gateway:I

    .line 2703
    const-string/jumbo v3, "wifi_static_netmask"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2704
    if-eqz v0, :cond_0

    .line 2705
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->netmask:I

    .line 2709
    const-string/jumbo v3, "wifi_static_dns1"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2710
    if-eqz v0, :cond_0

    .line 2711
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns1:I

    .line 2715
    const-string/jumbo v3, "wifi_static_dns2"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2716
    if-eqz v0, :cond_2

    .line 2717
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2724
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    goto :goto_0

    .line 2719
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2721
    .end local v0           #addr:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 2722
    .local v2, e:Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method private configureInterface()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 1415
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 1416
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1417
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_1

    .line 1418
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_0

    .line 1419
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1420
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1425
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1426
    const/4 v0, 0x6

    .line 1427
    .local v0, event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1429
    .end local v0           #event:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1430
    const/4 v0, 0x7

    .line 1431
    .restart local v0       #event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 2746
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleConfigurationChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 868
    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    .line 869
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 870
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 871
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v2, v2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 873
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    .line 874
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 879
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 881
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const v1, 0xc368

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 888
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    .line 889
    return-void

    .line 876
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 877
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 3
    .parameter "newState"
    .parameter "disableInterface"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1445
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    if-eqz v0, :cond_0

    .line 1446
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1448
    :cond_0
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1449
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1450
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1451
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1453
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1454
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1455
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1456
    return-void
.end method

.method private isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .parameter "newSupplicantState"

    .prologue
    .line 841
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 843
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    if-eq v0, p1, :cond_1

    .line 844
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 845
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 848
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 854
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 850
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_1

    .line 851
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto :goto_0

    .line 854
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized registerDhcpObserver()V
    .locals 1

    .prologue
    .line 2480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    if-nez v0, :cond_0

    .line 2481
    new-instance v0, Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiStateTracker$DhcpObserver;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    .line 2482
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$DhcpObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    :cond_0
    monitor-exit p0

    return-void

    .line 2480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V
    .locals 17
    .parameter "info"

    .prologue
    .line 1538
    const/4 v3, 0x0

    .line 1539
    .local v3, SSID:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1540
    .local v2, BSSID:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1541
    .local v13, suppState:Ljava/lang/String;
    const/4 v10, -0x1

    .line 1542
    .local v10, netId:I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->status()Ljava/lang/String;

    move-result-object v12

    .line 1543
    .local v12, reply:Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 1550
    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1551
    .local v8, lines:[Ljava/lang/String;
    move-object v4, v8

    .local v4, arr$:[Ljava/lang/String;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v7, v4, v5

    .line 1552
    .local v7, line:Ljava/lang/String;
    const-string v15, " *= *"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1553
    .local v11, prop:[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 1551
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1555
    :cond_1
    const/4 v15, 0x0

    aget-object v9, v11, v15

    .line 1556
    .local v9, name:Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v14, v11, v15

    .line 1557
    .local v14, value:Ljava/lang/String;
    const-string v15, "id"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1558
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 1559
    :cond_2
    const-string v15, "ssid"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1560
    move-object v3, v14

    goto :goto_1

    .line 1561
    :cond_3
    const-string v15, "bssid"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1562
    move-object v2, v14

    goto :goto_1

    .line 1563
    :cond_4
    const-string/jumbo v15, "wpa_state"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1564
    move-object v13, v14

    goto :goto_1

    .line 1567
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #lines:[Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #prop:[Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1568
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 1569
    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v15

    sget-object v16, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_6

    if-eqz v13, :cond_6

    .line 1578
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Ljava/lang/String;)V

    .line 1579
    :cond_6
    return-void
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V
    .locals 6
    .parameter "info"
    .parameter "polling"

    .prologue
    const/4 v5, -0x1

    const/16 v4, -0xc8

    .line 1587
    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssiApprox()I

    move-result v3

    move v1, v3

    .line 1588
    .local v1, newRssi:I
    :goto_0
    if-eq v1, v5, :cond_4

    if-ge v4, v1, :cond_4

    const/16 v3, 0x100

    if-ge v1, v3, :cond_4

    .line 1592
    if-lez v1, :cond_0

    add-int/lit16 v1, v1, -0x100

    .line 1593
    :cond_0
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1607
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1608
    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    if-eq v2, v3, :cond_1

    .line 1609
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendRssiChangeBroadcast(I)V

    .line 1611
    :cond_1
    iput v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1615
    .end local v2           #newSignalLevel:I
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getLinkSpeed()I

    move-result v0

    .line 1616
    .local v0, newLinkSpeed:I
    if-eq v0, v5, :cond_2

    .line 1617
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    :cond_2
    monitor-exit p0

    return-void

    .line 1587
    .end local v0           #newLinkSpeed:I
    .end local v1           #newRssi:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssi()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 1613
    .restart local v1       #newRssi:I
    :cond_4
    const/16 v3, -0xc8

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1587
    .end local v1           #newRssi:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private resetNotificationTimer()V
    .locals 2

    .prologue
    .line 2455
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2456
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 2457
    return-void
.end method

.method private resetSupplicantLoopState()V
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 862
    return-void
.end method

.method private scheduleDisconnect()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1505
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1508
    :cond_0
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "bssid"

    .prologue
    .line 1630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1633
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1634
    if-eqz p1, :cond_0

    .line 1635
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1636
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1637
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2
    .parameter "newRssi"

    .prologue
    .line 1622
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1625
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1627
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private declared-synchronized setPowerMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2184
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 2199
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2204
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 2186
    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2189
    :pswitch_1
    :try_start_2
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 2190
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    if-gtz v0, :cond_0

    .line 2194
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    goto :goto_0

    .line 2203
    :cond_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 433
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 434
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 435
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 436
    return-void
.end method

.method private setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .parameter "stateName"

    .prologue
    .line 448
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 450
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 451
    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 461
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 462
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 463
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .locals 8
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 2729
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2730
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 2731
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2740
    .end local v5           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 2741
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2734
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2735
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 2736
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 2737
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2739
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private declared-synchronized unregisterDhcpObserver()V
    .locals 2

    .prologue
    .line 2487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$DhcpObserver;->stopWatching()V

    .line 2489
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpObserver:Landroid/net/wifi/WifiStateTracker$DhcpObserver;

    .line 2491
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    if-eqz v0, :cond_1

    .line 2492
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    :cond_1
    monitor-exit p0

    return-void

    .line 2487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateNetworkInfo()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 539
    return-void
.end method

.method private wifiManagerDisableNetwork(I)Z
    .locals 4
    .parameter "networkId"

    .prologue
    const-string v3, "WifiStateTracker"

    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, disabledNetwork:Z
    if-ltz p1, :cond_0

    .line 1398
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 1400
    if-eqz v0, :cond_0

    .line 1401
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    if-nez v0, :cond_1

    .line 1407
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disable network: invalid network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized addNetwork()I
    .locals 2

    .prologue
    .line 1903
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1904
    const/4 v0, -0x1

    .line 1906
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1903
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1988
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1989
    const/4 v0, 0x0

    .line 1991
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1988
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBlacklist()Z
    .locals 2

    .prologue
    .line 2000
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2001
    const/4 v0, 0x0

    .line 2003
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2000
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeSupplicantConnection()V
    .locals 1

    .prologue
    .line 1800
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    monitor-exit p0

    return-void

    .line 1800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectToSupplicant()Z
    .locals 1

    .prologue
    .line 1793
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1961
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1962
    const/4 v0, 0x0

    .line 1965
    :goto_0
    monitor-exit p0

    return v0

    .line 1964
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1965
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .locals 2

    .prologue
    .line 1879
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1880
    :cond_0
    const/4 v0, 0x0

    .line 1882
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1879
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectAndStop()Z
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 1679
    monitor-enter p0

    const/4 v0, 0x1

    .line 1680
    .local v0, ret:Z
    :try_start_0
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1682
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1684
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_1

    .line 1685
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    move-result v0

    .line 1689
    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    :cond_0
    monitor-exit p0

    return v0

    .line 1687
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1679
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableAllNetworks(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1943
    .local p1, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1952
    :cond_0
    monitor-exit p0

    return-void

    .line 1946
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1947
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1948
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1949
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1943
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1930
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1931
    const/4 v0, 0x0

    .line 1934
    :goto_0
    monitor-exit p0

    return v0

    .line 1933
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1934
    :cond_1
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRssiPolling(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 812
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eq v0, p1, :cond_0

    .line 813
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    .line 814
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 816
    :cond_0
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLinkSpeed()I
    .locals 2

    .prologue
    .line 2097
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    :cond_0
    const/4 v0, -0x1

    .line 2100
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "netId"
    .parameter "name"

    .prologue
    .line 2026
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2027
    const/4 v0, 0x0

    .line 2029
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2026
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumAllowedChannels()I
    .locals 2

    .prologue
    .line 2251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2252
    :cond_0
    const/4 v0, -0x1

    .line 2254
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getNumAllowedChannelsCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPowerMode()I
    .locals 2

    .prologue
    .line 2158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2159
    const/4 v0, -0x1

    .line 2161
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssi()I
    .locals 2

    .prologue
    .line 2073
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2074
    :cond_0
    const/4 v0, -0x1

    .line 2076
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2073
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssiApprox()I
    .locals 2

    .prologue
    .line 2085
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2086
    :cond_0
    const/4 v0, -0x1

    .line 2088
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResultsList()Ljava/util/List;
    .locals 1
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
    .line 1520
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 895
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 1393
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 897
    :pswitch_1
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 899
    monitor-enter p0

    .line 900
    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 901
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v13

    .line 902
    .local v13, macaddr:Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    if-eqz v13, :cond_1

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 907
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    .line 909
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    .line 913
    new-instance v7, Landroid/os/HandlerThread;

    const-string v23, "DHCP Handler Thread"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 914
    .local v7, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 915
    new-instance v23, Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 916
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    .line 917
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    .line 918
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 919
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 920
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 921
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 922
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 924
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v20

    .line 927
    .local v20, supplState:Landroid/net/wifi/SupplicantState;
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Connection to supplicant established, state="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const v23, 0xc369

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 939
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 942
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 944
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 945
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    .local v12, intent:Landroid/content/Intent;
    const-string v23, "connected"

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    .end local v12           #intent:Landroid/content/Intent;
    :cond_3
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 950
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 959
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->initializeMulticastFiltering()Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 962
    new-instance v23, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 964
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkIsBluetoothPlaying()V

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    goto/16 :goto_0

    .line 902
    .end local v7           #dhcpThread:Landroid/os/HandlerThread;
    .end local v13           #macaddr:Ljava/lang/String;
    .end local v20           #supplState:Landroid/net/wifi/SupplicantState;
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 952
    .restart local v7       #dhcpThread:Landroid/os/HandlerThread;
    .restart local v13       #macaddr:Ljava/lang/String;
    .restart local v20       #supplState:Landroid/net/wifi/SupplicantState;
    :cond_5
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    .line 971
    .end local v7           #dhcpThread:Landroid/os/HandlerThread;
    .end local v13           #macaddr:Ljava/lang/String;
    .end local v20           #supplState:Landroid/net/wifi/SupplicantState;
    :pswitch_2
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 972
    monitor-enter p0

    .line 973
    const/16 v23, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 974
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 977
    .local v8, died:Z
    :goto_2
    if-eqz v8, :cond_9

    .line 978
    const-string v23, "WifiStateTracker"

    const-string v24, "Supplicant died unexpectedly"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_3
    const v23, 0xc369

    if-eqz v8, :cond_a

    const/16 v24, 0x2

    :goto_4
    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->closeSupplicantConnection()V

    .line 989
    if-eqz v8, :cond_6

    .line 990
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 993
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Looper;->quit()V

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->closeBluetoothHeadset()V

    .line 995
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->unregisterDhcpObserver()V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 999
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1000
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v23, "connected"

    const/16 v24, 0x0

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    .end local v12           #intent:Landroid/content/Intent;
    :cond_7
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1005
    sget-object v23, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1006
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1007
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1008
    if-eqz v8, :cond_0

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 974
    .end local v8           #died:Z
    :catchall_1
    move-exception v23

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23

    .line 975
    :cond_8
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_2

    .line 980
    .restart local v8       #died:Z
    :cond_9
    const-string v23, "WifiStateTracker"

    const-string v24, "Connection to supplicant lost"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 986
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1016
    .end local v8           #died:Z
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1017
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_0

    .line 1022
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 1023
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    .line 1025
    .local v21, supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v16, v0

    .line 1026
    .local v16, newState:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 1031
    .local v6, currentState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v23

    and-int/lit8 v10, v23, 0x3f

    .line 1032
    .local v10, eventLogParam:I
    const v23, 0xc366

    move/from16 v0, v23

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1034
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Changing supplicant state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ==> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    move v14, v0

    .line 1044
    .local v14, networkId:I
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1045
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1051
    :cond_b
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_c

    sget-object v23, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 1053
    :cond_c
    const/16 v23, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1066
    :cond_d
    :goto_5
    const/4 v11, 0x0

    .line 1067
    .local v11, failedToAuthenticate:Z
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 1068
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mCertMayBeIncorrect:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    :cond_e
    const/16 v23, 0x1

    move/from16 v11, v23

    .line 1070
    :cond_f
    :goto_6
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 1071
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mCertMayBeIncorrect:Z

    .line 1077
    const/4 v9, 0x0

    .line 1078
    .local v9, disabledNetwork:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1080
    const-string v23, "WifiStateTracker"

    const-string v24, "Stop WPA supplicant loop and disable network"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    move-result v9

    .line 1086
    :cond_10
    if-eqz v9, :cond_13

    .line 1090
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto/16 :goto_0

    .line 1055
    .end local v9           #disabledNetwork:Z
    .end local v11           #failedToAuthenticate:Z
    :cond_11
    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 1056
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Bring up network interface "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " due to new state ASSOCIATED"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1068
    .restart local v11       #failedToAuthenticate:Z
    :cond_12
    const/16 v23, 0x0

    move/from16 v11, v23

    goto :goto_6

    .line 1091
    .restart local v9       #disabledNetwork:Z
    :cond_13
    move-object/from16 v0, v16

    move-object v1, v6

    if-ne v0, v1, :cond_14

    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1093
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1094
    sget-object v23, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 1096
    const/16 v23, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 1097
    .local v17, reconnectMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 1098
    :cond_15
    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1102
    .local v15, newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :goto_7
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1115
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_19

    .line 1116
    const-wide/16 v23, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1143
    .end local v15           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #reconnectMsg:Landroid/os/Message;
    :cond_16
    :goto_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1144
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v23, 0x3000

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1147
    const-string v23, "newState"

    move-object v0, v12

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1148
    if-eqz v11, :cond_17

    .line 1149
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to authenticate, disabling network "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    .line 1151
    const-string v23, "supplicantError"

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1100
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v17       #reconnectMsg:Landroid/os/Message;
    :cond_18
    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .restart local v15       #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    goto/16 :goto_7

    .line 1117
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    goto :goto_8

    .line 1119
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_8

    .line 1122
    .end local v15           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #reconnectMsg:Landroid/os/Message;
    :cond_1b
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 1123
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v23

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 1125
    :cond_1c
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_8

    .line 1127
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_8

    .line 1129
    :cond_1e
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 1134
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v6

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1f

    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    sget-object v23, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    sget-object v23, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    .line 1139
    :cond_1f
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_8

    .line 1171
    .end local v6           #currentState:Landroid/net/wifi/SupplicantState;
    .end local v9           #disabledNetwork:Z
    .end local v10           #eventLogParam:I
    .end local v11           #failedToAuthenticate:Z
    .end local v14           #networkId:I
    .end local v16           #newState:Landroid/net/wifi/SupplicantState;
    .end local v21           #supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    .line 1177
    .local v18, result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v23

    and-int/lit8 v10, v23, 0x3f

    .line 1178
    .restart local v10       #eventLogParam:I
    const v23, 0xc365

    move/from16 v0, v23

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1180
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "New network state is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .line 1186
    const-string v23, "WifiStateTracker"

    const-string v24, "Dropping event in scan-only mode"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1189
    :cond_20
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_21

    .line 1195
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 1205
    :cond_21
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1207
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_0

    .line 1211
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1212
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v23, v0

    if-nez v23, :cond_24

    .line 1214
    :cond_23
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1217
    :cond_24
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_26

    .line 1222
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v22, v0

    .line 1224
    .local v22, wasDisconnectPending:Z
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1230
    if-eqz v22, :cond_25

    .line 1231
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 1232
    .local v19, saveState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1233
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1236
    .end local v19           #saveState:Landroid/net/NetworkInfo$DetailedState;
    :cond_25
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1237
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1239
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 1240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_27

    .line 1241
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1246
    .end local v22           #wasDisconnectPending:Z
    :cond_26
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1243
    .restart local v22       #wasDisconnectPending:Z
    :cond_27
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_9

    .line 1250
    .end local v10           #eventLogParam:I
    .end local v18           #result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    .end local v22           #wasDisconnectPending:Z
    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_28

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1253
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->sendScanResultsAvailable()V

    .line 1258
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setScanMode(Z)Z

    goto/16 :goto_0

    .line 1262
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1264
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    goto/16 :goto_0

    .line 1269
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1270
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_0

    .line 1279
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v5, v23

    .line 1284
    .local v5, BSSID:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMaxDhcpRetries()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_29

    .line 1287
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed reconnect count: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Disabling "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1292
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_0

    .line 1279
    .end local v5           #BSSID:Ljava/lang/String;
    :cond_2a
    const/16 v23, 0x0

    move-object/from16 v5, v23

    goto :goto_a

    .line 1302
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1306
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1307
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->handleConfigurationChanged()V

    .line 1310
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->registerDhcpObserver()V

    goto/16 :goto_0

    .line 1315
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1319
    const v23, 0xc368

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1320
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1322
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1323
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    goto/16 :goto_0

    .line 1333
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1336
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->handleConfigurationChanged()V

    goto/16 :goto_0

    .line 1344
    :pswitch_d
    const v23, 0xc367

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1346
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 1381
    :goto_b
    monitor-enter p0

    .line 1382
    const/16 v23, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1383
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v23

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v23

    .line 1353
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    .line 1354
    monitor-enter p0

    .line 1355
    :try_start_5
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v13

    .line 1356
    .restart local v13       #macaddr:Ljava/lang/String;
    if-eqz v13, :cond_2b

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1359
    :cond_2b
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1360
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_2c

    .line 1361
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    .line 1367
    :goto_c
    monitor-exit p0

    goto :goto_b

    .end local v13           #macaddr:Ljava/lang/String;
    :catchall_3
    move-exception v23

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v23

    .line 1365
    .restart local v13       #macaddr:Ljava/lang/String;
    :cond_2c
    const/16 v23, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_c

    .line 1370
    .end local v13           #macaddr:Ljava/lang/String;
    :pswitch_f
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    goto :goto_b

    .line 1373
    :pswitch_10
    const-string v23, "WifiStateTracker"

    const-string v24, "Wifi Driver reports HUNG - reloading."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_b

    .line 1387
    :pswitch_11
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    goto/16 :goto_0

    .line 1390
    :pswitch_12
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mCertMayBeIncorrect:Z

    goto/16 :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_3
        :pswitch_12
    .end packed-switch

    .line 1346
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public interpretScanResultsAvailable()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2340
    iget-boolean v6, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v6, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return-void

    .line 2342
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2344
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 2345
    .local v5, state:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_2

    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_5

    .line 2349
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 2350
    .local v4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_5

    .line 2351
    const/4 v2, 0x0

    .line 2352
    .local v2, numOpenNetworks:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v9

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 2353
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 2355
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2356
    add-int/lit8 v2, v2, 0x1

    .line 2352
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2360
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-lez v2, :cond_5

    .line 2361
    iget v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 2369
    invoke-virtual {p0, v9, v2, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 2377
    .end local v0           #i:I
    .end local v2           #numOpenNetworks:I
    .end local v4           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method public isAnyNetworkDisabled()Z
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 2

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 520
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 519
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isConnectionCompleted()Z
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isDriverStopped()Z
    .locals 2

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listNetworks()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2012
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2013
    const/4 v0, 0x0

    .line 2015
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2012
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadApDriver()Z
    .locals 1

    .prologue
    .line 1755
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadApDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDriver()Z
    .locals 1

    .prologue
    .line 1737
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyCertMayBeIncorrect()V
    .locals 1

    .prologue
    .line 571
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 572
    return-void
.end method

.method notifyDriverHung()V
    .locals 3

    .prologue
    .line 652
    const/16 v0, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 653
    return-void
.end method

.method notifyDriverStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    const/16 v0, 0xe

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 645
    return-void
.end method

.method notifyDriverStopped()V
    .locals 3

    .prologue
    .line 635
    const/16 v0, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 636
    return-void
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .locals 1

    .prologue
    .line 563
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 564
    return-void
.end method

.method notifyScanResultsAvailable()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 619
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 620
    return-void
.end method

.method notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 3
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    .line 589
    const/4 v1, 0x3

    new-instance v2, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;-><init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    return-void
.end method

.method notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 3
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    .line 606
    const/4 v1, 0x4

    new-instance v2, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 610
    return-void
.end method

.method notifySupplicantConnection()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 580
    return-void
.end method

.method notifySupplicantLost()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 628
    return-void
.end method

.method public declared-synchronized ping()Z
    .locals 2

    .prologue
    .line 1809
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1810
    const/4 v0, 0x0

    .line 1812
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reassociate()Z
    .locals 2

    .prologue
    .line 1974
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1975
    :cond_0
    const/4 v0, 0x0

    .line 1977
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1974
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1659
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_1

    .line 1660
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v2

    .line 1667
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1664
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1667
    goto :goto_0
.end method

.method public declared-synchronized reconnectCommand()Z
    .locals 2

    .prologue
    .line 1891
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    :cond_0
    const/4 v0, 0x0

    .line 1894
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1891
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method public declared-synchronized reloadConfig()Z
    .locals 2

    .prologue
    .line 2305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2306
    const/4 v0, 0x0

    .line 2308
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reloadConfigCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetwork(I)Z
    .locals 2
    .parameter "networkId"

    .prologue
    .line 1916
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1917
    const/4 v0, 0x0

    .line 1919
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1533
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1534
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public resetConnections(Z)V
    .locals 3
    .parameter "disableInterface"

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    .line 1463
    const-string v0, "WifiStateTracker"

    const-string v0, "Reset connections and stopping DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1465
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1466
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1472
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1479
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->unregisterDhcpObserver()V

    .line 1480
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1481
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1483
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1484
    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_2
    if-eqz p1, :cond_0

    .line 1492
    const-string v0, "WifiStateTracker"

    const-string v0, "Disabling interface"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized restart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1695
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1697
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1698
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1700
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveConfig()Z
    .locals 2

    .prologue
    .line 2293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2294
    const/4 v0, 0x0

    .line 2296
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scan(Z)Z
    .locals 2
    .parameter "forceActive"

    .prologue
    .line 1822
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1823
    :cond_0
    const/4 v0, 0x0

    .line 1825
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanResults()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1852
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1853
    :cond_0
    const/4 v0, 0x0

    .line 1855
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1852
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothCoexistenceMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 2267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2268
    :cond_0
    const/4 v0, 0x0

    .line 2270
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothScanMode(Z)V
    .locals 2
    .parameter "isBluetoothPlaying"

    .prologue
    .line 2281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2284
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHighPerfMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    if-eq v0, p1, :cond_0

    .line 785
    if-eqz p1, :cond_1

    .line 786
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V

    .line 792
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    .line 793
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "high performance mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    :cond_0
    monitor-exit p0

    return-void

    .line 789
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2041
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2042
    const/4 v0, 0x0

    .line 2044
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNotificationVisible(ZIZI)V
    .locals 10
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x108043f

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2398
    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 2445
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    if-eqz p1, :cond_3

    .line 2406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 2410
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 2414
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    .line 2415
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2416
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 2417
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2418
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2422
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2424
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2426
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2427
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2431
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2442
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    .local v1, message:Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    int-to-long v4, p4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2444
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    goto :goto_0

    .line 2437
    .end local v1           #message:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2439
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_1
.end method

.method public declared-synchronized setNumAllowedChannels()Z
    .locals 3

    .prologue
    .line 2213
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 2214
    :cond_0
    const/4 v1, 0x0

    .line 2226
    :goto_0
    monitor-exit p0

    return v1

    .line 2217
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_num_allowed_channels"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 2220
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2221
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_2
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    if-eqz v1, :cond_2

    .line 2222
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2226
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 2213
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNumAllowedChannels(I)Z
    .locals 2
    .parameter "numChannels"

    .prologue
    .line 2238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2239
    :cond_0
    const/4 v0, 0x0

    .line 2242
    :goto_0
    monitor-exit p0

    return v0

    .line 2241
    :cond_1
    :try_start_1
    iput p1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 2242
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 2312
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setScanMode(Z)Z
    .locals 2
    .parameter "isScanModeActive"

    .prologue
    .line 1864
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    :cond_0
    const/4 v0, 0x0

    .line 1870
    :goto_0
    monitor-exit p0

    return v0

    .line 1867
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    if-eq v0, p1, :cond_2

    .line 1868
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1870
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanOnlyMode(Z)V
    .locals 4
    .parameter "scanOnlyMode"

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    if-eq v1, p1, :cond_0

    .line 720
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .line 722
    .local v0, scanType:I
    :goto_0
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan-only mode changing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scanType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    .line 725
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    if-eqz p1, :cond_2

    .line 727
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    .end local v0           #scanType:I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 720
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 729
    .restart local v0       #scanType:I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 719
    .end local v0           #scanType:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScanResultHandling(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 1838
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1839
    const/4 v0, 0x0

    .line 1841
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1838
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanResultsList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1524
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    monitor-exit p0

    return-void

    .line 1524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuspendModeOptimizations(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 758
    monitor-enter p0

    if-nez p1, :cond_1

    .line 759
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 770
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 761
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 762
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    if-gtz v0, :cond_0

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 774
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setWifiState(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1708
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1709
    return-void
.end method

.method public declared-synchronized startDriver()Z
    .locals 2

    .prologue
    .line 2109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2110
    const/4 v0, 0x0

    .line 2112
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventLoop()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 500
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    .line 496
    return-void
.end method

.method public declared-synchronized startPacketFiltering()Z
    .locals 2

    .prologue
    .line 2135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2136
    :cond_0
    const/4 v0, 0x0

    .line 2138
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSupplicant()Z
    .locals 1

    .prologue
    .line 1774
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2322
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized status()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2061
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2062
    const/4 v0, 0x0

    .line 2064
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2061
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDriver()Z
    .locals 2

    .prologue
    .line 2123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2124
    :cond_0
    const/4 v0, 0x0

    .line 2126
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketFiltering()Z
    .locals 2

    .prologue
    .line 2147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2148
    :cond_0
    const/4 v0, 0x0

    .line 2150
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()Z
    .locals 1

    .prologue
    .line 1783
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2332
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1643
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v0, :cond_1

    .line 1644
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v1

    .line 1651
    :goto_0
    return v0

    .line 1648
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1651
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2461
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2462
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2463
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2464
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 2465
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2469
    :goto_0
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2470
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2471
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", scanModeActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2467
    :cond_0
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public declared-synchronized unloadApDriver()Z
    .locals 1

    .prologue
    .line 1764
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadApDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unloadDriver()Z
    .locals 1

    .prologue
    .line 1746
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "newSource"

    .prologue
    .line 681
    if-eqz p1, :cond_0

    .line 682
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 684
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 685
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 691
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 696
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    goto :goto_0

    .line 699
    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 700
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 703
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
