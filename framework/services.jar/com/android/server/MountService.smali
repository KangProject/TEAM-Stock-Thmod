.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutomountEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBooted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLegacyState:Ljava/lang/String;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/PackageManagerService;

.field private mReady:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mUmsEnabling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 255
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "VoldConnector"

    .line 1079
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 149
    const-string v1, "removed"

    iput-object v1, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 155
    iput-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 156
    iput-boolean v5, p0, Lcom/android/server/MountService;->mReady:Z

    .line 157
    iput-boolean v5, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mAutomountEnabled:Ljava/util/Map;

    .line 168
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 258
    new-instance v1, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 275
    iput-object v6, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 444
    new-instance v1, Lcom/android/server/MountService$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1080
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1083
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    .line 1085
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1088
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MountService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1089
    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1090
    new-instance v1, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1093
    new-instance v1, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1099
    const-string v1, "simulator"

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1100
    iput-boolean v7, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1101
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1115
    :goto_99
    return-void

    .line 1110
    :cond_9a
    new-instance v1, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    invoke-direct {v1, p0, v2, v3, v8}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1112
    iput-boolean v5, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1113
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "VoldConnector"

    invoke-direct {v0, v1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1114
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_99
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->setAutomountEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isAutomountEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/MountService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    return-object p1
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1658
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1660
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 1661
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 1689
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    return-void

    .line 1664
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 1665
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1666
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1675
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 1680
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1681
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1682
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    :cond_57
    throw v1
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 9
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 962
    :try_start_1
    const-string v3, "volume format %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, cmd:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_12
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_12} :catch_14

    move v3, v6

    .line 972
    .end local v0           #cmd:Ljava/lang/String;
    :goto_13
    return v3

    .line 965
    :catch_14
    move-exception v3

    move-object v2, v3

    .line 966
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 967
    .local v1, code:I
    const/16 v3, 0x191

    if-ne v1, v3, :cond_20

    .line 968
    const/4 v3, -0x2

    goto :goto_13

    .line 969
    :cond_20
    const/16 v3, 0x193

    if-ne v1, v3, :cond_26

    .line 970
    const/4 v3, -0x4

    goto :goto_13

    .line 972
    :cond_26
    const/4 v3, -0x1

    goto :goto_13
.end method

.method private doGetShareMethodAvailable(Ljava/lang/String;)Z
    .registers 15
    .parameter "method"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v11, "MountService"

    .line 833
    :try_start_4
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_1c} :catch_51

    move-result-object v5

    .line 839
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 840
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, tok:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_73

    .line 842
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed response to share status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 863
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :goto_50
    return v7

    .line 834
    :catch_51
    move-exception v7

    move-object v1, v7

    .line 835
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to determine whether share method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is available."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 836
    goto :goto_50

    .line 848
    .end local v1           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_73
    const/4 v7, 0x0

    :try_start_74
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_79} :catch_8b

    move-result v0

    .line 853
    .local v0, code:I
    const/16 v7, 0xd2

    if-ne v0, v7, :cond_a2

    .line 854
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "available"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a0

    move v7, v12

    .line 855
    goto :goto_50

    .line 849
    .end local v0           #code:I
    :catch_8b
    move-exception v7

    move-object v4, v7

    .line 850
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "MountService"

    const-string v7, "Error parsing code %s"

    new-array v8, v12, [Ljava/lang/Object;

    aget-object v9, v6, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 851
    goto :goto_50

    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_a0
    move v7, v10

    .line 856
    goto :goto_50

    .line 858
    :cond_a2
    const-string v7, "MountService"

    const-string v7, "Unexpected response code %d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 859
    goto :goto_50

    .line 862
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_b7
    const-string v7, "MountService"

    const-string v7, "Got an empty response"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 863
    goto :goto_50
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "path"
    .parameter "method"

    .prologue
    .line 978
    const-string v8, "volume shared %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, cmd:Ljava/lang/String;
    :try_start_f
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_14} :catch_59

    move-result-object v6

    .line 988
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 989
    .local v4, line:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 990
    .local v7, tok:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_7f

    .line 991
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed response to volume shared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " command"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v8, 0x0

    .line 1010
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_58
    return v8

    .line 983
    :catch_59
    move-exception v8

    move-object v2, v8

    .line 984
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read response to volume shared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v8, 0x0

    goto :goto_58

    .line 997
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_7f
    const/4 v8, 0x0

    :try_start_80
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_85} :catch_94

    move-result v1

    .line 1002
    .local v1, code:I
    const/16 v8, 0xd4

    if-ne v1, v8, :cond_ac

    .line 1003
    const-string v8, "enabled"

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_58

    .line 998
    .end local v1           #code:I
    :catch_94
    move-exception v8

    move-object v5, v8

    .line 999
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "MountService"

    const-string v9, "Error parsing code %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v8, 0x0

    goto :goto_58

    .line 1005
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_ac
    const-string v8, "MountService"

    const-string v9, "Unexpected response code %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v8, 0x0

    goto :goto_58

    .line 1009
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_c3
    const-string v8, "MountService"

    const-string v9, "Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v8, 0x0

    goto :goto_58
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 11
    .parameter "path"

    .prologue
    const-string v8, "file://"

    .line 867
    const/4 v3, 0x0

    .line 871
    .local v3, rc:I
    :try_start_3
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume mount %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_14} :catch_15

    .line 911
    :cond_14
    :goto_14
    return v3

    .line 872
    :catch_15
    move-exception v4

    move-object v1, v4

    .line 876
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, 0x0

    .line 877
    .local v2, in:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 878
    .local v0, code:I
    const/16 v4, 0x191

    if-ne v0, v4, :cond_29

    .line 882
    const/4 v3, -0x2

    .line 906
    :goto_21
    if-eqz v2, :cond_14

    .line 907
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14

    .line 883
    :cond_29
    const/16 v4, 0x192

    if-ne v0, v4, :cond_52

    .line 888
    const-string v4, "nofs"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    new-instance v2, Landroid/content/Intent;

    .end local v2           #in:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_NOFS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 890
    .restart local v2       #in:Landroid/content/Intent;
    const/4 v3, -0x3

    goto :goto_21

    .line 891
    :cond_52
    const/16 v4, 0x193

    if-ne v0, v4, :cond_7b

    .line 896
    const-string v4, "unmountable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v2, Landroid/content/Intent;

    .end local v2           #in:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 898
    .restart local v2       #in:Landroid/content/Intent;
    const/4 v3, -0x4

    goto :goto_21

    .line 900
    :cond_7b
    const/4 v3, -0x1

    goto :goto_21
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 532
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "cdrom"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "volume %sshare %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_3e

    const-string v5, ""

    :goto_2e
    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 542
    :goto_3d
    return-void

    .line 537
    :cond_3e
    const-string v5, "un"
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_40} :catch_41

    goto :goto_2e

    .line 539
    :catch_41
    move-exception v1

    move-object v0, v1

    .line 540
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method private doUnmountVolume(Ljava/lang/String;Z)I
    .registers 12
    .parameter "path"
    .parameter "force"

    .prologue
    const/16 v8, 0x194

    const/4 v7, 0x0

    .line 924
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v8

    .line 955
    :goto_10
    return v2

    .line 934
    :cond_11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 937
    iget-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v2, v7, v7}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 939
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume unmount %s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    if-eqz p2, :cond_40

    const-string v6, " force"

    :goto_2c
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 942
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_38} :catch_46

    .line 943
    :try_start_38
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 944
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_43

    move v2, v7

    .line 945
    goto :goto_10

    .line 939
    :cond_40
    :try_start_40
    const-string v6, ""
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_40 .. :try_end_42} :catch_46

    goto :goto_2c

    .line 944
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v3
    :try_end_46
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_45 .. :try_end_46} :catch_46

    .line 946
    :catch_46
    move-exception v2

    move-object v1, v2

    .line 949
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 950
    .local v0, code:I
    if-ne v0, v8, :cond_50

    .line 951
    const/4 v2, -0x5

    goto :goto_10

    .line 952
    :cond_50
    const/16 v2, 0x195

    if-ne v0, v2, :cond_56

    .line 953
    const/4 v2, -0x7

    goto :goto_10

    .line 955
    :cond_56
    const/4 v2, -0x1

    goto :goto_10
.end method

.method private getUmsEnabling()Z
    .registers 3

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1202
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v0

    return v1

    .line 1203
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isAutomountEnabled(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/MountService;->mAutomountEnabled:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 7
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1568
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_8

    move v1, v3

    .line 1583
    :goto_7
    return v1

    .line 1572
    :cond_8
    if-nez p1, :cond_c

    move v1, v2

    .line 1573
    goto :goto_7

    .line 1576
    :cond_c
    iget-object v1, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/PackageManagerService;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    .line 1583
    .local v0, packageUid:I
    if-ne p2, v0, :cond_16

    move v1, v3

    goto :goto_7

    :cond_16
    move v1, v2

    goto :goto_7
.end method

.method private notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    .registers 12
    .parameter "method"
    .parameter "avail"

    .prologue
    const/4 v8, 0x1

    const-string v7, "MountService"

    .line 1014
    const-string v5, "ums"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1015
    const-string v5, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported share method {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_29
    :goto_29
    return-void

    .line 1019
    :cond_2a
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1020
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v8

    .local v2, i:I
    :goto_35
    if-ltz v2, :cond_63

    .line 1021
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_56

    .line 1023
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3f
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p2}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_59

    .line 1020
    :goto_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 1024
    :catch_47
    move-exception v6

    move-object v4, v6

    .line 1025
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_49
    const-string v6, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_44

    .line 1031
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_56
    move-exception v6

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_56

    throw v6

    .line 1027
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_59
    move-exception v6

    move-object v1, v6

    .line 1028
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5b
    const-string v6, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 1031
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_63
    monitor-exit v5
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_56

    .line 1033
    iget-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    if-ne v5, v8, :cond_8a

    .line 1034
    invoke-direct {p0, p2}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1039
    :goto_6b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, path:Ljava/lang/String;
    if-nez p2, :cond_29

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1044
    new-instance v5, Lcom/android/server/MountService$4;

    invoke-direct {v5, p0, v3}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$4;->start()V

    goto :goto_29

    .line 1036
    .end local v3           #path:Ljava/lang/String;
    :cond_8a
    iput-boolean p2, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_6b
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 767
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, vs:Ljava/lang/String;
    const/4 v0, 0x0

    .line 772
    .local v0, in:Landroid/content/Intent;
    const/4 v2, 0x7

    if-ne p3, v2, :cond_2d

    if-eq p4, p3, :cond_2d

    .line 774
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    :cond_2d
    const/4 v2, -0x1

    if-ne p4, v2, :cond_38

    .line 825
    :cond_30
    :goto_30
    if-eqz v0, :cond_37

    .line 826
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 828
    :cond_37
    :goto_37
    return-void

    .line 779
    :cond_38
    if-eqz p4, :cond_30

    .line 781
    const/4 v2, 0x1

    if-ne p4, v2, :cond_7f

    .line 786
    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "nofs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "unmountable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v2

    if-nez v2, :cond_30

    .line 791
    const-string v2, "unmounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto :goto_30

    .line 794
    :cond_7f
    const/4 v2, 0x2

    if-eq p4, v2, :cond_30

    .line 795
    const/4 v2, 0x3

    if-ne p4, v2, :cond_a9

    .line 797
    const-string v2, "checking"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto :goto_30

    .line 799
    :cond_a9
    const/4 v2, 0x4

    if-ne p4, v2, :cond_d7

    .line 801
    const-string v2, "mounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 803
    .restart local v0       #in:Landroid/content/Intent;
    const-string v2, "read-only"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_30

    .line 804
    :cond_d7
    const/4 v2, 0x5

    if-ne p4, v2, :cond_fa

    .line 805
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto/16 :goto_30

    .line 806
    :cond_fa
    const/4 v2, 0x6

    if-eq p4, v2, :cond_30

    .line 807
    const/4 v2, 0x7

    if-ne p4, v2, :cond_14d

    .line 810
    const-string v2, "unmounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 812
    .restart local v0       #in:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    const-string v2, "shared"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto/16 :goto_30

    .line 818
    :cond_14d
    const/16 v2, 0x8

    if-ne p4, v2, :cond_15a

    .line 819
    const-string v2, "MountService"

    const-string v3, "Live shared mounts not supported yet!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 822
    :cond_15a
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled VolumeState {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .parameter "obbState"

    .prologue
    .line 1693
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1694
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1695
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 1696
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1697
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 1699
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1700
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    return-void
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_f

    const-string v2, "android.intent.action.UMS_CONNECTED"

    :goto_8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1066
    return-void

    .line 1064
    :cond_f
    const-string v2, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_8
.end method

.method private setAutomountEnabled(Ljava/lang/String;Z)V
    .registers 5
    .parameter "path"
    .parameter "enabled"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/MountService;->mAutomountEnabled:Ljava/util/Map;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1208
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1209
    monitor-exit v0

    .line 1210
    return-void

    .line 1209
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "MountService"

    .line 545
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 546
    const-string v5, "MountService"

    const-string v5, "Multiple volumes not currently supported"

    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_19
    return-void

    .line 550
    :cond_1a
    iget-object v5, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 551
    const-string v5, "MountService"

    const-string v5, "Duplicate state transition (%s -> %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object p2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 555
    :cond_37
    const-string v5, "unmounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 557
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 564
    iget-object v5, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    .line 572
    .local v3, oldState:Ljava/lang/String;
    iput-object p2, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    .line 574
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 575
    :try_start_57
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v10

    .local v2, i:I
    :goto_5f
    if-ltz v2, :cond_9b

    .line 576
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_8e

    .line 578
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_69
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_8e
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6e} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_91

    .line 575
    :goto_6e
    add-int/lit8 v2, v2, -0x1

    goto :goto_5f

    .line 566
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v3           #oldState:Ljava/lang/String;
    :cond_71
    const-string v5, "mounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 568
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v5, v10, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_50

    .line 579
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    .restart local v3       #oldState:Ljava/lang/String;
    :catch_7f
    move-exception v6

    move-object v4, v6

    .line 580
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_81
    const-string v6, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6e

    .line 586
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_8e
    move-exception v6

    monitor-exit v5
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_8e

    throw v6

    .line 582
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_91
    move-exception v6

    move-object v1, v6

    .line 583
    .local v1, ex:Ljava/lang/Exception;
    :try_start_93
    const-string v6, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 586
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_8e

    goto/16 :goto_19
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .parameter "perm"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1070
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_1a
    return-void
.end method

.method private waitForReady()V
    .registers 4

    .prologue
    .line 425
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-nez v1, :cond_b

    .line 426
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_5
    if-lez v0, :cond_14

    .line 427
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-eqz v1, :cond_c

    .line 434
    .end local v0           #retries:I
    :cond_b
    return-void

    .line 430
    .restart local v0       #retries:I
    :cond_c
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 426
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 432
    :cond_14
    const-string v1, "MountService"

    const-string v2, "Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOnNotMounted()V
    .registers 3

    .prologue
    .line 1342
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1343
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList() called when storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_13
    return-void
.end method


# virtual methods
.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 13
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 1361
    const-string v3, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1363
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1365
    const/4 v2, 0x0

    .line 1366
    .local v2, rc:I
    const-string v3, "asec create %s %d %s %s %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, cmd:Ljava/lang/String;
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2c .. :try_end_31} :catch_3d

    .line 1373
    :goto_31
    if-nez v2, :cond_3c

    .line 1374
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1375
    :try_start_36
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1376
    monitor-exit v3

    .line 1378
    :cond_3c
    return v2

    .line 1369
    :catch_3d
    move-exception v3

    move-object v1, v3

    .line 1370
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_31

    .line 1376
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_41
    move-exception v4

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_41

    throw v4
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .parameter "id"
    .parameter "force"

    .prologue
    .line 1399
    const-string v3, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1400
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1401
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1409
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 1411
    const/4 v2, 0x0

    .line 1413
    .local v2, rc:I
    :try_start_13
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec destroy %s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    if-eqz p2, :cond_3f

    const-string v7, " force"

    :goto_22
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_2b} :catch_42

    .line 1423
    :goto_2b
    if-nez v2, :cond_3e

    .line 1424
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1425
    :try_start_30
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1426
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1428
    :cond_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_50

    .line 1431
    :cond_3e
    return v2

    .line 1413
    :cond_3f
    :try_start_3f
    const-string v7, ""
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_41} :catch_42

    goto :goto_22

    .line 1414
    :catch_42
    move-exception v3

    move-object v1, v3

    .line 1415
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1416
    .local v0, code:I
    const/16 v3, 0x195

    if-ne v0, v3, :cond_4e

    .line 1417
    const/4 v2, -0x7

    goto :goto_2b

    .line 1419
    :cond_4e
    const/4 v2, -0x1

    goto :goto_2b

    .line 1428
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v9, "android.permission.DUMP"

    .line 2131
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_41

    .line 2132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    .end local p0
    :goto_40
    return-void

    .line 2138
    .restart local p0
    :cond_41
    iget-object v8, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v8

    .line 2139
    :try_start_44
    const-string v7, "  mObbMounts:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    iget-object v7, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2142
    .local v0, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_97

    .line 2143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2144
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v7, "    Key="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2146
    .local v6, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MountService$ObbState;

    .line 2147
    .local v5, obbState:Lcom/android/server/MountService$ObbState;
    const-string v7, "      "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b

    .line 2159
    .end local v0           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v6           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local p0
    :catchall_94
    move-exception v7

    monitor-exit v8
    :try_end_96
    .catchall {:try_start_44 .. :try_end_96} :catchall_94

    throw v7

    .line 2151
    .restart local v0       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local p0
    :cond_97
    :try_start_97
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    const-string v7, "  mObbPathToStateMap:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    iget-object v7, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2154
    .end local p0
    .local v4, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_ab
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 2155
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2156
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2157
    const-string v7, " -> "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/MountService$ObbState;

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    .line 2159
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_d8
    monitor-exit v8
    :try_end_d9
    .catchall {:try_start_97 .. :try_end_d9} :catchall_94

    goto/16 :goto_40
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 8
    .parameter "id"

    .prologue
    .line 1382
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1383
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1385
    const/4 v1, 0x0

    .line 1387
    .local v1, rc:I
    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec finalize %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 1395
    :goto_1a
    return v1

    .line 1392
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 1393
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1565
    return-void
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 1310
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1311
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1313
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "filename"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "Unexpected response code %d"

    .line 1587
    if-nez p1, :cond_e

    .line 1588
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "filename cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1591
    :cond_e
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1592
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1595
    :try_start_14
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "obb path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1596
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1597
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1598
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_60

    .line 1599
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14 .. :try_end_54} :catch_54

    .line 1602
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_54
    move-exception v4

    move-object v1, v4

    .line 1603
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1604
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_64

    .line 1605
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_5f
    return-object v4

    .line 1601
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_60
    const/4 v4, 0x1

    :try_start_61
    aget-object v4, v3, v4
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_61 .. :try_end_63} :catch_54

    goto :goto_5f

    .line 1607
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_64
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1348
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1349
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1350
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1353
    :try_start_b
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec list"

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_14} :catch_16

    move-result-object v1

    .line 1355
    :goto_15
    return-object v1

    .line 1354
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 1355
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_15
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "Unexpected response code %d"

    .line 1541
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1542
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1543
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1546
    :try_start_f
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1547
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1548
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1549
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_69

    .line 1550
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_4f} :catch_4f

    .line 1553
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_4f
    move-exception v4

    move-object v1, v4

    .line 1554
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1555
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_6d

    .line 1556
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1552
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_69
    const/4 v4, 0x1

    :try_start_6a
    aget-object v4, v3, v4
    :try_end_6c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6a .. :try_end_6c} :catch_4f

    return-object v4

    .line 1558
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_6d
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 15
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    const-string v12, "MountService"

    .line 1317
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1318
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1320
    :try_start_b
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage users %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x70

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1324
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 1325
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    array-length v6, v4

    if-ge v2, v6, :cond_54

    .line 1326
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2d} :catch_56

    move-result-object v5

    .line 1328
    .local v5, tok:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_2f
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_37} :catch_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2f .. :try_end_37} :catch_56

    .line 1325
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1329
    :catch_3a
    move-exception v6

    move-object v3, v6

    .line 1330
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_3c
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v6, 0x0

    new-array v6, v6, [I
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3c .. :try_end_53} :catch_56

    .line 1337
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :goto_53
    return-object v6

    .restart local v0       #data:[I
    .restart local v2       #i:I
    .restart local v4       #r:[Ljava/lang/String;
    :cond_54
    move-object v6, v0

    .line 1334
    goto :goto_53

    .line 1335
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v4           #r:[Ljava/lang/String;
    :catch_56
    move-exception v6

    move-object v1, v6

    .line 1336
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v6, "Failed to retrieve storage users list"

    invoke-static {v12, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    new-array v6, v11, [I

    goto :goto_53
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "mountPoint"

    .prologue
    .line 1276
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1277
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolumeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Unknown volume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1281
    :cond_32
    iget-object v0, p0, Lcom/android/server/MountService;->mLegacyState:Ljava/lang/String;

    return-object v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "filename"

    .prologue
    .line 1613
    if-nez p1, :cond_a

    .line 1614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :cond_a
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 1618
    :try_start_d
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1619
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 1505
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1507
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1509
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1510
    :try_start_e
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1511
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .registers 2

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1215
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1216
    const/4 v0, 0x1

    .line 1218
    :goto_a
    return v0

    :cond_b
    const-string v0, "ums"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 3

    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1260
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ums"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 12
    .parameter "filename"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1624
    if-nez p1, :cond_a

    .line 1625
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1628
    :cond_a
    if-nez p3, :cond_14

    .line 1629
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1632
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1633
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 1634
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 1635
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1639
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 1435
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1436
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1437
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1439
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 1440
    :try_start_e
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1441
    const/4 v5, -0x6

    monitor-exit v4

    move v4, v5

    .line 1461
    :goto_19
    return v4

    .line 1443
    :cond_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_44

    .line 1445
    const/4 v3, 0x0

    .line 1446
    .local v3, rc:I
    const-string v4, "asec mount %s %s %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, cmd:Ljava/lang/String;
    :try_start_32
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_37
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_32 .. :try_end_37} :catch_47

    .line 1456
    :cond_37
    :goto_37
    if-nez v3, :cond_42

    .line 1457
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 1458
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1459
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_53

    :cond_42
    move v4, v3

    .line 1461
    goto :goto_19

    .line 1443
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_44
    move-exception v5

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v5

    .line 1449
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #rc:I
    :catch_47
    move-exception v4

    move-object v2, v4

    .line 1450
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1451
    .local v1, code:I
    const/16 v4, 0x195

    if-eq v1, v4, :cond_37

    .line 1452
    const/4 v3, -0x1

    goto :goto_37

    .line 1459
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_53
    move-exception v5

    :try_start_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v5
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 1285
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 2

    .prologue
    .line 598
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 656
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 18
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 662
    const/4 v4, 0x0

    .line 676
    .local v4, in:Landroid/content/Intent;
    const/16 v9, 0x25d

    if-ne p1, v9, :cond_26

    .line 682
    const/4 v9, 0x2

    aget-object v9, p3, v9

    const/4 v10, 0x3

    aget-object v10, p3, v10

    const/4 v11, 0x7

    aget-object v11, p3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xa

    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 760
    :cond_1d
    :goto_1d
    if-eqz v4, :cond_24

    .line 761
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    :cond_24
    const/4 v9, 0x1

    :goto_25
    return v9

    .line 685
    :cond_26
    const/16 v9, 0x26c

    if-ne p1, v9, :cond_3e

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, avail:Z
    const/4 v9, 0x5

    aget-object v9, p3, v9

    const-string v10, "available"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 689
    const/4 v0, 0x1

    .line 691
    :cond_37
    const/4 v9, 0x3

    aget-object v9, p3, v9

    invoke-direct {p0, v9, v0}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_1d

    .line 692
    .end local v0           #avail:Z
    :cond_3e
    const/16 v9, 0x276

    if-eq p1, v9, :cond_4a

    const/16 v9, 0x277

    if-eq p1, v9, :cond_4a

    const/16 v9, 0x278

    if-ne p1, v9, :cond_15b

    .line 698
    :cond_4a
    const/4 v9, 0x2

    aget-object v5, p3, v9

    .line 699
    .local v5, label:Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v8, p3, v9

    .line 700
    .local v8, path:Ljava/lang/String;
    const/4 v6, -0x1

    .line 701
    .local v6, major:I
    const/4 v7, -0x1

    .line 704
    .local v7, minor:I
    const/4 v9, 0x6

    :try_start_53
    aget-object v9, p3, v9

    const/4 v10, 0x1

    const/4 v11, 0x6

    aget-object v11, p3, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, devComp:Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, devTok:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 707
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_76} :catch_8a

    move-result v7

    .line 712
    .end local v1           #devComp:Ljava/lang/String;
    .end local v2           #devTok:[Ljava/lang/String;
    :goto_77
    const/16 v9, 0x276

    if-ne p1, v9, :cond_94

    .line 713
    invoke-direct {p0, v8}, Lcom/android/server/MountService;->isAutomountEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 714
    new-instance v9, Lcom/android/server/MountService$3;

    invoke-direct {v9, p0, v8}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/MountService$3;->start()V

    goto :goto_1d

    .line 708
    :catch_8a
    move-exception v9

    move-object v3, v9

    .line 709
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Failed to parse major/minor"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 727
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_94
    const/16 v9, 0x277

    if-ne p1, v9, :cond_f3

    .line 731
    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "bad_removal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 732
    const/4 v9, 0x1

    goto :goto_25

    .line 736
    :cond_a6
    const-string v9, "unmounted"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 738
    .restart local v4       #in:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 741
    const-string v9, "removed"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #in:Landroid/content/Intent;
    goto/16 :goto_1d

    .line 743
    :cond_f3
    const/16 v9, 0x278

    if-ne p1, v9, :cond_144

    .line 746
    const-string v9, "unmounted"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 748
    .restart local v4       #in:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 751
    const-string v9, "bad_removal"

    invoke-direct {p0, v8, v9}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #in:Landroid/content/Intent;
    goto/16 :goto_1d

    .line 754
    :cond_144
    const-string v9, "MountService"

    const-string v10, "Unknown code {%d}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 757
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #major:I
    .end local v7           #minor:I
    .end local v8           #path:Ljava/lang/String;
    :cond_15b
    const/4 v9, 0x0

    goto/16 :goto_25
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1123
    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_21

    .line 1125
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_8
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1126
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 1130
    :goto_15
    :try_start_15
    monitor-exit v2

    .line 1131
    return-void

    .line 1127
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1128
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1130
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 1515
    const-string v3, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1516
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1517
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1519
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1524
    :try_start_e
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1525
    :cond_1e
    const/4 v4, -0x6

    monitor-exit v3

    move v3, v4

    .line 1537
    :goto_21
    return v3

    .line 1527
    :cond_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_3a

    .line 1529
    const/4 v2, 0x0

    .line 1530
    .local v2, rc:I
    const-string v3, "asec rename %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1532
    .local v0, cmd:Ljava/lang/String;
    :try_start_33
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_33 .. :try_end_38} :catch_3d

    :goto_38
    move v3, v2

    .line 1537
    goto :goto_21

    .line 1527
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #rc:I
    :catchall_3a
    move-exception v4

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v4

    .line 1533
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #rc:I
    :catch_3d
    move-exception v3

    move-object v1, v3

    .line 1534
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_38
.end method

.method public setUsbImageEnabled(Ljava/lang/String;Z)V
    .registers 4
    .parameter "imagePath"
    .parameter "share"

    .prologue
    .line 1264
    const-string v0, "android.permission.SHARE_UNSHARE_IMAGE"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1265
    const-string v0, "cdrom"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1266
    return-void
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 1222
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1223
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1231
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, vs:Ljava/lang/String;
    const-string v0, "ums"

    .line 1233
    .local v0, method:Ljava/lang/String;
    if-eqz p1, :cond_38

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1235
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1236
    new-instance v2, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v2, p0, v1, v0, v6}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1237
    .local v2, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1244
    .end local v2           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_38
    if-nez p1, :cond_65

    .line 1245
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1246
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_65

    .line 1247
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after disabling share method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_65
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 13
    .parameter "observer"

    .prologue
    const/4 v8, 0x0

    const-string v10, "checking"

    const-string v9, "MountService"

    .line 1145
    const-string v7, "android.permission.SHUTDOWN"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1147
    const-string v7, "MountService"

    const-string v7, "Shutting down"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, state:Ljava/lang/String;
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1160
    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1182
    :cond_28
    :goto_28
    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 1184
    new-instance v6, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v6, p0, v2, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1185
    .local v6, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v7, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1198
    .end local v6           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_41
    :goto_41
    return-void

    .line 1161
    :cond_42
    const-string v7, "checking"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1167
    const/16 v3, 0x1e

    .line 1168
    .local v3, retries:I
    :goto_4c
    const-string v7, "checking"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    add-int/lit8 v4, v3, -0x1

    .end local v3           #retries:I
    .local v4, retries:I
    if-ltz v3, :cond_86

    .line 1170
    const-wide/16 v7, 0x3e8

    :try_start_5a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5d} :catch_63

    .line 1175
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    move v3, v4

    .end local v4           #retries:I
    .restart local v3       #retries:I
    goto :goto_4c

    .line 1171
    .end local v3           #retries:I
    .restart local v4       #retries:I
    :catch_63
    move-exception v1

    .line 1172
    .local v1, iex:Ljava/lang/InterruptedException;
    const-string v7, "MountService"

    const-string v7, "Interrupted while waiting for media"

    invoke-static {v9, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 1177
    .end local v1           #iex:Ljava/lang/InterruptedException;
    .end local v4           #retries:I
    .restart local v3       #retries:I
    :cond_6c
    :goto_6c
    if-nez v3, :cond_28

    .line 1178
    const-string v7, "MountService"

    const-string v7, "Timed out waiting for media to check"

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1186
    .end local v3           #retries:I
    :cond_76
    if-eqz p1, :cond_41

    .line 1193
    const/4 v7, 0x0

    :try_start_79
    invoke-interface {p1, v7}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_41

    .line 1194
    :catch_7d
    move-exception v0

    .line 1195
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "MountService"

    const-string v7, "RemoteException when shutting down"

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #retries:I
    :cond_86
    move v3, v4

    .end local v4           #retries:I
    .restart local v3       #retries:I
    goto :goto_6c
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 12
    .parameter "filename"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1643
    if-nez p1, :cond_a

    .line 1644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1647
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1648
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 1649
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 1650
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1654
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .parameter "id"
    .parameter "force"

    .prologue
    .line 1465
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1466
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1467
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1469
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 1470
    :try_start_e
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1471
    const/4 v5, -0x5

    monitor-exit v4

    move v4, v5

    .line 1501
    :goto_19
    return v4

    .line 1473
    :cond_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_48

    .line 1481
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 1483
    const/4 v3, 0x0

    .line 1484
    .local v3, rc:I
    const-string v4, "asec unmount %s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    if-eqz p2, :cond_4b

    const-string v7, " force"

    :goto_30
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, cmd:Ljava/lang/String;
    :try_start_36
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_3b} :catch_4e

    .line 1496
    :goto_3b
    if-nez v3, :cond_46

    .line 1497
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 1498
    :try_start_40
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1499
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_5c

    :cond_46
    move v4, v3

    .line 1501
    goto :goto_19

    .line 1473
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_48
    move-exception v5

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v5

    .line 1484
    .restart local v3       #rc:I
    :cond_4b
    const-string v7, ""

    goto :goto_30

    .line 1487
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_4e
    move-exception v4

    move-object v2, v4

    .line 1488
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1489
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_5a

    .line 1490
    const/4 v3, -0x7

    goto :goto_3b

    .line 1492
    :cond_5a
    const/4 v3, -0x1

    goto :goto_3b

    .line 1499
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_5c
    move-exception v5

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v5
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .registers 8
    .parameter "path"
    .parameter "force"

    .prologue
    .line 1292
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, volState:Ljava/lang/String;
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1307
    :cond_2c
    :goto_2c
    return-void

    .line 1305
    :cond_2d
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 1306
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 1134
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1135
    :try_start_3
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1136
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v3, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v3, p1, :cond_9

    .line 1137
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1138
    monitor-exit v2

    .line 1142
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_25
    return-void

    .line 1141
    :cond_26
    monitor-exit v2

    goto :goto_25

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v3
.end method
