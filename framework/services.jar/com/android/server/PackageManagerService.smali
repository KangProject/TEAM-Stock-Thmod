.class Lcom/android/server/PackageManagerService;
.super Landroid/content/pm/IPackageManager$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings;,
        Lcom/android/server/PackageManagerService$SharedUserSetting;,
        Lcom/android/server/PackageManagerService$PackageSetting;,
        Lcom/android/server/PackageManagerService$PackageSettingBase;,
        Lcom/android/server/PackageManagerService$GrantedPermissions;,
        Lcom/android/server/PackageManagerService$PreferredActivity;,
        Lcom/android/server/PackageManagerService$PackageSignatures;,
        Lcom/android/server/PackageManagerService$BasePermission;,
        Lcom/android/server/PackageManagerService$PackageRemovedInfo;,
        Lcom/android/server/PackageManagerService$PackageInstalledInfo;,
        Lcom/android/server/PackageManagerService$SdInstallArgs;,
        Lcom/android/server/PackageManagerService$FileInstallArgs;,
        Lcom/android/server/PackageManagerService$InstallArgs;,
        Lcom/android/server/PackageManagerService$MoveParams;,
        Lcom/android/server/PackageManagerService$InstallParams;,
        Lcom/android/server/PackageManagerService$HandlerParams;,
        Lcom/android/server/PackageManagerService$AppDirObserver;,
        Lcom/android/server/PackageManagerService$ServiceIntentResolver;,
        Lcom/android/server/PackageManagerService$ActivityIntentResolver;,
        Lcom/android/server/PackageManagerService$PackageHandler;,
        Lcom/android/server/PackageManagerService$PostInstallData;,
        Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final ADD_EVENTS:I = 0x88

.field static final BROADCAST_DELAY:I = 0x2710

.field private static final DEBUG_INSTALL:Z = false

.field private static final DEBUG_PREFERRED:Z = false

.field static final DEBUG_SD_INSTALL:Z = false

.field private static final DEBUG_SETTINGS:Z = false

.field private static final DEBUG_UPGRADE:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final END_COPY:I = 0x4

.field static final FIND_INSTALL_LOC:I = 0x8

.field private static final FIRST_APPLICATION_UID:I = 0x2710

.field private static final GET_CERTIFICATES:Z = true

.field static final INIT_COPY:I = 0x5

.field private static final INSTALL_PACKAGE_SUFFIX:Ljava/lang/String; = "-"

.field private static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final LOG_UID:I = 0x3ef

.field private static final MAX_APPLICATION_UIDS:I = 0x3e8

.field static final MAX_CONTAINERS:I = 0xfa

.field static final MCS_BOUND:I = 0x3

.field static final MCS_GIVE_UP:I = 0xb

.field static final MCS_RECONNECT:I = 0xa

.field static final MCS_UNBIND:I = 0x6

.field private static final MULTIPLE_APPLICATION_UIDS:Z = true

.field private static final NFC_UID:I = 0x3fe

.field private static final OBSERVER_EVENTS:I = 0x2c8

.field private static final PKG_INSTALL_COMPLETE:I = 0x1

.field private static final PKG_INSTALL_INCOMPLETE:I = 0x0

.field static final POST_INSTALL:I = 0x9

.field private static final RADIO_UID:I = 0x3e9

.field static final REMOVE_CHATTY:I = 0x10000

.field private static final REMOVE_EVENTS:I = 0x248

.field static final SCAN_FORCE_DEX:I = 0x4

.field static final SCAN_MONITOR:I = 0x1

.field static final SCAN_NEW_INSTALL:I = 0x10

.field static final SCAN_NO_DEX:I = 0x2

.field static final SCAN_NO_PATHS:I = 0x20

.field static final SCAN_UPDATE_SIGNATURE:I = 0x8

.field static final SCAN_UPDATE_TIME:I = 0x40

.field private static final SD_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final SD_ENCRYPTION_KEYSTORE_NAME:Ljava/lang/String; = "AppsOnSD"

.field static final SEND_PENDING_BROADCAST:I = 0x1

.field private static final SHOW_INFO:Z = false

.field static final START_CLEANING_PACKAGE:I = 0x7

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field static final UPDATED_MEDIA_STATUS:I = 0xc

.field static final WRITE_SETTINGS:I = 0xd

.field static final WRITE_SETTINGS_DELAY:I = 0x2710

.field private static final mProviderInitOrderSorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvePrioritySorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mTempContainerPrefix:Ljava/lang/String; = "smdl2tmp"


# instance fields
.field final mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field final mAppDataDir:Ljava/io/File;

.field final mAppDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mAppInstallDir:Ljava/io/File;

.field final mAppInstallObserver:Landroid/os/FileObserver;

.field final mAvailableFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final mContext:Landroid/content/Context;

.field final mDalvikCacheDir:Ljava/io/File;

.field private final mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

.field final mDefParseFlags:I

.field final mDrmAppInstallObserver:Landroid/os/FileObserver;

.field final mDrmAppPrivateInstallDir:Ljava/io/File;

.field final mFactoryTest:Z

.field final mFrameworkDir:Ljava/io/File;

.field final mFrameworkInstallObserver:Landroid/os/FileObserver;

.field mGlobalGids:[I

.field final mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mHasSystemUidErrors:Z

.field final mInstallLock:Ljava/lang/Object;

.field final mInstaller:Lcom/android/server/Installer;

.field final mInstrumentation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field mLastScanError:I

.field private mMediaMounted:Z

.field final mMetrics:Landroid/util/DisplayMetrics;

.field mNextInstallToken:I

.field final mNoDexOpt:Z

.field final mOutPermissions:[I

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingBroadcasts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field mPlatformPackage:Landroid/content/pm/PackageParser$Package;

.field final mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field mResolveComponentName:Landroid/content/ComponentName;

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRestoredSettings:Z

.field final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/PackageManagerService$PostInstallData;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScanningPath:Ljava/io/File;

.field final mSdkCodename:Ljava/lang/String;

.field final mSdkVersion:I

.field final mSecureAppDataDir:Ljava/io/File;

.field final mSeparateProcesses:[Ljava/lang/String;

.field final mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

.field final mSettings:Lcom/android/server/PackageManagerService$Settings;

.field final mSharedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemAppDir:Ljava/io/File;

.field final mSystemInstallObserver:Landroid/os/FileObserver;

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTmpSharedLibraries:[Ljava/lang/String;

.field final mTransferedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mVendorAppDir:Ljava/io/File;

.field final mVendorInstallObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 4340
    new-instance v0, Lcom/android/server/PackageManagerService$3;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 4364
    new-instance v0, Lcom/android/server/PackageManagerService$4;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$4;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 40
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 725
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 205
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "PackageManager"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 209
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    .line 210
    const-string v5, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30c

    const/4 v5, 0x0

    :goto_23
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    .line 261
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 266
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    .line 273
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    .line 280
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 291
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 296
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    .line 299
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    .line 303
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    .line 307
    new-instance v5, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    .line 311
    new-instance v5, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    .line 315
    new-instance v5, Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    .line 318
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    .line 323
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    .line 327
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    .line 331
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    .line 336
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    .line 339
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    .line 346
    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 347
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 352
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    .line 357
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 376
    new-instance v5, Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/PackageManagerService;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    .line 402
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 403
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mNextInstallToken:I

    .line 9664
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    .line 726
    const/16 v5, 0xbf4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v5, v0

    if-gtz v5, :cond_139

    .line 730
    const-string v5, "PackageManager"

    const-string v6, "**** ro.build.version.sdk not set!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_139
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    .line 734
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    .line 735
    const-string v5, "eng"

    const-string v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    .line 736
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 737
    new-instance v5, Lcom/android/server/PackageManagerService$Settings;

    invoke-direct {v5}, Lcom/android/server/PackageManagerService$Settings;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.system"

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.phone"

    const/16 v7, 0x3e9

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.log"

    const/16 v7, 0x3ef

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.nfc"

    const/16 v7, 0x3fe

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 753
    const-string v5, "debug.separate_processes"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 754
    .local v33, separateProcesses:Ljava/lang/String;
    if-eqz v33, :cond_341

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_341

    .line 755
    const-string v5, "*"

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_310

    .line 756
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 757
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 758
    const-string v5, "PackageManager"

    const-string v6, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_1cb
    new-instance v21, Lcom/android/server/Installer;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/Installer;-><init>()V

    .line 775
    .local v21, installer:Lcom/android/server/Installer;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/Installer;->ping()Z

    move-result v5

    if-eqz v5, :cond_34f

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-eqz v5, :cond_34f

    .line 776
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    .line 781
    :goto_1e2
    const-string v5, "window"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/WindowManager;

    .line 782
    .local v36, wm:Landroid/view/WindowManager;
    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 783
    .local v12, d:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #d:Landroid/view/Display;
    monitor-enter v12

    .line 786
    :try_start_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .end local v21           #installer:Lcom/android/server/Installer;
    monitor-enter v21
    :try_end_206
    .catchall {:try_start_1ff .. :try_end_206} :catchall_378

    .line 787
    :try_start_206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 788
    new-instance v5, Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;-><init>(Lcom/android/server/PackageManagerService;Landroid/os/Looper;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    .line 790
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    .line 791
    .local v13, dataDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "data"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    .line 792
    new-instance v5, Ljava/io/File;

    const-string v6, "secure/data"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSecureAppDataDir:Ljava/io/File;

    .line 793
    new-instance v5, Ljava/io/File;

    const-string v6, "app-private"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_27a

    .line 799
    new-instance v26, Ljava/io/File;

    const-string v5, "misc"

    move-object/from16 v0, v26

    move-object v1, v13

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 800
    .local v26, miscDir:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSecureAppDataDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 806
    .end local v26           #miscDir:Ljava/io/File;
    :cond_27a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->readPermissions()V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->readLP()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mRestoredSettings:Z

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 811
    .local v34, startTime:J
    const/16 v5, 0xbfe

    move v0, v5

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 816
    const/16 v32, 0x21

    .line 817
    .local v32, scanMode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    move v5, v0

    if-eqz v5, :cond_2a9

    .line 818
    const-string v5, "PackageManager"

    const-string v6, "Running ENG build: no pre-dexopt!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    or-int/lit8 v32, v32, 0x2

    .line 822
    :cond_2a9
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 824
    .local v23, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "framework"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    .line 825
    new-instance v5, Ljava/io/File;

    const-string v6, "dalvik-cache"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_552

    .line 828
    const/4 v15, 0x0

    .line 834
    .local v15, didDexOpt:Z
    const-string v5, "java.boot.class.path"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 835
    .local v11, bootClassPath:Ljava/lang/String;
    if-eqz v11, :cond_39e

    .line 836
    const/16 v5, 0x3a

    invoke-static {v11, v5}, Lcom/android/server/PackageManagerService;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v29

    .line 837
    .local v29, paths:[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2e2
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0
    :try_end_2e6
    .catchall {:try_start_206 .. :try_end_2e6} :catchall_375

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_3a5

    .line 839
    :try_start_2eb
    aget-object v5, v29, v20

    invoke-static {v5}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_309

    .line 840
    aget-object v5, v29, v20

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    aget-object v6, v29, v20

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_308
    .catchall {:try_start_2eb .. :try_end_308} :catchall_375
    .catch Ljava/io/FileNotFoundException; {:try_start_2eb .. :try_end_308} :catch_357
    .catch Ljava/io/IOException; {:try_start_2eb .. :try_end_308} :catch_37b

    .line 842
    const/4 v15, 0x1

    .line 837
    :cond_309
    :goto_309
    add-int/lit8 v20, v20, 0x1

    goto :goto_2e2

    .line 210
    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v13           #dataDir:Ljava/io/File;
    .end local v15           #didDexOpt:Z
    .end local v20           #i:I
    .end local v23           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #paths:[Ljava/lang/String;
    .end local v32           #scanMode:I
    .end local v33           #separateProcesses:Ljava/lang/String;
    .end local v34           #startTime:J
    .end local v36           #wm:Landroid/view/WindowManager;
    :cond_30c
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto/16 :goto_23

    .line 760
    .restart local v33       #separateProcesses:Ljava/lang/String;
    :cond_310
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 761
    const-string v5, ","

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 762
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running with debug.separate_processes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cb

    .line 766
    :cond_341
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 767
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    goto/16 :goto_1cb

    .line 778
    .restart local v21       #installer:Lcom/android/server/Installer;
    :cond_34f
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    goto/16 :goto_1e2

    .line 844
    .end local v21           #installer:Lcom/android/server/Installer;
    .restart local v11       #bootClassPath:Ljava/lang/String;
    .restart local v13       #dataDir:Ljava/io/File;
    .restart local v15       #didDexOpt:Z
    .restart local v20       #i:I
    .restart local v23       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #paths:[Ljava/lang/String;
    .restart local v32       #scanMode:I
    .restart local v34       #startTime:J
    .restart local v36       #wm:Landroid/view/WindowManager;
    :catch_357
    move-exception v5

    move-object/from16 v16, v5

    .line 845
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_35a
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Boot class path not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v29, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_309

    .line 1037
    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v13           #dataDir:Ljava/io/File;
    .end local v15           #didDexOpt:Z
    .end local v16           #e:Ljava/io/FileNotFoundException;
    .end local v20           #i:I
    .end local v23           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #paths:[Ljava/lang/String;
    .end local v32           #scanMode:I
    .end local v34           #startTime:J
    .end local p1
    :catchall_375
    move-exception v5

    monitor-exit v21
    :try_end_377
    .catchall {:try_start_35a .. :try_end_377} :catchall_375

    :try_start_377
    throw v5

    .line 1038
    :catchall_378
    move-exception v5

    monitor-exit v12
    :try_end_37a
    .catchall {:try_start_377 .. :try_end_37a} :catchall_378

    throw v5

    .line 846
    .restart local v11       #bootClassPath:Ljava/lang/String;
    .restart local v13       #dataDir:Ljava/io/File;
    .restart local v15       #didDexOpt:Z
    .restart local v20       #i:I
    .restart local v23       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #paths:[Ljava/lang/String;
    .restart local v32       #scanMode:I
    .restart local v34       #startTime:J
    .restart local p1
    :catch_37b
    move-exception v5

    move-object/from16 v16, v5

    .line 847
    .local v16, e:Ljava/io/IOException;
    :try_start_37e
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading boot class path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v29, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_309

    .line 851
    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #i:I
    .end local v29           #paths:[Ljava/lang/String;
    :cond_39e
    const-string v5, "PackageManager"

    const-string v6, "No BOOTCLASSPATH found!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_42a

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 859
    .local v25, libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3bd
    :goto_3bd
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42a

    .line 860
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;
    :try_end_3c9
    .catchall {:try_start_37e .. :try_end_3c9} :catchall_375

    .line 862
    .local v22, lib:Ljava/lang/String;
    :try_start_3c9
    invoke-static/range {v22 .. v22}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3bd

    .line 863
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_3e6
    .catchall {:try_start_3c9 .. :try_end_3e6} :catchall_375
    .catch Ljava/io/FileNotFoundException; {:try_start_3c9 .. :try_end_3e6} :catch_3e8
    .catch Ljava/io/IOException; {:try_start_3c9 .. :try_end_3e6} :catch_407

    .line 865
    const/4 v15, 0x1

    goto :goto_3bd

    .line 867
    :catch_3e8
    move-exception v5

    move-object/from16 v16, v5

    .line 868
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_3eb
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3bd

    .line 869
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_407
    move-exception v5

    move-object/from16 v16, v5

    .line 870
    .local v16, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3bd

    .line 877
    .end local v16           #e:Ljava/io/IOException;
    .end local v22           #lib:Ljava/lang/String;
    .end local v25           #libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_42a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/framework-res.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v19

    .line 885
    .local v19, frameworkFiles:[Ljava/lang/String;
    if-eqz v19, :cond_4f3

    .line 886
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_459
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_4f3

    .line 887
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    aget-object v6, v19, v20

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 888
    .local v24, libPath:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    .line 890
    .local v28, path:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_483

    .line 886
    :cond_480
    :goto_480
    add-int/lit8 v20, v20, 0x1

    goto :goto_459

    .line 894
    :cond_483
    const-string v5, ".apk"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_499

    const-string v5, ".jar"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_496
    .catchall {:try_start_3eb .. :try_end_496} :catchall_375

    move-result v5

    if-eqz v5, :cond_480

    .line 898
    :cond_499
    :try_start_499
    invoke-static/range {v28 .. v28}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_480

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v28

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_4af
    .catchall {:try_start_499 .. :try_end_4af} :catchall_375
    .catch Ljava/io/FileNotFoundException; {:try_start_499 .. :try_end_4af} :catch_4b1
    .catch Ljava/io/IOException; {:try_start_499 .. :try_end_4af} :catch_4d0

    .line 900
    const/4 v15, 0x1

    goto :goto_480

    .line 902
    :catch_4b1
    move-exception v5

    move-object/from16 v16, v5

    .line 903
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_4b4
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Jar not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_480

    .line 904
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_4d0
    move-exception v5

    move-object/from16 v16, v5

    .line 905
    .local v16, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading jar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_480

    .line 910
    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #i:I
    .end local v24           #libPath:Ljava/io/File;
    .end local v28           #path:Ljava/lang/String;
    :cond_4f3
    if-eqz v15, :cond_552

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 917
    .local v17, files:[Ljava/lang/String;
    if-eqz v17, :cond_552

    .line 918
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_502
    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_552

    .line 919
    aget-object v18, v17, v20

    .line 920
    .local v18, fn:Ljava/lang/String;
    const-string v5, "data@app@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_523

    const-string v5, "data@app-private@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54f

    .line 922
    :cond_523
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruning dalvik file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 918
    :cond_54f
    add-int/lit8 v20, v20, 0x1

    goto :goto_502

    .line 931
    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v15           #didDexOpt:Z
    .end local v17           #files:[Ljava/lang/String;
    .end local v18           #fn:Ljava/lang/String;
    .end local v19           #frameworkFiles:[Ljava/lang/String;
    .end local v20           #i:I
    :cond_552
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x41

    or-int/lit8 v8, v32, 0x2

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 939
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    .line 940
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x41

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 947
    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/app"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    .line 948
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mVendorInstallObserver:Landroid/os/FileObserver;

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mVendorInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x41

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_619

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/Installer;->moveFiles()I

    .line 960
    :cond_619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 961
    .local v31, psit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_62a
    :goto_62a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69f

    .line 962
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 963
    .local v30, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_62a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62a

    .line 966
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    .line 967
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " no longer exists; wiping its data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 969
    .local v27, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_62a

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    goto :goto_62a

    .line 978
    .end local v27           #msg:Ljava/lang/String;
    .end local v30           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_69f
    new-instance v5, Ljava/io/File;

    const-string v6, "app"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_6ba

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 985
    :cond_6ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->getListOfIncompleteInstallPackages()Ljava/util/ArrayList;

    move-result-object v14

    .line 987
    .local v14, deletePkgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/16 v20, 0x0

    .end local p1
    .restart local v20       #i:I
    :goto_6c5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_6dd

    .line 989
    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PackageManagerService$PackageSetting;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->cleanupInstallFailedPackage(Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 987
    add-int/lit8 v20, v20, 0x1

    goto :goto_6c5

    .line 992
    :cond_6dd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->deleteTempPackageFiles()V

    .line 994
    const/16 v5, 0xc08

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 996
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1001
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x10

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1007
    const/16 v5, 0xc12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1009
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to scan packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v34

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    if-eq v5, v6, :cond_7f7

    const/4 v5, 0x1

    move v9, v5

    .line 1021
    .local v9, regrantPermissions:Z
    :goto_791
    if-eqz v9, :cond_7c7

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Platform changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    iget v7, v7, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; regranting permissions for internal storage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_7c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    iput v6, v5, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    .line 1026
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1030
    const/16 v5, 0xc1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1036
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1037
    monitor-exit v21
    :try_end_7f5
    .catchall {:try_start_4b4 .. :try_end_7f5} :catchall_375

    .line 1038
    :try_start_7f5
    monitor-exit v12
    :try_end_7f6
    .catchall {:try_start_7f5 .. :try_end_7f6} :catchall_378

    .line 1039
    return-void

    .line 1019
    .end local v9           #regrantPermissions:Z
    :cond_7f7
    const/4 v5, 0x0

    move v9, v5

    goto :goto_791
.end method

.method static synthetic access$1600(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->installPackageLI(Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$MoveParams;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V

    return-void
.end method

.method static synthetic access$2800(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/PackageManagerService;Ljava/io/File;)Ljava/io/File;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/PackageManagerService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZZI)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->deletePackageX(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(ILjava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/PackageManagerService;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatusInner(ZZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PackageManagerService;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V

    return-void
.end method

.method static appendInt([II)[I
    .registers 7
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 1275
    if-nez p0, :cond_9

    .line 1276
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    .line 1287
    :goto_8
    return-object v3

    .line 1278
    :cond_9
    array-length v0, p0

    .line 1279
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_16

    .line 1280
    aget v3, p0, v1

    if-ne v3, p1, :cond_13

    move-object v3, p0

    .line 1281
    goto :goto_8

    .line 1279
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1284
    :cond_16
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 1285
    .local v2, ret:[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1286
    aput p1, v2, v0

    move-object v3, v2

    .line 1287
    goto :goto_8
.end method

.method static appendInts([I[I)[I
    .registers 5
    .parameter "cur"
    .parameter "add"

    .prologue
    .line 1291
    if-nez p1, :cond_4

    move-object v2, p0

    .line 1297
    :goto_3
    return-object v2

    .line 1292
    :cond_4
    if-nez p0, :cond_8

    move-object v2, p1

    goto :goto_3

    .line 1293
    :cond_8
    array-length v0, p1

    .line 1294
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_15

    .line 1295
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object p0

    .line 1294
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    move-object v2, p0

    .line 1297
    goto :goto_3
.end method

.method static arrayToString([I)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 6884
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6885
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6886
    if-eqz p0, :cond_21

    .line 6887
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 6888
    if-lez v1, :cond_19

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6889
    :cond_19
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 6887
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 6892
    .end local v1           #i:I
    :cond_21
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6893
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .registers 6
    .parameter "permName"

    .prologue
    .line 1720
    if-eqz p1, :cond_46

    .line 1721
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v0

    .line 1722
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_46

    .line 1723
    iget v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 1724
    return-object v0

    .line 1726
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_46
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permission tree found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 15
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1963
    if-eqz p4, :cond_4c

    .line 1964
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 1965
    .local v6, N:I
    if-ne v6, v0, :cond_12

    .line 1966
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    .line 1995
    .end local v6           #N:I
    :goto_11
    return-object v0

    .line 1967
    .restart local v6       #N:I
    .restart local p0
    :cond_12
    if-le v6, v0, :cond_4c

    .line 1970
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1971
    .local v7, r0:Landroid/content/pm/ResolveInfo;
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1980
    .local v8, r1:Landroid/content/pm/ResolveInfo;
    iget v0, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_32

    iget v0, v7, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_32

    iget-boolean v0, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_3a

    .line 1983
    :cond_32
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    goto :goto_11

    .line 1987
    .restart local p0
    :cond_3a
    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1989
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_49

    move-object v0, v9

    .line 1990
    goto :goto_11

    .line 1992
    :cond_49
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_11

    .line 1995
    .end local v6           #N:I
    .end local v7           #r0:Landroid/content/pm/ResolveInfo;
    .end local v8           #r1:Landroid/content/pm/ResolveInfo;
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private clearApplicationUserDataLI(Ljava/lang/String;)Z
    .registers 14
    .parameter "packageName"

    .prologue
    const/4 v10, 0x0

    const-string v11, "Package named \'"

    const-string v9, "\' doesn\'t exist."

    const-string v8, "PackageManager"

    .line 6364
    if-nez p1, :cond_12

    .line 6365
    const-string v6, "PackageManager"

    const-string v6, "Attempt to delete null packageName."

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 6405
    :goto_11
    return v6

    .line 6369
    :cond_12
    const/4 v1, 0x0

    .line 6370
    .local v1, dataOnly:Z
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 6371
    :try_start_16
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 6372
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_56

    .line 6373
    const/4 v1, 0x1

    .line 6374
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6375
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v3, :cond_33

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v7, :cond_54

    .line 6376
    :cond_33
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package named \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6377
    monitor-exit v6

    move v6, v10

    goto :goto_11

    .line 6379
    :cond_54
    iget-object v2, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6381
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_7c

    .line 6382
    const/4 v5, 0x0

    .line 6384
    .local v5, useEncryptedFSDir:Z
    if-nez v1, :cond_a8

    .line 6386
    if-nez v2, :cond_7f

    .line 6387
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package named \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' doesn\'t exist."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 6388
    goto :goto_11

    .line 6381
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    .end local v5           #useEncryptedFSDir:Z
    :catchall_7c
    move-exception v7

    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v7

    .line 6390
    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v5       #useEncryptedFSDir:Z
    :cond_7f
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6391
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_a4

    .line 6392
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no applicationInfo."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 6393
    goto/16 :goto_11

    .line 6395
    :cond_a4
    invoke-static {v2}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    .line 6397
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_a8
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v6, :cond_cf

    .line 6398
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/Installer;->clearUserData(Ljava/lang/String;Z)I

    move-result v4

    .line 6399
    .local v4, retCode:I
    if-gez v4, :cond_cf

    .line 6400
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t remove cache files for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 6402
    goto/16 :goto_11

    .line 6405
    .end local v4           #retCode:I
    :cond_cf
    const/4 v6, 0x1

    goto/16 :goto_11
.end method

.method private collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z
    .registers 12
    .parameter "pp"
    .parameter "ps"
    .parameter "pkg"
    .parameter "srcFile"
    .parameter "parseFlags"

    .prologue
    const/4 v4, 0x1

    const-string v5, "PackageManager"

    .line 2558
    if-eqz p2, :cond_60

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v0, p4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-wide v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_60

    .line 2561
    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_32

    .line 2565
    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move v0, v4

    .line 2579
    :goto_31
    return v0

    .line 2569
    :cond_32
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :goto_52
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 2575
    invoke-virtual {p1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v0

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2576
    const/4 v0, 0x0

    goto :goto_31

    .line 2571
    :cond_60
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changed; collecting certs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_7d
    move v0, v4

    .line 2579
    goto :goto_31
.end method

.method static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .registers 5
    .parameter "pi1"
    .parameter "pi2"

    .prologue
    const/4 v2, 0x0

    .line 1749
    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 1761
    :goto_8
    return v0

    .line 1750
    :cond_9
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_11

    move v0, v2

    goto :goto_8

    .line 1751
    :cond_11
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_19

    move v0, v2

    goto :goto_8

    .line 1752
    :cond_19
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v2

    goto :goto_8

    .line 1753
    :cond_25
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v2

    goto :goto_8

    .line 1755
    :cond_31
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v2

    goto :goto_8

    .line 1761
    :cond_3d
    const/4 v0, 0x1

    goto :goto_8
.end method

.method static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v2, 0x0

    .line 1736
    if-nez p0, :cond_9

    .line 1737
    if-nez p1, :cond_7

    const/4 v0, 0x1

    .line 1745
    :goto_6
    return v0

    :cond_7
    move v0, v2

    .line 1737
    goto :goto_6

    .line 1739
    :cond_9
    if-nez p1, :cond_d

    move v0, v2

    .line 1740
    goto :goto_6

    .line 1742
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_19

    move v0, v2

    .line 1743
    goto :goto_6

    .line 1745
    :cond_19
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .registers 8
    .parameter "zipEntry"
    .parameter "inZipFile"
    .parameter "outZipStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5960
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 5964
    .local v0, buffer:[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_21

    .line 5966
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 5971
    .local v2, newEntry:Ljava/util/zip/ZipEntry;
    :goto_f
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 5973
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 5974
    .local v1, data:Ljava/io/InputStream;
    :goto_16
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, num:I
    if-lez v3, :cond_2b

    .line 5975
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_16

    .line 5969
    .end local v1           #data:Ljava/io/InputStream;
    .end local v2           #newEntry:Ljava/util/zip/ZipEntry;
    .end local v3           #num:I
    :cond_21
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2       #newEntry:Ljava/util/zip/ZipEntry;
    goto :goto_f

    .line 5977
    .restart local v1       #data:Ljava/io/InputStream;
    .restart local v3       #num:I
    :cond_2b
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 5978
    return-void
.end method

.method private createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .registers 6
    .parameter "flags"
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    .line 4886
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4887
    new-instance v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .registers 8
    .parameter "packageURI"
    .parameter "flags"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    .line 4895
    invoke-static {p2}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4896
    const/4 v1, 0x0

    const-string v2, "/pkg.apk"

    invoke-static {v1, p3, v2}, Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4897
    .local v0, cid:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4899
    .end local v0           #cid:Ljava/lang/String;
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    .registers 3
    .parameter "params"

    .prologue
    .line 4877
    iget v0, p1, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-static {v0}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4878
    new-instance v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V

    .line 4880
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V

    goto :goto_d
.end method

.method private createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    .registers 10
    .parameter "installDir"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 5999
    :try_start_3
    const-string v2, "vmdl"

    const-string v3, ".tmp"

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_18

    move-result-object v1

    .line 6005
    .local v1, tmpPackageFile:Ljava/io/File;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x180

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_23

    move-object v2, v1

    .line 6012
    .end local v1           #tmpPackageFile:Ljava/io/File;
    :goto_17
    return-object v2

    .line 6000
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 6001
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Couldn\'t create temp file for downloaded package file."

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 6002
    goto :goto_17

    .line 6008
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tmpPackageFile:Ljava/io/File;
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 6009
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Trouble getting the canoncical path for a temp file."

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 6010
    goto :goto_17
.end method

.method private deleteApplicationCacheFilesLI(Ljava/lang/String;)Z
    .registers 10
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 6432
    if-nez p1, :cond_e

    .line 6433
    const-string v4, "PackageManager"

    const-string v4, "Attempt to delete null packageName."

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 6458
    :goto_d
    return v4

    .line 6437
    :cond_e
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 6438
    :try_start_11
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 6439
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3c

    .line 6440
    if-nez v1, :cond_3f

    .line 6441
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package named \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 6442
    goto :goto_d

    .line 6439
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_3c
    move-exception v5

    :try_start_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v5

    .line 6444
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_3f
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6445
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_63

    .line 6446
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no applicationInfo."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 6447
    goto :goto_d

    .line 6449
    :cond_63
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    .line 6450
    .local v3, useEncryptedFSDir:Z
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_8d

    .line 6451
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/Installer;->deleteCacheFiles(Ljava/lang/String;Z)I

    move-result v2

    .line 6452
    .local v2, retCode:I
    if-gez v2, :cond_8d

    .line 6453
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove cache files for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 6455
    goto :goto_d

    .line 6458
    .end local v2           #retCode:I
    :cond_8d
    const/4 v4, 0x1

    goto/16 :goto_d
.end method

.method private deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z
    .registers 13
    .parameter "p"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6253
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6254
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_28

    .line 6255
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no applicationInfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 6273
    :goto_27
    return v2

    .line 6258
    :cond_28
    if-eqz p4, :cond_2e

    .line 6259
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 6263
    :cond_2e
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;IZ)V

    .line 6266
    if-eqz p2, :cond_50

    .line 6268
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/16 v2, 0x8

    move v1, v2

    .line 6269
    .local v1, installFlags:I
    :goto_3c
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v6

    :goto_43
    or-int/2addr v1, v2

    .line 6270
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v2

    iput-object v2, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .end local v1           #installFlags:I
    :cond_50
    move v2, v6

    .line 6273
    goto :goto_27

    :cond_52
    move v1, v5

    .line 6268
    goto :goto_3c

    .restart local v1       #installFlags:I
    :cond_54
    move v2, v5

    .line 6269
    goto :goto_43
.end method

.method private deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z
    .registers 16
    .parameter "packageName"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    const/4 v5, 0x0

    const-string v9, "Package named \'"

    const-string v4, "\' doesn\'t exist."

    const-string v3, "PackageManager"

    .line 6282
    if-nez p1, :cond_12

    .line 6283
    const-string v0, "PackageManager"

    const-string v0, "Attempt to delete null packageName."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 6329
    :goto_11
    return v0

    .line 6287
    :cond_12
    const/4 v6, 0x0

    .line 6288
    .local v6, dataOnly:Z
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6289
    :try_start_16
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 6290
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_52

    .line 6292
    const/4 v6, 0x1

    .line 6293
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6294
    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v7, :cond_50

    .line 6295
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6296
    monitor-exit v0

    move v0, v5

    goto :goto_11

    .line 6298
    :cond_50
    iget-object v1, v7, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6300
    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_16 .. :try_end_53} :catchall_75

    .line 6301
    if-nez v1, :cond_78

    .line 6302
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package named \'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' doesn\'t exist."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 6303
    goto :goto_11

    .line 6300
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v2

    .line 6306
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_78
    if-eqz v6, :cond_7f

    .line 6308
    invoke-direct {p0, v1, p4, p3, p5}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;IZ)V

    .line 6309
    const/4 v0, 0x1

    goto :goto_11

    .line 6312
    :cond_7f
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_a6

    .line 6313
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no applicationInfo."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 6314
    goto/16 :goto_11

    .line 6316
    :cond_a6
    const/4 v8, 0x0

    .line 6317
    .local v8, ret:Z
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 6318
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing system package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6321
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/server/PackageManagerService;->deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    :goto_cb
    move v0, v8

    .line 6329
    goto/16 :goto_11

    .line 6323
    :cond_ce
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing non-system package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6325
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 6326
    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    goto :goto_cb
.end method

.method private deletePackageX(Ljava/lang/String;ZZI)Z
    .registers 15
    .parameter "packageName"
    .parameter "sendBroadCast"
    .parameter "deleteCodeAndResources"
    .parameter "flags"

    .prologue
    .line 6052
    new-instance v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v4}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 6055
    .local v4, info:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v6

    .line 6058
    .local v6, dpm:Landroid/app/admin/IDevicePolicyManager;
    if-eqz v6, :cond_38

    :try_start_11
    invoke-interface {v6, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6059
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_35} :catch_37

    .line 6060
    const/4 v0, 0x0

    .line 6094
    .end local v6           #dpm:Landroid/app/admin/IDevicePolicyManager;
    :goto_36
    return v0

    .line 6062
    .restart local v6       #dpm:Landroid/app/admin/IDevicePolicyManager;
    :catch_37
    move-exception v0

    .line 6065
    :cond_38
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .end local v6           #dpm:Landroid/app/admin/IDevicePolicyManager;
    monitor-enter v6

    .line 6066
    const/high16 v0, 0x1

    or-int v3, p4, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    :try_start_43
    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    .line 6068
    .local v8, res:Z
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_8c

    .line 6070
    if-eqz v8, :cond_76

    if-eqz p2, :cond_76

    .line 6071
    iget-boolean v9, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 6072
    .local v9, systemUpdate:Z
    invoke-virtual {v4, p3, v9}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 6076
    if-eqz v9, :cond_76

    .line 6077
    new-instance v7, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 6078
    .local v7, extras:Landroid/os/Bundle;
    const-string v0, "android.intent.extra.UID"

    iget v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v1, :cond_8f

    iget v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_61
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6079
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6081
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const/4 v1, 0x0

    invoke-static {v0, p1, v7, v1}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6082
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    const/4 v1, 0x0

    invoke-static {v0, p1, v7, v1}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6086
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #systemUpdate:Z
    :cond_76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6089
    iget-object v0, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_8a

    .line 6090
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6091
    :try_start_84
    iget-object v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    invoke-virtual {v1, p3}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 6092
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_92

    :cond_8a
    move v0, v8

    .line 6094
    goto :goto_36

    .line 6068
    .end local v8           #res:Z
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0

    .line 6078
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v8       #res:Z
    .restart local v9       #systemUpdate:Z
    :cond_8f
    iget v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_61

    .line 6092
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #systemUpdate:Z
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v1
.end method

.method private deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z
    .registers 14
    .parameter "p"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    .line 6193
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6195
    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_26

    .line 6196
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no applicationInfo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    const/4 v0, 0x0

    .line 6247
    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_25
    return v0

    .line 6199
    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_26
    const/4 v7, 0x0

    .line 6203
    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6204
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    .line 6205
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_51

    .line 6206
    if-nez v7, :cond_54

    .line 6207
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to delete unknown system package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    const/4 v0, 0x0

    goto :goto_25

    .line 6205
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1

    .line 6210
    :cond_54
    const-string v0, "PackageManager"

    const-string v1, "Deleting system pkg from data partition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 6214
    iget v0, v7, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v0, v1, :cond_74

    .line 6216
    and-int/lit8 p2, p2, -0x2

    .line 6221
    :goto_66
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    .line 6223
    .local v8, ret:Z
    if-nez v8, :cond_77

    .line 6224
    const/4 v0, 0x0

    goto :goto_25

    .line 6219
    .end local v8           #ret:Z
    :cond_74
    or-int/lit8 p2, p2, 0x1

    goto :goto_66

    .line 6226
    .restart local v8       #ret:Z
    :cond_77
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6228
    :try_start_7a
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6230
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)Z

    .line 6231
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_c0

    .line 6233
    iget-object v1, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    const/4 v2, 0x5

    const/16 v3, 0x21

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 6237
    .local v2, newPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_c3

    .line 6238
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore system package:"

    .end local v2           #newPkg:Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6239
    const/4 v0, 0x0

    goto/16 :goto_25

    .line 6231
    :catchall_c0
    move-exception v1

    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v1

    .line 6241
    .restart local v2       #newPkg:Landroid/content/pm/PackageParser$Package;
    :cond_c3
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    monitor-enter v6

    .line 6242
    :try_start_c6
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 6243
    if-eqz p4, :cond_d6

    .line 6244
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 6246
    :cond_d6
    monitor-exit v6

    .line 6247
    const/4 v0, 0x1

    goto/16 :goto_25

    .line 6246
    :catchall_da
    move-exception v0

    monitor-exit v6
    :try_end_dc
    .catchall {:try_start_c6 .. :try_end_dc} :catchall_da

    throw v0
.end method

.method private deleteTempPackageFiles()V
    .registers 7

    .prologue
    .line 5981
    new-instance v0, Lcom/android/server/PackageManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/PackageManagerService$6;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 5986
    .local v0, filter:Ljava/io/FilenameFilter;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 5987
    .local v3, tmpFilesList:[Ljava/lang/String;
    if-nez v3, :cond_e

    .line 5994
    :cond_d
    return-void

    .line 5990
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v4, v3

    if-ge v1, v4, :cond_d

    .line 5991
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5992
    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 5990
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    .registers 13
    .parameter "newPackage"
    .parameter "publicZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 5921
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5922
    .local v1, fstr:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5923
    .local v4, publicZipOutStream:Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 5927
    .local v2, privateZip:Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 5928
    .local v3, privateZipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 5929
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 5930
    .local v5, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5931
    .local v6, zipEntryName:Ljava/lang/String;
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    const-string v7, "resources.arsc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    const-string v7, "res/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 5935
    :cond_3e
    :try_start_3e
    invoke-static {v5, v2, v4}, Lcom/android/server/PackageManagerService;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_16

    .line 5936
    :catch_42
    move-exception v0

    .line 5938
    .local v0, e:Ljava/io/IOException;
    :try_start_43
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 5939
    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    .line 5941
    :catchall_47
    move-exception v7

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v7

    .line 5947
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v6           #zipEntryName:Ljava/lang/String;
    :cond_4c
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 5948
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 5949
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 5950
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 5951
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a4

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 5955
    return-void
.end method

.method private findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .registers 6
    .parameter "permName"

    .prologue
    .line 1709
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1710
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_c

    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_c

    move-object v2, v0

    .line 1716
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :goto_3b
    return-object v2

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method private static fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "defProcessName"
    .parameter "processName"
    .parameter "uid"

    .prologue
    .line 2699
    if-nez p1, :cond_4

    move-object v0, p0

    .line 2702
    :goto_3
    return-object v0

    :cond_4
    move-object v0, p1

    goto :goto_3
.end method

.method private generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1478
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1479
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_25

    .line 1480
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1e

    .line 1481
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1482
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1c

    .line 1483
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1489
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_1b
    return-object v2

    .restart local v0       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1c
    move-object v2, v3

    .line 1485
    goto :goto_1b

    .line 1487
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1e
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_1b

    :cond_25
    move-object v2, v3

    .line 1489
    goto :goto_1b
.end method

.method private generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1494
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_5c

    .line 1495
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_55

    .line 1496
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1497
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1498
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1499
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1500
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1501
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, v2}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1502
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1503
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 1505
    :cond_55
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1507
    :goto_5b
    return-object v1

    :cond_5c
    const/4 v1, 0x0

    goto :goto_5b
.end method

.method static final generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .parameter "bp"
    .parameter "flags"

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_b

    .line 1416
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1423
    :goto_a
    return-object v1

    .line 1418
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 1419
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1420
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1421
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1422
    iget v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move-object v1, v0

    .line 1423
    goto :goto_a
.end method

.method static getApkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "codePath"

    .prologue
    const/4 v5, 0x0

    .line 5426
    if-nez p0, :cond_5

    move-object v2, v5

    .line 5437
    :goto_4
    return-object v2

    .line 5429
    :cond_5
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5430
    .local v1, sidx:I
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5431
    .local v0, eidx:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 5432
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5437
    :cond_18
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 5433
    :cond_1f
    if-nez v0, :cond_18

    .line 5434
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Invalid code path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Not a valid apk name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 5435
    goto :goto_4
.end method

.method private getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;
    .registers 6
    .parameter "pkg"

    .prologue
    .line 2807
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    .line 2809
    .local v1, useEncryptedFSDir:Z
    if-eqz v1, :cond_10

    .line 2810
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSecureAppDataDir:Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2814
    .local v0, dataPath:Ljava/io/File;
    :goto_f
    return-object v0

    .line 2812
    .end local v0           #dataPath:Ljava/io/File;
    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0       #dataPath:Ljava/io/File;
    goto :goto_f
.end method

.method private getEncryptKey()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x0

    const-string v3, "AppsOnSD"

    const-string v8, "PackageManager"

    .line 9668
    :try_start_5
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v3

    const-string v4, "AppsOnSD"

    invoke-virtual {v3, v4}, Landroid/security/SystemKeyStore;->retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9670
    .local v2, sdEncKey:Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 9671
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v3

    const/16 v4, 0x80

    const-string v5, "AES"

    const-string v6, "AppsOnSD"

    invoke-virtual {v3, v4, v5, v6}, Landroid/security/SystemKeyStore;->generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9673
    if-nez v2, :cond_2a

    .line 9674
    const-string v3, "PackageManager"

    const-string v4, "Failed to create encryption keys"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_28} :catch_2c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_48

    move-object v3, v7

    .line 9685
    .end local v2           #sdEncKey:Ljava/lang/String;
    :goto_29
    return-object v3

    .restart local v2       #sdEncKey:Ljava/lang/String;
    :cond_2a
    move-object v3, v2

    .line 9678
    goto :goto_29

    .line 9679
    .end local v2           #sdEncKey:Ljava/lang/String;
    :catch_2c
    move-exception v3

    move-object v1, v3

    .line 9680
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create encryption keys with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 9681
    goto :goto_29

    .line 9682
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catch_48
    move-exception v3

    move-object v0, v3

    .line 9683
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve encryption keys with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 9685
    goto :goto_29
.end method

.method private getNativeBinaryDirForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;
    .registers 6
    .parameter "pkg"

    .prologue
    .line 3620
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3621
    .local v0, nativeLibraryDir:Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 3622
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3625
    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "lib"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "oldCodePath"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const-string v7, "-"

    .line 5371
    const-string v1, ""

    .line 5372
    .local v1, idxStr:Ljava/lang/String;
    const/4 v0, 0x1

    .line 5375
    .local v0, idx:I
    if-eqz p0, :cond_49

    .line 5376
    move-object v3, p0

    .line 5378
    .local v3, subStr:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 5379
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5383
    :cond_1c
    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 5384
    .local v2, sidx:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_49

    .line 5385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5386
    if-eqz v3, :cond_49

    .line 5387
    const-string v4, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 5388
    const-string v4, "-"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5391
    :cond_40
    :try_start_40
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_75

    move-result v0

    .line 5392
    const/4 v4, 0x1

    if-gt v0, v4, :cond_72

    .line 5393
    add-int/lit8 v0, v0, 0x1

    .line 5402
    .end local v2           #sidx:I
    .end local v3           #subStr:Ljava/lang/String;
    :cond_49
    :goto_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5395
    .restart local v2       #sidx:I
    .restart local v3       #subStr:Ljava/lang/String;
    :cond_72
    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    .line 5397
    :catch_75
    move-exception v4

    goto :goto_49
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .registers 16
    .parameter "packageName"
    .parameter "pStats"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v2, "PackageManager"

    .line 6486
    if-nez p1, :cond_f

    .line 6487
    const-string v0, "PackageManager"

    const-string v0, "Attempt to get size of null packageName."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 6523
    :goto_e
    return v0

    .line 6491
    :cond_f
    const/4 v7, 0x0

    .line 6492
    .local v7, dataOnly:Z
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6493
    :try_start_13
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Package;

    .line 6494
    .local v8, p:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_53

    .line 6495
    const/4 v7, 0x1

    .line 6496
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6497
    .local v9, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v9, :cond_30

    iget-object v1, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_51

    .line 6498
    :cond_30
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6499
    monitor-exit v0

    move v0, v11

    goto :goto_e

    .line 6501
    :cond_51
    iget-object v8, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6503
    .end local v9           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_7b

    .line 6504
    const/4 v3, 0x0

    .line 6505
    .local v3, publicSrcDir:Ljava/lang/String;
    if-nez v7, :cond_87

    .line 6506
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6507
    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_7e

    .line 6508
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no applicationInfo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 6509
    goto :goto_e

    .line 6503
    .end local v3           #publicSrcDir:Ljava/lang/String;
    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v8           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1

    .line 6511
    .restart local v3       #publicSrcDir:Ljava/lang/String;
    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Package;
    :cond_7e
    invoke-static {v8}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v3, v0

    .line 6513
    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_87
    :goto_87
    invoke-static {v8}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    .line 6514
    .local v5, useEncryptedFSDir:Z
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v0, :cond_a4

    .line 6515
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;Z)I

    move-result v10

    .line 6517
    .local v10, res:I
    if-gez v10, :cond_a1

    move v0, v11

    .line 6518
    goto/16 :goto_e

    .line 6511
    .end local v5           #useEncryptedFSDir:Z
    .end local v10           #res:I
    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_9e
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_87

    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #useEncryptedFSDir:Z
    .restart local v10       #res:I
    :cond_a1
    move v0, v12

    .line 6520
    goto/16 :goto_e

    .end local v10           #res:I
    :cond_a4
    move v0, v12

    .line 6523
    goto/16 :goto_e
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 2531
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2532
    .local v0, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2533
    .local v2, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "uiderrors.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2534
    .local v1, fname:Ljava/io/File;
    return-object v1
.end method

.method static getTempContainerId()Ljava/lang/String;
    .registers 11

    .prologue
    const-string v10, "smdl2tmp"

    .line 9691
    const/4 v7, 0x1

    .line 9692
    .local v7, tmpIdx:I
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v4

    .line 9693
    .local v4, list:[Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 9694
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_30

    aget-object v5, v0, v2

    .line 9696
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_1a

    const-string v8, "smdl2tmp"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 9694
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 9700
    :cond_1d
    const-string v8, "smdl2tmp"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 9702
    .local v6, subStr:Ljava/lang/String;
    :try_start_27
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_44

    move-result v1

    .line 9703
    .local v1, cid:I
    if-lt v1, v7, :cond_1a

    .line 9704
    add-int/lit8 v7, v1, 0x1

    goto :goto_1a

    .line 9710
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cid:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #subStr:Ljava/lang/String;
    :cond_30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smdl2tmp"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 9706
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #subStr:Ljava/lang/String;
    :catch_44
    move-exception v8

    goto :goto_1a
.end method

.method private grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 24
    .parameter "pkg"
    .parameter "replace"

    .prologue
    .line 3875
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 3876
    .local v16, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v16, :cond_b

    .line 4021
    :goto_a
    return-void

    .line 3879
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    if-eqz v18, :cond_158

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 3880
    .local v9, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1b
    const/4 v8, 0x0

    .line 3882
    .local v8, changedPermission:Z
    if-eqz p2, :cond_3e

    .line 3883
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    .line 3884
    move-object v0, v9

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3e

    .line 3885
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    .line 3886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 3890
    :cond_3e
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_50

    .line 3891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 3894
    :cond_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3895
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5b
    if-ge v10, v3, :cond_37c

    .line 3896
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3897
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3904
    .local v7, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v7, :cond_34f

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v18, v0

    if-eqz v18, :cond_34f

    .line 3905
    iget-object v15, v7, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    .line 3907
    .local v15, perm:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3908
    .local v6, allowedSig:Z
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    if-eqz v18, :cond_a1

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15c

    .line 3910
    :cond_a1
    const/4 v5, 0x1

    .line 3952
    .local v5, allowed:Z
    :cond_a2
    :goto_a2
    if-eqz v5, :cond_275

    .line 3953
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_125

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_125

    .line 3957
    if-nez v6, :cond_125

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_125

    .line 3958
    const/4 v5, 0x0

    .line 3962
    sget-object v18, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    .line 3963
    .local v4, NP:I
    const/4 v11, 0x0

    .local v11, ip:I
    :goto_ce
    if-ge v11, v4, :cond_125

    .line 3964
    sget-object v18, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v13, v18, v11

    .line 3966
    .local v13, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_221

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v18, v0

    move-object v0, v13

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_221

    .line 3968
    const/4 v5, 0x1

    .line 3969
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Auto-granting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to old pkg "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    .end local v4           #NP:I
    .end local v11           #ip:I
    .end local v13           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_125
    if-eqz v5, :cond_242

    .line 3977
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_225

    .line 3978
    const/4 v8, 0x1

    .line 3979
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3980
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 3895
    .end local v5           #allowed:Z
    .end local v6           #allowedSig:Z
    .end local v15           #perm:Ljava/lang/String;
    :cond_154
    :goto_154
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5b

    .end local v3           #N:I
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #changedPermission:Z
    .end local v9           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v10           #i:I
    .end local v12           #name:Ljava/lang/String;
    :cond_158
    move-object/from16 v9, v16

    .line 3879
    goto/16 :goto_1b

    .line 3911
    .restart local v3       #N:I
    .restart local v6       #allowedSig:Z
    .restart local v7       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v8       #changedPermission:Z
    .restart local v9       #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .restart local v10       #i:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #perm:Ljava/lang/String;
    :cond_15c
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v18, v0

    if-nez v18, :cond_166

    .line 3913
    const/4 v5, 0x0

    .restart local v5       #allowed:Z
    goto/16 :goto_a2

    .line 3914
    .end local v5           #allowed:Z
    :cond_166
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_180

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_21e

    .line 3916
    :cond_180
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v18

    if-eqz v18, :cond_1bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v18

    if-nez v18, :cond_212

    :cond_1bf
    const/16 v18, 0x1

    move/from16 v5, v18

    .line 3921
    .restart local v5       #allowed:Z
    :goto_1c3
    if-nez v5, :cond_20d

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20d

    .line 3923
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v18

    if-eqz v18, :cond_20d

    .line 3926
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v18

    if-eqz v18, :cond_21c

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v17

    .line 3929
    .local v17, sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    if-eqz v18, :cond_217

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    move-object/from16 v14, v18

    .line 3931
    .local v14, origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1fe
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21a

    .line 3932
    const/4 v5, 0x1

    .line 3941
    .end local v14           #origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v17           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_20d
    :goto_20d
    if-eqz v5, :cond_a2

    .line 3942
    const/4 v6, 0x1

    goto/16 :goto_a2

    .line 3916
    .end local v5           #allowed:Z
    :cond_212
    const/16 v18, 0x0

    move/from16 v5, v18

    goto :goto_1c3

    .restart local v5       #allowed:Z
    .restart local v17       #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_217
    move-object/from16 v14, v17

    .line 3929
    goto :goto_1fe

    .line 3934
    .restart local v14       #origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_21a
    const/4 v5, 0x0

    goto :goto_20d

    .line 3937
    .end local v14           #origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v17           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_21c
    const/4 v5, 0x1

    goto :goto_20d

    .line 3945
    .end local v5           #allowed:Z
    :cond_21e
    const/4 v5, 0x0

    .restart local v5       #allowed:Z
    goto/16 :goto_a2

    .line 3963
    .restart local v4       #NP:I
    .restart local v11       #ip:I
    .restart local v13       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_221
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_ce

    .line 3981
    .end local v4           #NP:I
    .end local v11           #ip:I
    .end local v13           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_225
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->haveGids:Z

    move/from16 v18, v0

    if-nez v18, :cond_154

    .line 3982
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    goto/16 :goto_154

    .line 3985
    :cond_242
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Not granting permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " because it was previously installed without"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 3990
    :cond_275
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f3

    .line 3991
    const/4 v8, 0x1

    .line 3992
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/PackageManagerService;->removeInts([I[I)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 3993
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Un-granting permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (protectionLevel="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 3999
    :cond_2f3
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Not granting permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (protectionLevel="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 4007
    .end local v5           #allowed:Z
    .end local v6           #allowedSig:Z
    .end local v15           #perm:Ljava/lang/String;
    :cond_34f
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 4012
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v12           #name:Ljava/lang/String;
    :cond_37c
    if-nez v8, :cond_380

    if-eqz p2, :cond_392

    :cond_380
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v18, v0

    if-nez v18, :cond_392

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_3a0

    :cond_392
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_3a8

    .line 4018
    :cond_3a0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    .line 4020
    :cond_3a8
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->haveGids:Z

    goto/16 :goto_a
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgInfo"
    .parameter "perm"

    .prologue
    const/4 v2, 0x1

    .line 3784
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_22

    .line 3785
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    .line 3789
    :goto_1e
    return v1

    .line 3784
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3789
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private static ignoreCodePath(Ljava/lang/String;)Z
    .registers 6
    .parameter "fullPathStr"

    .prologue
    .line 5409
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5410
    .local v0, apkName:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5411
    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 5413
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5415
    .local v2, version:Ljava/lang/String;
    :try_start_1b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 5416
    const/4 v3, 0x1

    .line 5419
    .end local v2           #version:Ljava/lang/String;
    :goto_1f
    return v3

    .line 5417
    .restart local v2       #version:Ljava/lang/String;
    :catch_20
    move-exception v3

    .line 5419
    .end local v2           #version:Ljava/lang/String;
    :cond_21
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method private installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 15
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5456
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5458
    .local v8, pkgName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    .line 5459
    .local v6, dataDirExists:Z
    iput-object v8, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 5460
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 5461
    :try_start_f
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 5466
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to re-install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without first uninstalling package running as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    const/4 v1, -0x1

    iput v1, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5470
    monitor-exit v0

    .line 5505
    :cond_49
    :goto_49
    return-void

    .line 5472
    .restart local p0
    :cond_4a
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 5474
    :cond_5c
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to re-install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without first uninstalling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    const/4 v1, -0x1

    iput v1, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5477
    monitor-exit v0

    goto :goto_49

    .line 5479
    .end local p0
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_f .. :try_end_81} :catchall_7f

    throw v1

    .restart local p0
    :cond_82
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_7f

    .line 5480
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 5481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 5483
    .local v7, newPackage:Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_b9

    .line 5484
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package couldn\'t be installed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    iget v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    iput v0, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 5486
    const/4 v0, -0x2

    iput v0, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_49

    .line 5489
    :cond_b9
    invoke-direct {p0, v7, p4, p5}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 5494
    iget v0, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    .line 5499
    const/4 v2, 0x0

    if-eqz v6, :cond_d0

    const/4 v0, 0x1

    move v3, v0

    :goto_c6
    iget-object v4, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    goto/16 :goto_49

    :cond_d0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_c6
.end method

.method static installOnSd(I)Z
    .registers 3
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 687
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_9

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_b

    :cond_9
    move v0, v1

    .line 694
    :goto_a
    return v0

    .line 691
    :cond_b
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_11

    .line 692
    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    move v0, v1

    .line 694
    goto :goto_a
.end method

.method private installPackageLI(Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 26
    .parameter "args"
    .parameter "newInstall"
    .parameter "res"

    .prologue
    .line 5767
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->flags:I

    move v15, v0

    .line 5768
    .local v15, pFlags:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    move-object v9, v0

    .line 5769
    .local v9, installerPackageName:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5770
    .local v21, tmpPackageFile:Ljava/io/File;
    and-int/lit8 v5, v15, 0x1

    if-eqz v5, :cond_7d

    const/4 v5, 0x1

    move v11, v5

    .line 5771
    .local v11, forwardLocked:Z
    :goto_1c
    and-int/lit8 v5, v15, 0x8

    if-eqz v5, :cond_80

    const/4 v5, 0x1

    move v14, v5

    .line 5772
    .local v14, onSd:Z
    :goto_22
    const/16 v19, 0x0

    .line 5773
    .local v19, replace:Z
    if-eqz v14, :cond_83

    const/4 v5, 0x0

    :goto_27
    or-int/lit8 v5, v5, 0x4

    or-int/lit8 v5, v5, 0x8

    if-eqz p2, :cond_85

    const/16 v6, 0x10

    :goto_2f
    or-int v8, v5, v6

    .line 5776
    .local v8, scanMode:I
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5779
    if-eqz v11, :cond_87

    const/16 v5, 0x10

    :goto_3b
    or-int/lit8 v5, v5, 0x2

    if-eqz v14, :cond_89

    const/16 v6, 0x20

    :goto_41
    or-int v7, v5, v6

    .line 5782
    .local v7, parseFlags:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/2addr v7, v5

    .line 5783
    new-instance v17, Landroid/content/pm/PackageParser;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 5784
    .local v17, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 5785
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 5787
    .local v6, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_8b

    .line 5788
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5857
    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local p2
    :goto_7c
    return-void

    .line 5770
    .end local v7           #parseFlags:I
    .end local v8           #scanMode:I
    .end local v11           #forwardLocked:Z
    .end local v14           #onSd:Z
    .end local v17           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #replace:Z
    .restart local p2
    :cond_7d
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1c

    .line 5771
    .restart local v11       #forwardLocked:Z
    :cond_80
    const/4 v5, 0x0

    move v14, v5

    goto :goto_22

    .line 5773
    .restart local v14       #onSd:Z
    .restart local v19       #replace:Z
    :cond_83
    const/4 v5, 0x1

    goto :goto_27

    :cond_85
    const/4 v6, 0x0

    goto :goto_2f

    .line 5779
    .restart local v8       #scanMode:I
    :cond_87
    const/4 v5, 0x0

    goto :goto_3b

    :cond_89
    const/4 v6, 0x0

    goto :goto_41

    .line 5791
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v7       #parseFlags:I
    .restart local v17       #pp:Landroid/content/pm/PackageParser;
    :cond_8b
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 5792
    .local v16, pkgName:Ljava/lang/String;
    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_aa

    .line 5793
    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_aa

    .line 5794
    const/16 v5, -0xf

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_7c

    .line 5798
    :cond_aa
    move-object/from16 v0, v17

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v5

    if-nez v5, :cond_be

    .line 5799
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_7c

    .line 5803
    :cond_be
    const/16 v17, 0x0

    .line 5804
    const/4 v12, 0x0

    .line 5805
    .local v12, oldCodePath:Ljava/lang/String;
    const/16 v20, 0x0

    .line 5806
    .local v20, systemApp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5808
    and-int/lit8 v10, v15, 0x2

    if-eqz v10, :cond_fe

    .line 5809
    :try_start_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5810
    .local v13, oldName:Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v10, :cond_15e

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v10, v0

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15e

    .line 5817
    invoke-virtual {v6, v13}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 5818
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 5819
    const/16 v19, 0x1

    .line 5826
    .end local v13           #oldName:Ljava/lang/String;
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5827
    .local v18, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v18, :cond_149

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object v12, v0

    .line 5829
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    if-eqz v10, :cond_149

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_149

    .line 5830
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_16f

    const/4 v10, 0x1

    move/from16 v20, v10

    .line 5834
    :cond_149
    :goto_149
    monitor-exit v5
    :try_end_14a
    .catchall {:try_start_cd .. :try_end_14a} :catchall_173

    .line 5836
    if-eqz v20, :cond_176

    if-eqz v14, :cond_176

    .line 5838
    const-string v5, "PackageManager"

    const-string v6, "Cannot install updates to system apps on sdcard"

    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    const/16 v5, -0x13

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_7c

    .line 5820
    .end local v18           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v13       #oldName:Ljava/lang/String;
    .restart local p2
    :cond_15e
    :try_start_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fe

    .line 5823
    const/16 v19, 0x1

    goto :goto_fe

    .line 5830
    .end local v13           #oldName:Ljava/lang/String;
    .end local p2
    .restart local v18       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_16f
    const/4 v10, 0x0

    move/from16 v20, v10

    goto :goto_149

    .line 5834
    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_173
    move-exception v6

    monitor-exit v5
    :try_end_175
    .catchall {:try_start_15e .. :try_end_175} :catchall_173

    throw v6

    .line 5843
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v18       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_176
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v16

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$InstallArgs;->doRename(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18f

    .line 5844
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_7c

    .line 5848
    :cond_18f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v5, v10}, Lcom/android/server/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 5849
    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 5850
    if-eqz v19, :cond_1ad

    move-object/from16 v5, p0

    move-object/from16 v10, p3

    .line 5851
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_7c

    :cond_1ad
    move-object/from16 v5, p0

    move-object/from16 v10, p3

    .line 5854
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_7c
.end method

.method private static isExternal(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .parameter "pkg"

    .prologue
    .line 5904
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .parameter "pkg"

    .prologue
    .line 5900
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 3780
    if-eqz p0, :cond_c

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .parameter "info"

    .prologue
    .line 5912
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isSystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .parameter "pkg"

    .prologue
    .line 5908
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .parameter "pkg"

    .prologue
    .line 5916
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private killApplication(Ljava/lang/String;I)V
    .registers 5
    .parameter "pkgName"
    .parameter "uid"

    .prologue
    .line 3607
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3608
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_9

    .line 3610
    :try_start_6
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationWithUid(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3614
    :cond_9
    :goto_9
    return-void

    .line 3611
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method private loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V
    .registers 27
    .parameter
    .parameter "uidArr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9849
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    .local p3, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 9850
    .local v21, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    .line 9851
    .local v19, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    const/16 v17, 0x0

    .line 9852
    .local v17, doGc:Z
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_127

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .line 9853
    .local v14, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 9856
    .local v16, codePath:Ljava/lang/String;
    const/16 v22, -0x12

    .line 9859
    .local v22, retCode:I
    const/4 v5, 0x1

    :try_start_27
    invoke-virtual {v14, v5}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPreInstall(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5d

    .line 9861
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to mount cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when installing from sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_f5

    .line 9892
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 9894
    iget-object v5, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    :goto_56
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 9866
    :cond_5d
    if-eqz v16, :cond_6c

    :try_start_5f
    invoke-virtual {v14}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 9867
    :cond_6c
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cachepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match one in settings "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_5f .. :try_end_a1} :catchall_f5

    .line 9892
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 9894
    iget-object v5, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto :goto_56

    .line 9872
    :cond_aa
    :try_start_aa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/lit8 v7, v5, 0x20

    .line 9873
    .local v7, parseFlags:I
    const/16 v17, 0x1

    .line 9874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v11, v0

    monitor-enter v11
    :try_end_b9
    .catchall {:try_start_aa .. :try_end_b9} :catchall_f5

    .line 9875
    :try_start_b9
    new-instance v6, Ljava/io/File;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 9878
    .local v20, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_105

    .line 9879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_f2

    .line 9880
    const/16 v22, 0x1

    .line 9881
    :try_start_d4
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9883
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPostInstall(I)I

    .line 9884
    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_ef

    .line 9889
    .end local v7           #parseFlags:I
    :goto_e4
    :try_start_e4
    monitor-exit v11
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_f2

    .line 9892
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 9894
    iget-object v5, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto/16 :goto_56

    .line 9884
    .restart local v7       #parseFlags:I
    :catchall_ef
    move-exception v6

    :try_start_f0
    monitor-exit v5
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v6

    .line 9889
    .end local v7           #parseFlags:I
    .end local v20           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_f2
    move-exception v5

    monitor-exit v11
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw v5
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    .line 9892
    :catchall_f5
    move-exception v5

    const/4 v6, 0x1

    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_104

    .line 9894
    iget-object v6, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9892
    :cond_104
    throw v5

    .line 9886
    .restart local v7       #parseFlags:I
    .restart local v20       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_105
    :try_start_105
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install pkg from  "

    .end local v7           #parseFlags:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_105 .. :try_end_126} :catchall_f2

    goto :goto_e4

    .line 9898
    .end local v14           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v16           #codePath:Ljava/lang/String;
    .end local v20           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v22           #retCode:I
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 9905
    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    if-eq v6, v7, :cond_1e3

    const/4 v6, 0x1

    move v12, v6

    .line 9907
    .local v12, regrantPermissions:Z
    :goto_13d
    if-eqz v12, :cond_173

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Platform changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v8, v0

    iget v8, v8, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; regranting permissions for external storage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9910
    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    iput v7, v6, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    .line 9914
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v8, p0

    move v13, v12

    invoke-direct/range {v8 .. v13}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 9916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 9917
    monitor-exit v5
    :try_end_191
    .catchall {:try_start_12d .. :try_end_191} :catchall_1e7

    .line 9919
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1a4

    .line 9920
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 9923
    :cond_1a4
    if-eqz v17, :cond_1ad

    .line 9924
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 9927
    :cond_1ad
    if-eqz p3, :cond_209

    .line 9928
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1b3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_209

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 9929
    .local v15, cid:Ljava/lang/String;
    const-string v5, "smdl2tmp"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ea

    .line 9930
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destroying stale temporary container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9931
    invoke-static {v15}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_1b3

    .line 9905
    .end local v12           #regrantPermissions:Z
    .end local v15           #cid:Ljava/lang/String;
    :cond_1e3
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_13d

    .line 9917
    :catchall_1e7
    move-exception v6

    :try_start_1e8
    monitor-exit v5
    :try_end_1e9
    .catchall {:try_start_1e8 .. :try_end_1e9} :catchall_1e7

    throw v6

    .line 9933
    .restart local v12       #regrantPermissions:Z
    .restart local v15       #cid:Ljava/lang/String;
    :cond_1ea
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is stale"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b3

    .line 9937
    .end local v15           #cid:Ljava/lang/String;
    :cond_209
    return-void
.end method

.method public static final main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;
    .registers 4
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 698
    new-instance v0, Lcom/android/server/PackageManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService;-><init>(Landroid/content/Context;Z)V

    .line 699
    .local v0, m:Lcom/android/server/PackageManagerService;
    const-string v1, "package"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 700
    return-object v0
.end method

.method private moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    .registers 7
    .parameter "newPackage"

    .prologue
    const-string v4, "PackageManager"

    .line 5707
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_34

    .line 5708
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/Installer;->movedex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5709
    .local v0, retCode:I
    if-eqz v0, :cond_34

    .line 5710
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    if-eqz v1, :cond_36

    .line 5716
    const-string v1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dex file doesn\'t exist, skipping move: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    .end local v0           #retCode:I
    :cond_34
    const/4 v1, 0x1

    :goto_35
    return v1

    .line 5718
    .restart local v0       #retCode:I
    :cond_36
    const-string v1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t rename dex file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    const/4 v1, -0x4

    goto :goto_35
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I
    .registers 13
    .parameter "pkg"
    .parameter "forceDex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "PackageManager"

    .line 2753
    const/4 v2, 0x0

    .line 2754
    .local v2, performed:Z
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_96

    .line 2755
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 2756
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2758
    .local v3, ret:I
    if-nez p2, :cond_1c

    :try_start_16
    invoke-static {v1}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2759
    :cond_1c
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-nez v6, :cond_35

    move v6, v8

    :goto_29
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I

    move-result v3

    .line 2761
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_30} :catch_37
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_30} :catch_53
    .catch Ldalvik/system/StaleDexCacheError; {:try_start_16 .. :try_end_30} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_8b

    .line 2762
    const/4 v2, 0x1

    .line 2777
    :cond_31
    :goto_31
    if-gez v3, :cond_96

    .line 2779
    const/4 v4, -0x1

    .line 2783
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :goto_34
    return v4

    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_35
    move v6, v9

    .line 2759
    goto :goto_29

    .line 2764
    :catch_37
    move-exception v4

    move-object v0, v4

    .line 2765
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apk not found for dexopt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const/4 v3, -0x1

    .line 2776
    goto :goto_31

    .line 2767
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_53
    move-exception v4

    move-object v0, v4

    .line 2768
    .local v0, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2769
    const/4 v3, -0x1

    .line 2776
    goto :goto_31

    .line 2770
    .end local v0           #e:Ljava/io/IOException;
    :catch_6f
    move-exception v4

    move-object v0, v4

    .line 2771
    .local v0, e:Ldalvik/system/StaleDexCacheError;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StaleDexCacheError when reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2772
    const/4 v3, -0x1

    .line 2776
    goto :goto_31

    .line 2773
    .end local v0           #e:Ldalvik/system/StaleDexCacheError;
    :catch_8b
    move-exception v4

    move-object v0, v4

    .line 2774
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PackageManager"

    const-string v4, "Exception when doing dexopt : "

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2775
    const/4 v3, -0x1

    goto :goto_31

    .line 2783
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :cond_96
    if-eqz v2, :cond_9a

    move v4, v8

    goto :goto_34

    :cond_9a
    move v4, v9

    goto :goto_34
.end method

.method private processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V
    .registers 5
    .parameter "args"
    .parameter "currentStatus"

    .prologue
    .line 4550
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageManagerService$5;-><init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$InstallArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 4619
    return-void
.end method

.method private processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V
    .registers 5
    .parameter "mp"
    .parameter "currentStatus"

    .prologue
    .line 10069
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageManagerService$13;-><init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$MoveParams;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 10207
    return-void
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .registers 23
    .parameter "permFile"

    .prologue
    .line 1120
    const/4 v13, 0x0

    .line 1122
    .local v13, permReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v14, Ljava/io/FileReader;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_29

    .line 1129
    .end local v13           #permReader:Ljava/io/FileReader;
    .local v14, permReader:Ljava/io/FileReader;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1130
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1132
    const-string v18, "permissions"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1135
    :goto_18
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1136
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1e} :catch_82
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_af

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_49

    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_27
    move-object v13, v14

    .line 1237
    .end local v14           #permReader:Ljava/io/FileReader;
    .restart local v13       #permReader:Ljava/io/FileReader;
    :goto_28
    return-void

    .line 1123
    :catch_29
    move-exception v18

    move-object/from16 v3, v18

    .line 1124
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1140
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v13           #permReader:Ljava/io/FileReader;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #permReader:Ljava/io/FileReader;
    :cond_49
    :try_start_49
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1141
    .local v10, name:Ljava/lang/String;
    const-string v18, "group"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c0

    .line 1142
    const/16 v18, 0x0

    const-string v19, "gid"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1143
    .local v7, gidStr:Ljava/lang/String;
    if-eqz v7, :cond_92

    .line 1144
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1145
    .local v6, gid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    .line 1151
    .end local v6           #gid:I
    :goto_7e
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_81} :catch_82
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_81} :catch_af

    goto :goto_18

    .line 1232
    .end local v7           #gidStr:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_82
    move-exception v18

    move-object/from16 v3, v18

    .line 1233
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "PackageManager"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1147
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #gidStr:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_92
    :try_start_92
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<group> without gid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_ae} :catch_82
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_ae} :catch_af

    goto :goto_7e

    .line 1234
    .end local v7           #gidStr:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_af
    move-exception v18

    move-object/from16 v3, v18

    .line 1235
    .local v3, e:Ljava/io/IOException;
    const-string v18, "PackageManager"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1153
    .end local v3           #e:Ljava/io/IOException;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_c0
    :try_start_c0
    const-string v18, "permission"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_108

    .line 1154
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1155
    .local v12, perm:Ljava/lang/String;
    if-nez v12, :cond_fb

    .line 1156
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1161
    :cond_fb
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 1162
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1164
    .end local v12           #perm:Ljava/lang/String;
    :cond_108
    const-string v18, "assign-permission"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d9

    .line 1165
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1166
    .restart local v12       #perm:Ljava/lang/String;
    if-nez v12, :cond_143

    .line 1167
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1172
    :cond_143
    const/16 v18, 0x0

    const-string v19, "uid"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1173
    .local v17, uidStr:Ljava/lang/String;
    if-nez v17, :cond_173

    .line 1174
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without uid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1179
    :cond_173
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v16

    .line 1180
    .local v16, uid:I
    if-gez v16, :cond_1a8

    .line 1181
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1187
    :cond_1a8
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 1189
    .local v15, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v15, :cond_1d1

    .line 1190
    new-instance v15, Ljava/util/HashSet;

    .end local v15           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1191
    .restart local v15       #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1193
    :cond_1d1
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1194
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1196
    .end local v12           #perm:Ljava/lang/String;
    .end local v15           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #uid:I
    .end local v17           #uidStr:Ljava/lang/String;
    :cond_1d9
    const-string v18, "library"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24e

    .line 1197
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1198
    .local v9, lname:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "file"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1199
    .local v8, lfile:Ljava/lang/String;
    if-nez v9, :cond_221

    .line 1200
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :goto_21c
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1202
    :cond_221
    if-nez v8, :cond_240

    .line 1203
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without file at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    .line 1207
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21c

    .line 1212
    .end local v8           #lfile:Ljava/lang/String;
    .end local v9           #lname:Ljava/lang/String;
    :cond_24e
    const-string v18, "feature"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29e

    .line 1213
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, fname:Ljava/lang/String;
    if-nez v5, :cond_289

    .line 1215
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<feature> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_284
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 1219
    :cond_289
    new-instance v4, Landroid/content/pm/FeatureInfo;

    invoke-direct {v4}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1220
    .local v4, fi:Landroid/content/pm/FeatureInfo;
    iput-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_284

    .line 1227
    .end local v4           #fi:Landroid/content/pm/FeatureInfo;
    .end local v5           #fname:Ljava/lang/String;
    :cond_29e
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_2a1} :catch_82
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_2a1} :catch_af

    goto/16 :goto_18
.end method

.method static removeInt([II)[I
    .registers 8
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1301
    if-nez p0, :cond_6

    .line 1302
    const/4 v3, 0x0

    .line 1317
    :goto_5
    return-object v3

    .line 1304
    :cond_6
    array-length v0, p0

    .line 1305
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_28

    .line 1306
    aget v3, p0, v1

    if-ne v3, p1, :cond_25

    .line 1307
    sub-int v3, v0, v5

    new-array v2, v3, [I

    .line 1308
    .local v2, ret:[I
    if-lez v1, :cond_17

    .line 1309
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    :cond_17
    sub-int v3, v0, v5

    if-ge v1, v3, :cond_23

    .line 1312
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    sub-int/2addr v4, v5

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    move-object v3, v2

    .line 1314
    goto :goto_5

    .line 1305
    .end local v2           #ret:[I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    move-object v3, p0

    .line 1317
    goto :goto_5
.end method

.method static removeInts([I[I)[I
    .registers 5
    .parameter "cur"
    .parameter "rem"

    .prologue
    .line 1321
    if-nez p1, :cond_3

    .line 1327
    :cond_2
    return-object p0

    .line 1322
    :cond_3
    if-eqz p0, :cond_2

    .line 1323
    array-length v0, p1

    .line 1324
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_2

    .line 1325
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->removeInt([II)[I

    move-result-object p0

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;IZ)V
    .registers 23
    .parameter "p"
    .parameter "outInfo"
    .parameter "flags"
    .parameter "writeSettings"

    .prologue
    .line 6129
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v13, v0

    .line 6130
    .local v13, packageName:Ljava/lang/String;
    if-eqz p2, :cond_c

    .line 6131
    move-object v0, v13

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 6133
    :cond_c
    const/high16 v3, 0x1

    and-int v3, v3, p3

    if-eqz v3, :cond_eb

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 6136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    monitor-enter v3

    .line 6137
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6138
    .local v10, deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_ee

    .line 6139
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_7a

    .line 6140
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v17

    .line 6141
    .local v17, useEncryptedFSDir:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v3, v0

    if-eqz v3, :cond_f1

    .line 6142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v13

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    move-result v16

    .line 6143
    .local v16, retCode:I
    if-gez v16, :cond_74

    .line 6144
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove app data or cache directory for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6154
    .end local v16           #retCode:I
    :cond_74
    :goto_74
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->schedulePackageCleaning(Ljava/lang/String;)V

    .line 6156
    .end local v17           #useEncryptedFSDir:Z
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    monitor-enter v9

    .line 6157
    if-eqz v10, :cond_127

    .line 6158
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_b4

    .line 6159
    if-eqz p2, :cond_96

    .line 6160
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-static {v3, v13}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 6162
    :cond_96
    if-eqz v10, :cond_b4

    .line 6163
    iget-object v4, v10, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 6164
    iget-object v3, v10, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_b4

    .line 6166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object v4, v0

    invoke-static {v3, v10, v4}, Lcom/android/server/PackageManagerService$Settings;->access$3200(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    .line 6171
    :cond_b4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6172
    .local v15, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_ca
    :goto_ca
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6173
    .local v12, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v12, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 6174
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 6185
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v15           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_e8
    move-exception v3

    monitor-exit v9
    :try_end_ea
    .catchall {:try_start_88 .. :try_end_ea} :catchall_e8

    throw v3

    .line 6133
    .end local v10           #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_eb
    const/4 v3, 0x0

    goto/16 :goto_13

    .line 6138
    :catchall_ee
    move-exception v4

    :try_start_ef
    monitor-exit v3
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    throw v4

    .line 6150
    .restart local v10       #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v17       #useEncryptedFSDir:Z
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    .line 6151
    .local v14, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v9, Ljava/io/File;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6152
    .local v9, dataDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_74

    .line 6177
    .end local v9           #dataDir:Ljava/io/File;
    .end local v14           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v17           #useEncryptedFSDir:Z
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_10a
    :try_start_10a
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6178
    .restart local v12       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    goto :goto_10e

    .line 6181
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v15           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_127
    if-eqz p4, :cond_131

    .line 6183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 6185
    :cond_131
    monitor-exit v9
    :try_end_132
    .catchall {:try_start_10a .. :try_end_132} :catchall_e8

    .line 6186
    return-void
.end method

.method private replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 30
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5535
    const/16 v17, 0x0

    .line 5536
    .local v17, newPackage:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 5537
    .local v5, pkgName:Ljava/lang/String;
    const/16 v16, 0x1

    .line 5538
    .local v16, deletedPkg:Z
    const/16 v22, 0x0

    .line 5540
    .local v22, updatedSettings:Z
    const/16 v18, 0x0

    .line 5541
    .local v18, oldInstallerPackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    .line 5542
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/android/server/PackageManagerService$Settings;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5543
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_87

    .line 5546
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v4, v0

    if-eqz v4, :cond_8a

    .line 5547
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    move-wide/from16 v20, v0

    .line 5553
    .local v20, origUpdateTime:J
    :goto_30
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v8, v0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 5556
    const/16 v4, -0xa

    move v0, v4

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5557
    const/16 v16, 0x0

    .line 5576
    :cond_49
    :goto_49
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v4, v0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_86

    .line 5581
    if-eqz v22, :cond_60

    .line 5582
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v8, v0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    .line 5589
    :cond_60
    if-eqz v16, :cond_86

    .line 5590
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5591
    .local v7, restoreFile:Ljava/io/File;
    if-nez v7, :cond_e6

    .line 5592
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed allocating storage when restoring pkg : "

    .end local v7           #restoreFile:Ljava/io/File;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #pkgName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    :cond_86
    :goto_86
    return-void

    .line 5543
    .end local v20           #origUpdateTime:J
    :catchall_87
    move-exception v5

    :try_start_88
    monitor-exit v4
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v5

    .line 5549
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_8a
    const-wide/16 v20, 0x0

    .restart local v20       #origUpdateTime:J
    goto :goto_30

    .line 5560
    :cond_8d
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 5561
    or-int/lit8 v9, p4, 0x40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 5563
    if-nez v17, :cond_d7

    .line 5564
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_49

    .line 5566
    const/4 v4, -0x2

    move v0, v4

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_49

    .line 5569
    :cond_d7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 5572
    const/16 v22, 0x1

    goto/16 :goto_49

    .line 5596
    .restart local v7       #restoreFile:Ljava/io/File;
    :cond_e6
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    .line 5597
    .local v19, oldOnSd:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x2

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_131

    const/16 v6, 0x10

    :goto_f9
    or-int/2addr v4, v6

    if-eqz v19, :cond_133

    const/16 v6, 0x20

    :goto_fe
    or-int v8, v4, v6

    .line 5600
    .local v8, oldParseFlags:I
    if-eqz v19, :cond_135

    const/4 v4, 0x0

    :goto_103
    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v9, v4, 0x40

    .local v9, oldScanMode:I
    move-object/from16 v6, p0

    move-wide/from16 v10, v20

    .line 5602
    invoke-direct/range {v6 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-nez v4, :cond_137

    .line 5604
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to restore package : "

    .end local v7           #restoreFile:Ljava/io/File;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #pkgName:Ljava/lang/String;
    const-string v6, " after failed upgrade"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    .line 5597
    .end local v8           #oldParseFlags:I
    .end local v9           #oldScanMode:I
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v7       #restoreFile:Ljava/io/File;
    :cond_131
    const/4 v6, 0x0

    goto :goto_f9

    :cond_133
    const/4 v6, 0x0

    goto :goto_fe

    .line 5600
    .restart local v8       #oldParseFlags:I
    :cond_135
    const/4 v4, 0x1

    goto :goto_103

    .line 5608
    .restart local v9       #oldScanMode:I
    :cond_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    .line 5609
    :try_start_13d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v11, v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 5611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5612
    monitor-exit v4
    :try_end_155
    .catchall {:try_start_13d .. :try_end_155} :catchall_175

    .line 5613
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully restored package : "

    .end local v7           #restoreFile:Ljava/io/File;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #pkgName:Ljava/lang/String;
    const-string v6, " after failed upgrade"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    .line 5612
    .restart local v7       #restoreFile:Ljava/io/File;
    :catchall_175
    move-exception v5

    :try_start_176
    monitor-exit v4
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    throw v5
.end method

.method private replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 15
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5513
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5515
    .local v7, pkgName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 5516
    :try_start_5
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 5517
    .local v1, oldPackage:Landroid/content/pm/PackageParser$Package;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 5519
    const/16 v2, -0x68

    iput v2, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5520
    monitor-exit v0

    .line 5529
    :goto_1c
    return-void

    .line 5522
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2e

    .line 5523
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    .line 5524
    .local v8, sysPkg:Z
    if-eqz v8, :cond_31

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 5525
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService;->replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_1c

    .line 5522
    .end local v1           #oldPackage:Landroid/content/pm/PackageParser$Package;
    .end local v8           #sysPkg:Z
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2

    .restart local v1       #oldPackage:Landroid/content/pm/PackageParser$Package;
    .restart local v8       #sysPkg:Z
    :cond_31
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 5527
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService;->replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_1c
.end method

.method private replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 24
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5622
    const/4 v11, 0x0

    .line 5623
    .local v11, newPackage:Landroid/content/pm/PackageParser$Package;
    const/16 v16, 0x0

    .line 5624
    .local v16, updatedSettings:Z
    or-int/lit8 p3, p3, 0x3

    .line 5626
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v15, v0

    .line 5627
    .local v15, packageName:Ljava/lang/String;
    const/16 v5, -0xa

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5628
    if-nez v15, :cond_1b

    .line 5629
    const-string v5, "PackageManager"

    const-string v6, "Attempt to delete null packageName."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5702
    :cond_1a
    :goto_1a
    return-void

    .line 5634
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5635
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Package;

    .line 5636
    .local v13, oldPkg:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5637
    .local v14, oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v13, :cond_43

    iget-object v6, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_43

    if-nez v14, :cond_66

    .line 5639
    :cond_43
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " information"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5640
    monitor-exit v5

    goto :goto_1a

    .line 5642
    .end local v13           #oldPkg:Landroid/content/pm/PackageParser$Package;
    .end local v14           #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_63
    move-exception v6

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_21 .. :try_end_65} :catchall_63

    throw v6

    .restart local v13       #oldPkg:Landroid/content/pm/PackageParser$Package;
    .restart local v14       #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_66
    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_63

    .line 5644
    iget-object v5, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    .line 5646
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v5, v0

    iget-object v6, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 5647
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v5, v0

    iput-object v15, v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 5649
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5651
    :try_start_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v15}, Lcom/android/server/PackageManagerService$Settings;->disableSystemPackageLP(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_169

    if-eqz p1, :cond_169

    .line 5655
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v6, v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_165

    const/16 v7, 0x8

    :goto_ac
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5663
    :goto_cd
    monitor-exit v5
    :try_end_ce
    .catchall {:try_start_92 .. :try_end_ce} :catchall_173

    .line 5666
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 5667
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5668
    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 5669
    if-nez v11, :cond_176

    .line 5670
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11f

    .line 5672
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5684
    :cond_11f
    :goto_11f
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1a

    .line 5687
    if-eqz v11, :cond_131

    .line 5688
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 5691
    :cond_131
    const/16 v8, 0x9

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move-object v6, v13

    move/from16 v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    .line 5693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5694
    if-eqz v16, :cond_157

    .line 5695
    :try_start_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v15}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v7, v14, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v15, v7}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 5699
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5700
    monitor-exit v5

    goto/16 :goto_1a

    :catchall_162
    move-exception v6

    monitor-exit v5
    :try_end_164
    .catchall {:try_start_145 .. :try_end_164} :catchall_162

    throw v6

    .line 5655
    :cond_165
    const/16 v7, 0x10

    goto/16 :goto_ac

    .line 5661
    :cond_169
    :try_start_169
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    goto/16 :goto_cd

    .line 5663
    :catchall_173
    move-exception v6

    monitor-exit v5
    :try_end_175
    .catchall {:try_start_169 .. :try_end_175} :catchall_173

    throw v6

    .line 5675
    :cond_176
    iget-object v5, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_188

    .line 5676
    iget-object v12, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5677
    .local v12, newPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-wide v5, v14, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    iput-wide v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    .line 5678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    .line 5680
    .end local v12           #newPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_188
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 5681
    const/16 v16, 0x1

    goto :goto_11f
.end method

.method private static reportSettingsProblem(ILjava/lang/String;)V
    .registers 11
    .parameter "priority"
    .parameter "msg"

    .prologue
    .line 2539
    :try_start_0
    invoke-static {}, Lcom/android/server/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v1

    .line 2540
    .local v1, fname:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2541
    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2542
    .local v4, pw:Ljava/io/PrintWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 2543
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2544
    .local v0, dateString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2546
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_4f

    .line 2552
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #fname:Ljava/io/File;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #pw:Ljava/io/PrintWriter;
    :goto_49
    const-string v5, "PackageManager"

    invoke-static {p0, v5, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 2553
    return-void

    .line 2550
    :catch_4f
    move-exception v5

    goto :goto_49
.end method

.method private scanDirLI(Ljava/io/File;IIJ)V
    .registers 16
    .parameter "dir"
    .parameter "flags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    const-string v9, "PackageManager"

    .line 2501
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 2502
    .local v6, files:[Ljava/lang/String;
    if-nez v6, :cond_21

    .line 2503
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files in app dir "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_20
    return-void

    .line 2512
    :cond_21
    const/4 v7, 0x0

    .local v7, i:I
    :goto_22
    array-length v0, v6

    if-ge v7, v0, :cond_20

    .line 2513
    new-instance v1, Ljava/io/File;

    aget-object v0, v6, v7

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2514
    .local v1, file:Ljava/io/File;
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2512
    :cond_34
    :goto_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 2518
    :cond_37
    or-int/lit8 v2, p2, 0x4

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 2521
    .local v8, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_34

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_34

    .line 2524
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up failed install of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_34
.end method

.method private scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;
    .registers 59
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    .line 2819
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2820
    .local v46, scanFile:Ljava/io/File;
    if-eqz v46, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v5, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v5, :cond_30

    .line 2823
    :cond_21
    const-string v5, "PackageManager"

    const-string v6, " Code and resource paths haven\'t been set correctly"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2825
    const/4 v5, 0x0

    .line 3600
    .end local p1
    .end local p3
    :goto_2f
    return-object v5

    .line 2827
    .restart local p1
    .restart local p3
    :cond_30
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    .line 2828
    if-nez p1, :cond_41

    .line 2829
    const/16 v5, -0x6a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2830
    const/4 v5, 0x0

    goto :goto_2f

    .line 2833
    :cond_41
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_50

    .line 2834
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2837
    :cond_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 2839
    :try_start_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    if-eqz v6, :cond_a6

    .line 2840
    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const-string v6, "PackageManager"

    const-string v7, "Core android package being redefined.  Skipping."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    const/4 v6, -0x5

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2845
    const/4 v6, 0x0

    monitor-exit v5

    move-object v5, v6

    goto :goto_2f

    .line 2850
    :cond_a6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    .line 2851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 2852
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const-class v7, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/16 v7, 0x20

    iput v7, v6, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const v7, 0x10300a4

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->match:I

    .line 2866
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 2868
    monitor-exit v5
    :try_end_15d
    .catchall {:try_start_63 .. :try_end_15d} :catchall_1ca

    .line 2871
    :cond_15d
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_17e

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cd

    .line 2875
    :cond_19e
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already installed.  Skipping duplicate."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2878
    const/4 v5, 0x0

    goto/16 :goto_2f

    .line 2868
    :catchall_1ca
    move-exception v6

    :try_start_1cb
    monitor-exit v5
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    throw v6

    .line 2882
    :cond_1cd
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2883
    .local v10, destCodeFile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2885
    .local v11, destResourceFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 2886
    .local v9, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v40, 0x0

    .line 2888
    .local v40, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_200

    .line 2890
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2891
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2892
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2895
    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2897
    :try_start_207
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-nez v5, :cond_215

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_36e

    .line 2898
    :cond_215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_22d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_23d

    .line 2900
    :cond_22d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    .line 2902
    :cond_23d
    const/16 v30, 0x0

    .line 2903
    .local v30, num:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_2be

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v16, v5

    .line 2904
    .local v16, N:I
    :goto_251
    const/16 v24, 0x0

    .local v24, i:I
    :goto_253
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_2ce

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2906
    .local v22, file:Ljava/lang/String;
    if-nez v22, :cond_2c2

    .line 2907
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires unavailable shared library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; failing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    const/16 v5, -0x9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2911
    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_2f

    .line 3108
    .end local v16           #N:I
    .end local v22           #file:Ljava/lang/String;
    .end local v24           #i:I
    .end local v30           #num:I
    :catchall_2bb
    move-exception v5

    monitor-exit v17
    :try_end_2bd
    .catchall {:try_start_207 .. :try_end_2bd} :catchall_2bb

    throw v5

    .line 2903
    .restart local v30       #num:I
    .restart local p1
    :cond_2be
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_251

    .line 2913
    .restart local v16       #N:I
    .restart local v22       #file:Ljava/lang/String;
    .restart local v24       #i:I
    :cond_2c2
    :try_start_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    aput-object v22, v5, v30

    .line 2914
    add-int/lit8 v30, v30, 0x1

    .line 2904
    add-int/lit8 v24, v24, 0x1

    goto :goto_253

    .line 2916
    .end local v22           #file:Ljava/lang/String;
    :cond_2ce
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_33f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v16, v5

    .line 2917
    :goto_2e0
    const/16 v24, 0x0

    :goto_2e2
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_34d

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2919
    .restart local v22       #file:Ljava/lang/String;
    if-nez v22, :cond_343

    .line 2920
    const-string v6, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " desires unavailable shared library "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; ignoring!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :goto_33c
    add-int/lit8 v24, v24, 0x1

    goto :goto_2e2

    .line 2916
    .end local v22           #file:Ljava/lang/String;
    :cond_33f
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_2e0

    .line 2924
    .restart local v22       #file:Ljava/lang/String;
    :cond_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    aput-object v22, v5, v30

    .line 2925
    add-int/lit8 v30, v30, 0x1

    goto :goto_33c

    .line 2928
    .end local v22           #file:Ljava/lang/String;
    :cond_34d
    if-lez v30, :cond_36e

    .line 2929
    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move v3, v8

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2935
    .end local v16           #N:I
    .end local v24           #i:I
    .end local v30           #num:I
    :cond_36e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_3f3

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v9

    .line 2938
    if-nez v9, :cond_3ba

    .line 2939
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for shared user failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2942
    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_2f

    .line 2944
    :cond_3ba
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3f3

    .line 2945
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared UserID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v9, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): packages="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :cond_3f3
    const/4 v7, 0x0

    .line 2961
    .local v7, origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v8, 0x0

    .line 2962
    .local v8, realName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_436

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 2966
    .local v43, renamed:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b3

    .line 2971
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    move-object v8, v0

    .line 2972
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_436

    .line 2976
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 3009
    .end local v43           #renamed:Ljava/lang/String;
    :cond_436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_469

    .line 3010
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " was transferred to another, but its .apk remains"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v13, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v40

    .line 3019
    if-nez v40, :cond_544

    .line 3020
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating application package "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3022
    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_2f

    .line 2980
    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v43       #renamed:Ljava/lang/String;
    :cond_4b3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v24, v5, v6

    .restart local v24       #i:I
    :goto_4bf
    if-ltz v24, :cond_436

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_4e6

    .line 2985
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_4e9

    .line 2987
    const/4 v7, 0x0

    .line 2980
    :cond_4e6
    :goto_4e6
    add-int/lit8 v24, v24, -0x1

    goto :goto_4bf

    .line 2989
    :cond_4e9
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_436

    .line 2991
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_436

    .line 2992
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to migrate data from "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ": old uid "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " differs from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const/4 v7, 0x0

    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    goto :goto_4e6

    .line 3025
    .end local v24           #i:I
    .end local v43           #renamed:Ljava/lang/String;
    :cond_544
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v5, v0

    if-eqz v5, :cond_591

    .line 3030
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 3033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " renamed to replace old package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3035
    .local v26, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3041
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3044
    .end local v26           #msg:Ljava/lang/String;
    :cond_591
    if-eqz v8, :cond_5a0

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3049
    :cond_5a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5bd

    .line 3050
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3053
    :cond_5bd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v6, v0

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3054
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    .line 3056
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_65e

    .line 3057
    and-int/lit8 v5, p2, 0x40

    if-nez v5, :cond_5e3

    .line 3058
    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_2f

    .line 3062
    :cond_5e3
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 3068
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    if-eqz v5, :cond_639

    .line 3069
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-eqz v5, :cond_639

    .line 3071
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature mismatch for shared user : "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const/16 v5, -0x68

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3073
    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_2f

    .line 3077
    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " signature changed; retaining data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3079
    .restart local v26       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3086
    .end local v26           #msg:Ljava/lang/String;
    :cond_65e
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_716

    .line 3087
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3089
    .restart local v16       #N:I
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_66d
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_716

    .line 3090
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Provider;

    .line 3091
    .local v34, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_712

    .line 3092
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 3093
    .local v27, names:[Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, j:I
    :goto_699
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_712

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v27, v25

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70f

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v27, v25

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Provider;

    .line 3096
    .local v33, other:Landroid/content/pm/PackageParser$Provider;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t install because provider name "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v27, v25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is already used by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v33, :cond_70c

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_70c

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_6f6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    const/16 v5, -0xd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3102
    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_2f

    .line 3096
    :cond_70c
    const-string v7, "?"

    goto :goto_6f6

    .line 3093
    .end local v33           #other:Landroid/content/pm/PackageParser$Provider;
    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_70f
    add-int/lit8 v25, v25, 0x1

    goto :goto_699

    .line 3089
    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    :cond_712
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_66d

    .line 3108
    .end local v16           #N:I
    .end local v24           #i:I
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_716
    monitor-exit v17
    :try_end_717
    .catchall {:try_start_2c2 .. :try_end_717} :catchall_2bb

    .line 3110
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 3112
    .local v39, pkgName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_798

    .line 3115
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v24, v5, v6

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v24       #i:I
    :goto_730
    if-ltz v24, :cond_798

    .line 3116
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 3117
    .local v32, origName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v31

    .line 3118
    .local v31, orig:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v31, :cond_795

    .line 3119
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_795

    .line 3120
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adopting permissions from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v32

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->access$1300(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    :cond_795
    add-int/lit8 v24, v24, -0x1

    goto :goto_730

    .line 3128
    .end local v24           #i:I
    .end local v31           #orig:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v32           #origName:Ljava/lang/String;
    :cond_798
    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->lastModified()J

    move-result-wide v48

    .line 3129
    .local v48, scanFileTime:J
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_8a6

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 3130
    .local v23, forceDex:Z
    :goto_7a3
    if-nez v23, :cond_7ae

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    move-wide v5, v0

    cmp-long v5, v48, v5

    if-eqz v5, :cond_8ab

    :cond_7ae
    const/4 v5, 0x1

    move/from16 v47, v5

    .line 3131
    .local v47, scanFileNewer:Z
    :goto_7b1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    .end local v8           #realName:Ljava/lang/String;
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7, v8}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_8b0

    .line 3139
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "system"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3140
    .local v20, dataPath:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3259
    :goto_7f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_b7d

    .line 3260
    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v36

    .line 3262
    .local v36, path:Ljava/lang/String;
    if-eqz v47, :cond_885

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v5, :cond_885

    .line 3263
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3264
    .local v28, nativeLibraryDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 3266
    .local v21, dataPathString:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_84b

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_84b

    .line 3274
    invoke-static/range {v28 .. v28}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_84b

    .line 3275
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removed obsolete native libraries for system package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_84b
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4d

    .line 3287
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unpacking native libraries for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->unlinkNativeLibraryDirectory(Ljava/lang/String;)I

    .line 3289
    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesLI(Ljava/io/File;Ljava/io/File;)I

    .line 3296
    .end local v21           #dataPathString:Ljava/lang/String;
    .end local v28           #nativeLibraryDir:Ljava/io/File;
    :cond_885
    :goto_885
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 3298
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_b7d

    .line 3299
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b7d

    .line 3300
    const/16 v5, -0xb

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3301
    const/4 v5, 0x0

    goto/16 :goto_2f

    .line 3129
    .end local v20           #dataPath:Ljava/io/File;
    .end local v23           #forceDex:Z
    .end local v36           #path:Ljava/lang/String;
    .end local v47           #scanFileNewer:Z
    .restart local v8       #realName:Ljava/lang/String;
    :cond_8a6
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_7a3

    .line 3130
    .restart local v23       #forceDex:Z
    :cond_8ab
    const/4 v5, 0x0

    move/from16 v47, v5

    goto/16 :goto_7b1

    .line 3143
    .end local v8           #realName:Ljava/lang/String;
    .restart local v47       #scanFileNewer:Z
    :cond_8b0
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v52

    .line 3144
    .local v52, useEncryptedFSDir:Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v20

    .line 3146
    .restart local v20       #dataPath:Ljava/io/File;
    const/16 v51, 0x0

    .line 3148
    .local v51, uidError:Z
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ab3

    .line 3149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 3150
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 3154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v6, :cond_a65

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-eqz v5, :cond_a65

    .line 3155
    const/16 v42, 0x0

    .line 3156
    .local v42, recovered:Z
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_9ad

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_9a5

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v39

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    move-result v44

    .line 3161
    .local v44, ret:I
    if-ltz v44, :cond_9a5

    .line 3163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed from uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; old data erased"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3167
    .restart local v26       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3168
    const/16 v42, 0x1

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v39

    move/from16 v2, v52

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/Installer;->install(Ljava/lang/String;ZII)I

    move-result v44

    .line 3173
    const/4 v5, -0x1

    move/from16 v0, v44

    move v1, v5

    if-ne v0, v1, :cond_9a5

    .line 3175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not have data directory re-created after delete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3177
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3178
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3179
    const/4 v5, 0x0

    goto/16 :goto_2f

    .line 3183
    .end local v26           #msg:Ljava/lang/String;
    .end local v44           #ret:I
    :cond_9a5
    if-nez v42, :cond_9ad

    .line 3184
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    .line 3187
    :cond_9ad
    if-nez v42, :cond_a65

    .line 3188
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mismatched_uid/settings_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/fs_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3191
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has mismatched uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on disk, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3196
    .restart local v26       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3197
    :try_start_a37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3199
    const/16 v51, 0x1

    .line 3200
    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->uidError:Z

    move v6, v0

    if-nez v6, :cond_a64

    .line 3201
    const/4 v6, 0x6

    move v0, v6

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3203
    :cond_a64
    monitor-exit v5
    :try_end_a65
    .catchall {:try_start_a37 .. :try_end_a65} :catchall_ab0

    .line 3206
    .end local v26           #msg:Ljava/lang/String;
    .end local v42           #recovered:Z
    :cond_a65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3245
    :goto_a70
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v5, :cond_aa8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v5, :cond_aa8

    .line 3246
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_b3f

    .line 3247
    new-instance v5, Ljava/io/File;

    const-string v6, "lib"

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    .line 3248
    .local v29, nativeLibraryPath:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v29

    move-object v1, v5

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3249
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 3255
    .end local v29           #nativeLibraryPath:Ljava/lang/String;
    :cond_aa8
    :goto_aa8
    move/from16 v0, v51

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->uidError:Z

    goto/16 :goto_7f5

    .line 3203
    .restart local v26       #msg:Ljava/lang/String;
    .restart local v42       #recovered:Z
    :catchall_ab0
    move-exception v6

    :try_start_ab1
    monitor-exit v5
    :try_end_ab2
    .catchall {:try_start_ab1 .. :try_end_ab2} :catchall_ab0

    throw v6

    .line 3208
    .end local v26           #msg:Ljava/lang/String;
    .end local v42           #recovered:Z
    :cond_ab3
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_ab7

    .line 3211
    :cond_ab7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_ae7

    .line 3212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v39

    move/from16 v2, v52

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/Installer;->install(Ljava/lang/String;ZII)I

    move-result v44

    .line 3214
    .restart local v44       #ret:I
    if-gez v44, :cond_b07

    .line 3216
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3217
    const/4 v5, 0x0

    goto/16 :goto_2f

    .line 3220
    .end local v44           #ret:I
    :cond_ae7
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 3221
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b07

    .line 3222
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3228
    :cond_b07
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b1a

    .line 3229
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_a70

    .line 3231
    :cond_b1a
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create data directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_a70

    .line 3251
    :cond_b3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    move-object v6, v0

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto/16 :goto_aa8

    .line 3291
    .end local v51           #uidError:Z
    .end local v52           #useEncryptedFSDir:Z
    .restart local v21       #dataPathString:Ljava/lang/String;
    .restart local v28       #nativeLibraryDir:Ljava/io/File;
    .restart local v36       #path:Ljava/lang/String;
    :cond_b4d
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Linking native library dir for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_885

    .line 3306
    .end local v21           #dataPathString:Ljava/lang/String;
    .end local v28           #nativeLibraryDir:Ljava/io/File;
    .end local v36           #path:Ljava/lang/String;
    :cond_b7d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    move v5, v0

    if-eqz v5, :cond_b9c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    const-string v6, "android.permission.FACTORY_TEST"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9c

    .line 3308
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3314
    :cond_b9c
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_bb5

    .line 3315
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    .line 3319
    :cond_bb5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3321
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_bd0

    .line 3322
    :try_start_bbf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3325
    :cond_bd0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->access$1500(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 3327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3332
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_d4b

    .line 3333
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_d3c

    .line 3334
    move-wide/from16 v0, p4

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    move-wide/from16 v0, p4

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    .line 3349
    :cond_c1a
    :goto_c1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3350
    .restart local v16       #N:I
    const/16 v41, 0x0

    .line 3352
    .local v41, r:Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local v24       #i:I
    :goto_c27
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_e25

    .line 3353
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Provider;

    .line 3354
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move v0, v6

    move-object/from16 v1, v34

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 3359
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v6, :cond_dfb

    .line 3360
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 3361
    .restart local v27       #names:[Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 3362
    const/16 v25, 0x0

    .restart local v25       #j:I
    move-object/from16 v35, v34

    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .local v35, p:Landroid/content/pm/PackageParser$Provider;
    :goto_ca8
    move-object/from16 v0, v27

    array-length v0, v0

    move v6, v0

    move/from16 v0, v25

    move v1, v6

    if-ge v0, v1, :cond_df9

    .line 3363
    const/4 v6, 0x1

    move/from16 v0, v25

    move v1, v6

    if-ne v0, v1, :cond_144b

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    move v6, v0

    if-eqz v6, :cond_144b

    .line 3371
    new-instance v34, Landroid/content/pm/PackageParser$Provider;

    invoke-direct/range {v34 .. v35}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 3372
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v34

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 3374
    :goto_cc9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v27, v25

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_da2

    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v27, v25

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v6, :cond_d79

    .line 3377
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    aget-object v7, v27, v25

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 3381
    :goto_cf6
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_d36

    .line 3382
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered content provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v27, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", className = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSyncable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_d36
    :goto_d36
    add-int/lit8 v25, v25, 0x1

    move-object/from16 v35, v34

    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_ca8

    .line 3335
    .end local v16           #N:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v41           #r:Ljava/lang/StringBuilder;
    .restart local v9       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_d3c
    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_c1a

    .line 3336
    move-wide/from16 v0, p4

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    goto/16 :goto_c1a

    .line 3598
    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .end local p3
    :catchall_d48
    move-exception v6

    monitor-exit v5
    :try_end_d4a
    .catchall {:try_start_bbf .. :try_end_d4a} :catchall_d48

    throw v6

    .line 3338
    .restart local v9       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local p3
    :cond_d4b
    :try_start_d4b
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_d64

    .line 3340
    move-wide/from16 v0, v48

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    move-wide/from16 v0, v48

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    goto/16 :goto_c1a

    .line 3341
    :cond_d64
    and-int/lit8 v6, p2, 0x40

    if-eqz v6, :cond_c1a

    .line 3342
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    move-wide v6, v0

    cmp-long v6, v48, v6

    if-eqz v6, :cond_c1a

    .line 3345
    move-wide/from16 v0, v48

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    goto/16 :goto_c1a

    .line 3379
    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local v16       #N:I
    .restart local v24       #i:I
    .restart local v25       #j:I
    .restart local v27       #names:[Ljava/lang/String;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :cond_d79
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v27, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto/16 :goto_cf6

    .line 3386
    :cond_da2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v27, v25

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Provider;

    .line 3387
    .restart local v33       #other:Landroid/content/pm/PackageParser$Provider;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping provider name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v27, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (in package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): name already used by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v33, :cond_df6

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_df6

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_de9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d36

    :cond_df6
    const-string v8, "?"

    goto :goto_de9

    .end local v33           #other:Landroid/content/pm/PackageParser$Provider;
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_df9
    move-object/from16 v34, v35

    .line 3395
    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_dfb
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_e18

    .line 3396
    if-nez v41, :cond_e1c

    .line 3397
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3401
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_e0b
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3352
    :cond_e18
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_c27

    .line 3399
    :cond_e1c
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e0b

    .line 3404
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_e25
    if-eqz v41, :cond_e42

    .line 3405
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    :cond_e42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3409
    const/16 v41, 0x0

    .line 3410
    const/16 v24, 0x0

    :goto_e4f
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_eb7

    .line 3411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/pm/PackageParser$Service;

    .line 3412
    .local v45, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 3415
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_eab

    .line 3416
    if-nez v41, :cond_eae

    .line 3417
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3421
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_e9e
    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3410
    :cond_eab
    add-int/lit8 v24, v24, 0x1

    goto :goto_e4f

    .line 3419
    :cond_eae
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e9e

    .line 3424
    .end local v45           #s:Landroid/content/pm/PackageParser$Service;
    :cond_eb7
    if-eqz v41, :cond_ed4

    .line 3425
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Services: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    :cond_ed4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3429
    const/16 v41, 0x0

    .line 3430
    const/16 v24, 0x0

    :goto_ee1
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_f4c

    .line 3431
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Activity;

    .line 3432
    .local v17, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "receiver"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3435
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_f40

    .line 3436
    if-nez v41, :cond_f43

    .line 3437
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3441
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_f33
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3430
    :cond_f40
    add-int/lit8 v24, v24, 0x1

    goto :goto_ee1

    .line 3439
    :cond_f43
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f33

    .line 3444
    .end local v17           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_f4c
    if-eqz v41, :cond_f69

    .line 3445
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_f69
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3449
    const/16 v41, 0x0

    .line 3450
    const/16 v24, 0x0

    :goto_f76
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_fe1

    .line 3451
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Activity;

    .line 3452
    .restart local v17       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "activity"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3455
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_fd5

    .line 3456
    if-nez v41, :cond_fd8

    .line 3457
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3461
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_fc8
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3450
    :cond_fd5
    add-int/lit8 v24, v24, 0x1

    goto :goto_f76

    .line 3459
    :cond_fd8
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fc8

    .line 3464
    .end local v17           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_fe1
    if-eqz v41, :cond_ffe

    .line 3465
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :cond_ffe
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3469
    const/16 v41, 0x0

    .line 3470
    const/16 v24, 0x0

    :goto_100b
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_10df

    .line 3471
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3472
    .local v38, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3473
    .local v19, cur:Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v19, :cond_106f

    .line 3474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3475
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1063

    .line 3476
    if-nez v41, :cond_1066

    .line 3477
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3481
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_1056
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3470
    :cond_1063
    :goto_1063
    add-int/lit8 v24, v24, 0x1

    goto :goto_100b

    .line 3479
    :cond_1066
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1056

    .line 3484
    :cond_106f
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1063

    .line 3488
    if-nez v41, :cond_10d6

    .line 3489
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3493
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_10c0
    const-string v6, "DUP:"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1063

    .line 3491
    :cond_10d6
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10c0

    .line 3498
    .end local v19           #cur:Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v38           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_10df
    if-eqz v41, :cond_10fc

    .line 3499
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permission Groups: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    :cond_10fc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3503
    const/16 v41, 0x0

    .line 3504
    const/16 v24, 0x0

    .end local p3
    :goto_1109
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_1335

    .line 3505
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Permission;

    .line 3506
    .local v34, p:Landroid/content/pm/PackageParser$Permission;
    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    move v6, v0

    if-eqz v6, :cond_1220

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v37, v6

    .line 3509
    .local v37, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_112d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    iput-object v0, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3510
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v6, :cond_1155

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v6, v0

    if-eqz v6, :cond_12f4

    .line 3511
    :cond_1155
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3512
    .local v18, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v18, :cond_118f

    .line 3513
    new-instance v18, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v18           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3515
    .restart local v18       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    :cond_118f
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    if-nez v6, :cond_12c4

    .line 3518
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_11af

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1283

    .line 3520
    :cond_11af
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v50

    .line 3521
    .local v50, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v50, :cond_11d1

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1234

    .line 3523
    :cond_11d1
    move-object/from16 v0, v40

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3524
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 3525
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 3526
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1206

    .line 3527
    if-nez v41, :cond_122b

    .line 3528
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3532
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_11f9
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    .end local v50           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_1206
    :goto_1206
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_121c

    .line 3555
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 3504
    .end local v18           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_121c
    :goto_121c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1109

    .line 3506
    .end local v37           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v37, v6

    goto/16 :goto_112d

    .line 3530
    .restart local v18       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v37       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    .restart local v50       #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_122b
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11f9

    .line 3535
    :cond_1234
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: base tree "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1206

    .line 3541
    .end local v50           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_1283
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1206

    .line 3545
    :cond_12c4
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1206

    .line 3546
    if-nez v41, :cond_12eb

    .line 3547
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3551
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_12d4
    const-string v6, "DUP:"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1206

    .line 3549
    :cond_12eb
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12d4

    .line 3558
    .end local v18           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_12f4
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: no group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121c

    .line 3563
    .end local v34           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v37           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_1335
    if-eqz v41, :cond_1352

    .line 3564
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permissions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :cond_1352
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3568
    const/16 v41, 0x0

    .line 3569
    const/16 v24, 0x0

    :goto_135f
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_13f3

    .line 3570
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Instrumentation;

    .line 3571
    .local v17, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 3572
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 3573
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3574
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 3575
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3577
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_13e6

    .line 3578
    if-nez v41, :cond_13ea

    .line 3579
    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3583
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_13d9
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3569
    :cond_13e6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_135f

    .line 3581
    :cond_13ea
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13d9

    .line 3586
    .end local v17           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_13f3
    if-eqz v41, :cond_1410

    .line 3587
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Instrumentation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    :cond_1410
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    if-eqz v6, :cond_143f

    .line 3591
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3592
    const/16 v24, 0x0

    :goto_1422
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_143f

    .line 3593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3592
    add-int/lit8 v24, v24, 0x1

    goto :goto_1422

    .line 3597
    :cond_143f
    move-object/from16 v0, v40

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 3598
    monitor-exit v5
    :try_end_1447
    .catchall {:try_start_d4b .. :try_end_1447} :catchall_d48

    move-object/from16 v5, p1

    .line 3600
    goto/16 :goto_2f

    .restart local v25       #j:I
    .restart local v27       #names:[Ljava/lang/String;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local p3
    :cond_144b
    move-object/from16 v34, v35

    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .local v34, p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_cc9
.end method

.method private scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    .registers 27
    .parameter "scanFile"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    .line 2588
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2589
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 2590
    .local v19, scanPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int p2, p2, v5

    .line 2591
    new-instance v6, Landroid/content/pm/PackageParser;

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 2592
    .local v6, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v5, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object v3, v5

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 2595
    .local v8, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_3f

    .line 2596
    invoke-virtual {v6}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2597
    const/4 v5, 0x0

    .line 2687
    .end local v6           #pp:Landroid/content/pm/PackageParser;
    :goto_3e
    return-object v5

    .line 2599
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    :cond_3f
    const/4 v7, 0x0

    .line 2601
    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 2603
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2604
    .local v17, oldName:Ljava/lang/String;
    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v9, :cond_70

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    .line 2610
    :cond_70
    if-nez v7, :cond_7d

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    .line 2616
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    if-eqz v7, :cond_f0

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    :goto_88
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2618
    .local v20, updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_46 .. :try_end_8f} :catchall_f3

    .line 2620
    if-eqz v20, :cond_170

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_170

    .line 2621
    if-eqz v7, :cond_170

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_170

    .line 2625
    iget v5, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v9, v7, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    if-ge v5, v9, :cond_f6

    .line 2628
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " at "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ignored: updated version "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v7, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " better than this "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2632
    const/4 v5, 0x0

    goto/16 :goto_3e

    .line 2616
    .end local v20           #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_f0
    :try_start_f0
    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    goto :goto_88

    .line 2618
    .end local v6           #pp:Landroid/content/pm/PackageParser;
    .end local v17           #oldName:Ljava/lang/String;
    :catchall_f3
    move-exception v6

    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_f3

    throw v6

    .line 2640
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    .restart local v17       #oldName:Ljava/lang/String;
    .restart local v20       #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 2642
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2643
    monitor-exit v5
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_19d

    .line 2644
    const-string v5, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "reverting from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": new version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " better than installed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    new-instance v15, Lcom/android/server/PackageManagerService$FileInstallArgs;

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    .local v15, args:Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-virtual {v15}, Lcom/android/server/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2655
    .end local v15           #args:Lcom/android/server/PackageManagerService$InstallArgs;
    :cond_170
    if-eqz v20, :cond_174

    .line 2657
    or-int/lit8 p2, p2, 0x1

    :cond_174
    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 2660
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z

    move-result v5

    if-nez v5, :cond_1a0

    .line 2661
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed verifying certificates for package:"

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const/4 v5, 0x0

    goto/16 :goto_3e

    .line 2643
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_19d
    move-exception v6

    :try_start_19e
    monitor-exit v5
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_19d

    throw v6

    .line 2667
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    :cond_1a0
    if-eqz v7, :cond_1ae

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1ae

    .line 2668
    or-int/lit8 p2, p2, 0x10

    .line 2671
    :cond_1ae
    const/16 v16, 0x0

    .line 2672
    .local v16, codePath:Ljava/lang/String;
    const/16 v18, 0x0

    .line 2673
    .local v18, resPath:Ljava/lang/String;
    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_1f8

    .line 2674
    if-eqz v7, :cond_1dd

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    if-eqz v5, :cond_1dd

    .line 2675
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2683
    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_1c1
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2685
    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    or-int/lit8 v12, p3, 0x8

    move-object/from16 v9, p0

    move-object v10, v8

    move/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    goto/16 :goto_3e

    .line 2678
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1dd
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource path not set for pkg : "

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c1

    .line 2681
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1f8
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_1c1
.end method

.method private static final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    .registers 15
    .parameter "action"
    .parameter "pkg"
    .parameter "extras"
    .parameter "finishedReceiver"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4375
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4376
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_2f

    .line 4378
    :try_start_8
    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_13

    const-string v1, "package"

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_13
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4380
    .local v2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1b

    .line 4381
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4383
    :cond_1b
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4384
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p3, :cond_30

    const/4 v4, 0x1

    move v9, v4

    :goto_2a
    const/4 v10, 0x0

    move-object v4, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2f} :catch_32

    .line 4389
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2f
    :goto_2f
    return-void

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_30
    move v9, v4

    .line 4384
    goto :goto_2a

    .line 4386
    .end local v2           #intent:Landroid/content/Intent;
    :catch_32
    move-exception v1

    goto :goto_2f
.end method

.method private sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .registers 9
    .parameter "packageName"
    .parameter "killFlag"
    .parameter
    .parameter "packageUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6814
    .local p3, componentNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6815
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.changed_component_name"

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6816
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 6817
    .local v1, nameList:[Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6818
    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6819
    const-string v2, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6820
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6821
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6822
    return-void
.end method

.method private sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .registers 10
    .parameter "mediaStatus"
    .parameter
    .parameter "uidArr"
    .parameter "finishedReceiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[I",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9826
    .local p2, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 9827
    .local v2, size:I
    if-lez v2, :cond_28

    .line 9829
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9830
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.changed_package_list"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9832
    if-eqz p3, :cond_1f

    .line 9833
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9835
    :cond_1f
    if-eqz p1, :cond_29

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v0, v3

    .line 9837
    .local v0, action:Ljava/lang/String;
    :goto_24
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p4}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 9839
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_28
    return-void

    .line 9835
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_29
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v3

    goto :goto_24
.end method

.method private static setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "pkg"
    .parameter "destCodePath"
    .parameter "destResPath"

    .prologue
    .line 2692
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 2693
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2694
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2695
    return-void
.end method

.method private setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 27
    .parameter "packageName"
    .parameter "className"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 6709
    if-eqz p3, :cond_2f

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_2f

    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_2f

    .line 6712
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid new component state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 6716
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 6717
    .local v16, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v13

    .line 6719
    .local v13, permission:I
    if-nez v13, :cond_90

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 6720
    .local v5, allowedByPermission:Z
    :goto_45
    const/4 v15, 0x0

    .line 6721
    .local v15, sendNow:Z
    if-nez p2, :cond_95

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 6722
    .local v10, isApp:Z
    :goto_4c
    if-eqz v10, :cond_9a

    move-object/from16 v8, p1

    .line 6723
    .local v8, componentName:Ljava/lang/String;
    :goto_50
    const/4 v12, -0x1

    .line 6725
    .local v12, packageUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 6726
    :try_start_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6727
    .local v14, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v14, :cond_c8

    .line 6728
    if-nez p2, :cond_9d

    .line 6729
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6797
    .end local v14           #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_8d
    move-exception v18

    monitor-exit v17
    :try_end_8f
    .catchall {:try_start_58 .. :try_end_8f} :catchall_8d

    throw v18

    .line 6719
    .end local v5           #allowedByPermission:Z
    .end local v8           #componentName:Ljava/lang/String;
    .end local v10           #isApp:Z
    .end local v12           #packageUid:I
    .end local v15           #sendNow:Z
    :cond_90
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_45

    .line 6721
    .restart local v5       #allowedByPermission:Z
    .restart local v15       #sendNow:Z
    :cond_95
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_4c

    .restart local v10       #isApp:Z
    :cond_9a
    move-object/from16 v8, p2

    .line 6722
    goto :goto_50

    .line 6732
    .restart local v8       #componentName:Ljava/lang/String;
    .restart local v12       #packageUid:I
    .restart local v14       #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_9d
    :try_start_9d
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown component: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6736
    :cond_c8
    if-nez v5, :cond_10f

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_10f

    .line 6737
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: attempt to change component state from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", package uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6742
    :cond_10f
    if-nez p2, :cond_18d

    .line 6744
    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_11e

    .line 6746
    monitor-exit v17

    .line 6808
    :goto_11d
    return-void

    .line 6748
    :cond_11e
    move/from16 v0, p3

    move-object v1, v14

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    .line 6749
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 6773
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 6774
    iget v12, v14, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 6775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 6776
    .local v9, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_1d3

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 6777
    .local v11, newPackage:Z
    :goto_14f
    if-eqz v11, :cond_156

    .line 6778
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6780
    .restart local v9       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_156
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15f

    .line 6781
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6783
    :cond_15f
    and-int/lit8 v18, p4, 0x1

    if-nez v18, :cond_1d9

    .line 6784
    const/4 v15, 0x1

    .line 6787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6797
    :cond_171
    :goto_171
    monitor-exit v17
    :try_end_172
    .catchall {:try_start_9d .. :try_end_172} :catchall_8d

    .line 6799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6801
    .local v6, callingId:J
    if-eqz v15, :cond_189

    .line 6802
    and-int/lit8 v17, p4, 0x1

    if-eqz v17, :cond_206

    const/16 v17, 0x1

    :goto_17e
    :try_start_17e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v9

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    :try_end_189
    .catchall {:try_start_17e .. :try_end_189} :catchall_20a

    .line 6806
    :cond_189
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11d

    .line 6752
    .end local v6           #callingId:J
    .end local v9           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #newPackage:Z
    :cond_18d
    packed-switch p3, :pswitch_data_210

    .line 6769
    :try_start_190
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid new component state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6770
    monitor-exit v17

    goto/16 :goto_11d

    .line 6754
    :pswitch_1af
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->enableComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12e

    .line 6755
    monitor-exit v17

    goto/16 :goto_11d

    .line 6759
    :pswitch_1bb
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->disableComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12e

    .line 6760
    monitor-exit v17

    goto/16 :goto_11d

    .line 6764
    :pswitch_1c7
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->restoreComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12e

    .line 6765
    monitor-exit v17

    goto/16 :goto_11d

    .line 6776
    .restart local v9       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d3
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_14f

    .line 6789
    .restart local v11       #newPackage:Z
    :cond_1d9
    if-eqz v11, :cond_1e9

    .line 6790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6792
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_171

    .line 6794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/16 v20, 0x2710

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_204
    .catchall {:try_start_190 .. :try_end_204} :catchall_8d

    goto/16 :goto_171

    .line 6802
    .restart local v6       #callingId:J
    :cond_206
    const/16 v17, 0x0

    goto/16 :goto_17e

    .line 6806
    :catchall_20a
    move-exception v17

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 6752
    nop

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_1c7
        :pswitch_1af
        :pswitch_1bb
    .end packed-switch
.end method

.method private setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I
    .registers 13
    .parameter "newPackage"

    .prologue
    const/4 v9, -0x4

    const-string v10, "PackageManager"

    .line 5860
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5861
    .local v3, pkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 5864
    .local v4, retCode:I
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 5865
    new-instance v0, Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5867
    .local v0, destResourceFile:Ljava/io/File;
    :try_start_15
    invoke-direct {p0, p1, v0}, Lcom/android/server/PackageManagerService;->extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_54

    .line 5875
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v5, :cond_60

    .line 5876
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/Installer;->setForwardLockPerm(Ljava/lang/String;I)I

    move-result v4

    .line 5889
    .end local v0           #destResourceFile:Ljava/io/File;
    :cond_2c
    :goto_2c
    if-eqz v4, :cond_70

    .line 5890
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t set new package file permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". The return code was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 5896
    :goto_53
    return v5

    .line 5868
    .restart local v0       #destResourceFile:Ljava/io/File;
    :catch_54
    move-exception v1

    .line 5869
    .local v1, e:Ljava/io/IOException;
    :try_start_55
    const-string v5, "PackageManager"

    const-string v6, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5e

    move v5, v9

    .line 5871
    goto :goto_53

    .line 5872
    .end local v1           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v5

    throw v5

    .line 5879
    :cond_60
    const/16 v2, 0x1a0

    .line 5881
    .local v2, filePermissions:I
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    const/16 v6, 0x1a0

    const/4 v7, -0x1

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    goto :goto_2c

    .line 5896
    .end local v0           #destResourceFile:Ljava/io/File;
    .end local v2           #filePermissions:I
    :cond_70
    const/4 v5, 0x1

    goto :goto_53
.end method

.method static splitString(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 7
    .parameter "str"
    .parameter "sep"

    .prologue
    .line 704
    const/4 v0, 0x1

    .line 705
    .local v0, count:I
    const/4 v1, 0x0

    .line 706
    .local v1, i:I
    :goto_2
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_d

    .line 707
    add-int/lit8 v0, v0, 0x1

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 711
    :cond_d
    new-array v3, v0, [Ljava/lang/String;

    .line 712
    .local v3, res:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 713
    const/4 v0, 0x0

    .line 714
    const/4 v2, 0x0

    .line 715
    .local v2, lastI:I
    :goto_12
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_24

    .line 716
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 717
    add-int/lit8 v0, v0, 0x1

    .line 718
    add-int/lit8 v1, v1, 0x1

    .line 719
    move v2, v1

    goto :goto_12

    .line 721
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 722
    return-object v3
.end method

.method private unloadAllContainers(Ljava/util/Set;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9944
    .local p1, cidArgs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .line 9945
    .local v0, arg:Lcom/android/server/PackageManagerService$SdInstallArgs;
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9946
    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {v0, v3}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPostDeleteLI(Z)Z

    .line 9947
    monitor-exit v2

    goto :goto_4

    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v3

    .line 9949
    .end local v0           #arg:Lcom/android/server/PackageManagerService$SdInstallArgs;
    :cond_1c
    return-void
.end method

.method private unloadMediaPackages(Ljava/util/HashMap;[IZ)V
    .registers 23
    .parameter
    .parameter "uidArr"
    .parameter "reportStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    .prologue
    .line 9963
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 9964
    .local v17, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 9965
    .local v13, failedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 9966
    .local v15, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .line 9967
    .local v11, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    iget-object v12, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 9968
    .local v12, cid:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 9971
    .local v6, pkgName:Ljava/lang/String;
    new-instance v9, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v9}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 9972
    .local v9, outInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #cid:Ljava/lang/String;
    monitor-enter v12

    .line 9973
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    :try_start_34
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v18

    .line 9975
    .local v18, res:Z
    if-eqz v18, :cond_45

    .line 9976
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9981
    .end local v6           #pkgName:Ljava/lang/String;
    :goto_40
    monitor-exit v12

    goto :goto_12

    .end local v18           #res:Z
    :catchall_42
    move-exception v5

    monitor-exit v12
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    throw v5

    .line 9978
    .restart local v6       #pkgName:Ljava/lang/String;
    .restart local v18       #res:Z
    :cond_45
    :try_start_45
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete pkg from sdcard : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #pkgName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9979
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_42

    goto :goto_40

    .line 9984
    .end local v9           #outInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    .end local v11           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v18           #res:Z
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 9987
    :try_start_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 9988
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_8e

    .line 9994
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_91

    .line 9995
    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/PackageManagerService$12;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$12;-><init>(Lcom/android/server/PackageManagerService;ZLjava/util/Set;)V

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 10008
    :goto_8d
    return-void

    .line 9988
    :catchall_8e
    move-exception v6

    :try_start_8f
    monitor-exit v5
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v6

    .line 10004
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object v5, v0

    const/16 v6, 0xc

    if-eqz p3, :cond_ac

    const/4 v7, 0x1

    :goto_9b
    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8, v15}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 10006
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8d

    .line 10004
    .end local v16           #msg:Landroid/os/Message;
    :cond_ac
    const/4 v7, 0x0

    goto :goto_9b
.end method

.method private updateExternalMediaStatusInner(ZZ)V
    .registers 28
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    .line 9752
    const/16 v20, 0x0

    .line 9754
    .local v20, uidArr:[I
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 9756
    .local v18, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 9758
    .local v16, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v12

    .line 9759
    .local v12, list:[Ljava/lang/String;
    if-eqz v12, :cond_18

    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_30

    .line 9760
    :cond_18
    const-string v22, "PackageManager"

    const-string v23, "No secure containers on sdcard"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9814
    :cond_1f
    if-eqz p1, :cond_f4

    .line 9816
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V

    .line 9817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->startCleaningPackages()V

    .line 9822
    :goto_2f
    return-void

    .line 9764
    :cond_30
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 9765
    .local v21, uidList:[I
    const/4 v13, 0x0

    .line 9766
    .local v13, num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 9767
    move-object v5, v12

    .local v5, arr$:[Ljava/lang/String;
    :try_start_43
    array-length v11, v5
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_b2

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v14, v13

    .end local v13           #num:I
    .local v14, num:I
    :goto_46
    if-ge v10, v11, :cond_bd

    :try_start_48
    aget-object v6, v5, v10

    .line 9768
    .local v6, cid:Ljava/lang/String;
    new-instance v4, Lcom/android/server/PackageManagerService$SdInstallArgs;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;)V

    .line 9770
    .local v4, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 9771
    .local v15, pkgName:Ljava/lang/String;
    if-nez v15, :cond_64

    .line 9773
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v13, v14

    .line 9767
    .end local v14           #num:I
    .restart local v13       #num:I
    :goto_60
    add-int/lit8 v10, v10, 0x1

    move v14, v13

    .end local v13           #num:I
    .restart local v14       #num:I
    goto :goto_46

    .line 9777
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9780
    .local v17, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v17, :cond_b5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b5

    .line 9786
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9787
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v19, v0
    :try_end_a5
    .catchall {:try_start_48 .. :try_end_a5} :catchall_101

    .line 9788
    .local v19, uid:I
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_bb

    .line 9789
    add-int/lit8 v13, v14, 0x1

    .end local v14           #num:I
    .restart local v13       #num:I
    :try_start_af
    aput v19, v21, v14

    goto :goto_60

    .line 9797
    .end local v4           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v17           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v19           #uid:I
    :catchall_b2
    move-exception v23

    :goto_b3
    monitor-exit v22
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_b2

    throw v23

    .line 9794
    .end local v13           #num:I
    .restart local v4       #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .restart local v6       #cid:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #num:I
    .restart local v15       #pkgName:Ljava/lang/String;
    .restart local v17       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_b5
    :try_start_b5
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_bb
    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_60

    .line 9797
    .end local v4           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v13           #num:I
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v17           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v14       #num:I
    :cond_bd
    monitor-exit v22
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_101

    .line 9799
    if-lez v14, :cond_1f

    .line 9801
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v14

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 9803
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 9804
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget v23, v21, v23

    aput v23, v20, v22

    .line 9805
    const/4 v7, 0x0

    .line 9806
    .local v7, di:I
    const/4 v9, 0x1

    .local v9, i:I
    move v8, v7

    .end local v7           #di:I
    .local v8, di:I
    :goto_da
    if-ge v9, v14, :cond_1f

    .line 9807
    const/16 v22, 0x1

    sub-int v22, v9, v22

    aget v22, v21, v22

    aget v23, v21, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_104

    .line 9808
    add-int/lit8 v7, v8, 0x1

    .end local v8           #di:I
    .restart local v7       #di:I
    aget v22, v21, v9

    aput v22, v20, v8

    .line 9806
    :goto_f0
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #di:I
    .restart local v8       #di:I
    goto :goto_da

    .line 9820
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #di:I
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #num:I
    .end local v21           #uidList:[I
    :cond_f4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->unloadMediaPackages(Ljava/util/HashMap;[IZ)V

    goto/16 :goto_2f

    .line 9797
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #num:I
    .restart local v21       #uidList:[I
    :catchall_101
    move-exception v23

    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_b3

    .end local v13           #num:I
    .restart local v8       #di:I
    .restart local v9       #i:I
    .restart local v14       #num:I
    :cond_104
    move v7, v8

    .end local v8           #di:I
    .restart local v7       #di:I
    goto :goto_f0
.end method

.method private updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .registers 15
    .parameter "changingPkg"
    .parameter "pkgInfo"
    .parameter "grantPermissions"
    .parameter "replace"
    .parameter "replaceAll"

    .prologue
    .line 3796
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3798
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 3799
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3800
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_2c

    .line 3803
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3805
    :cond_2c
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_5a

    .line 3806
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 3809
    :cond_5a
    if-eqz p1, :cond_c

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3810
    if-eqz p2, :cond_6e

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3811
    :cond_6e
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    const/4 p3, 0x1

    .line 3814
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_c

    .line 3821
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_9a
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3822
    :cond_a6
    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_178

    .line 3823
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3824
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f5

    .line 3828
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_f5

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_f5

    .line 3829
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v4

    .line 3830
    .local v4, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v4, :cond_f5

    .line 3831
    iget-object v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3832
    new-instance v5, Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v7, Landroid/content/pm/PermissionInfo;

    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 3834
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 3835
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 3836
    iget v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 3840
    .end local v4           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_f5
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_109

    .line 3843
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3845
    :cond_109
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_138

    .line 3846
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_a6

    .line 3849
    :cond_138
    if-eqz p1, :cond_a6

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 3850
    if-eqz p2, :cond_14c

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a6

    .line 3851
    :cond_14c
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    const/4 p3, 0x1

    .line 3854
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_a6

    .line 3861
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_178
    if-eqz p3, :cond_196

    .line 3862
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_184
    :goto_184
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_196

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 3863
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eq v3, p2, :cond_184

    .line 3864
    invoke-direct {p0, v3, p5}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_184

    .line 3869
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_196
    if-eqz p2, :cond_19b

    .line 3870
    invoke-direct {p0, p2, p4}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    .line 3872
    :cond_19b
    return-void
.end method

.method private updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 12
    .parameter "newPackage"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5728
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5729
    .local v6, pkgName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 5733
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 5734
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v1}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5735
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1c

    .line 5737
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v0, v3, :cond_1f

    .line 5763
    :cond_1b
    :goto_1b
    return-void

    .line 5735
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1

    .line 5742
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v0, v3, :cond_33

    .line 5744
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v0, :cond_1b

    .line 5745
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    goto :goto_1b

    .line 5749
    :cond_33
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New package installed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 5752
    :try_start_50
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    :goto_5a
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 5754
    iput-object v6, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 5755
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 5756
    iput-object p1, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 5757
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 5758
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0, v6, p2}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 5759
    const/4 v0, 0x1

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5761
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5762
    monitor-exit v7

    goto :goto_1b

    :catchall_80
    move-exception v0

    monitor-exit v7
    :try_end_82
    .catchall {:try_start_50 .. :try_end_82} :catchall_80

    throw v0

    :cond_83
    move v3, v4

    .line 5752
    goto :goto_5a
.end method

.method private static useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .parameter "pkg"

    .prologue
    .line 2787
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .registers 9
    .parameter "oldPkg"
    .parameter "newPkg"

    .prologue
    const/4 v2, 0x0

    const-string v5, "Unable to update from "

    const-string v4, "PackageManager"

    const-string v3, " to "

    .line 2792
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3b

    .line 2793
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": old package not in system partition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2803
    :goto_3a
    return v0

    .line 2797
    :cond_3b
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2798
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": old package still exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2801
    goto :goto_3a

    .line 2803
    :cond_73
    const/4 v0, 0x1

    goto :goto_3a
.end method

.method private verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .registers 8
    .parameter "pkgSetting"
    .parameter "pkg"

    .prologue
    const/4 v2, 0x0

    const-string v4, "PackageManager"

    const-string v3, "Package "

    .line 2707
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2709
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 2711
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signatures do not match the previously installed version; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const/4 v0, -0x7

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    .line 2728
    :goto_3f
    return v0

    .line 2718
    :cond_40
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_91

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 2719
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_91

    .line 2721
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no signatures that match those in shared user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    const/4 v0, -0x8

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    .line 2725
    goto :goto_3f

    .line 2728
    :cond_91
    const/4 v0, 0x1

    goto :goto_3f
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 6528
    const-string v0, "PackageManager"

    const-string v1, "addPackageToPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6529
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .parameter "info"

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1807
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1808
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .parameter "info"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1813
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1814
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 10
    .parameter "info"
    .parameter "async"

    .prologue
    const/4 v6, 0x2

    .line 1765
    iget v4, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v4, :cond_11

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_11

    .line 1766
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Label must be specified in permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1768
    :cond_11
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v3

    .line 1769
    .local v3, tree:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1770
    .local v1, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v1, :cond_6c

    const/4 v4, 0x1

    move v0, v4

    .line 1771
    .local v0, added:Z
    :goto_27
    const/4 v2, 0x1

    .line 1772
    .local v2, changed:Z
    if-eqz v0, :cond_6f

    .line 1773
    new-instance v1, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v1           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1787
    .restart local v1       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_33
    :goto_33
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 1788
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v6, Landroid/content/pm/PermissionInfo;

    invoke-direct {v6, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 1790
    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1791
    iget v4, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 1792
    if-eqz v0, :cond_62

    .line 1793
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    :cond_62
    if-eqz v2, :cond_6b

    .line 1796
    if-nez p2, :cond_b4

    .line 1797
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1802
    :cond_6b
    :goto_6b
    return v0

    .line 1770
    .end local v0           #added:Z
    .end local v2           #changed:Z
    :cond_6c
    const/4 v4, 0x0

    move v0, v4

    goto :goto_27

    .line 1775
    .restart local v0       #added:Z
    .restart local v2       #changed:Z
    :cond_6f
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    if-eq v4, v6, :cond_8e

    .line 1776
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1780
    :cond_8e
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v4, v5, :cond_33

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iget v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    if-ne v4, v5, :cond_33

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-static {v4, p1}, Lcom/android/server/PackageManagerService;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1784
    const/4 v2, 0x0

    goto :goto_33

    .line 1799
    :cond_b4
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    goto :goto_6b
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 9
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const-string v0, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v0, "PackageManager"

    .line 6566
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6567
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_43

    .line 6570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3b

    .line 6572
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6574
    monitor-exit v0

    .line 6586
    :goto_3a
    return-void

    .line 6576
    :cond_3b
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6580
    :cond_43
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6581
    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6582
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 6584
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 6585
    monitor-exit v0

    goto :goto_3a

    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_81

    throw v1
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "names"

    .prologue
    .line 1372
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 1373
    .local v2, out:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1374
    :try_start_6
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_a
    if-ltz v1, :cond_23

    .line 1375
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1376
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_20

    move-object v4, v0

    :goto_1b
    aput-object v4, v2, v1

    .line 1374
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1376
    :cond_20
    aget-object v4, p1, v1

    goto :goto_1b

    .line 1378
    .end local v0           #cur:Ljava/lang/String;
    :cond_23
    monitor-exit v3

    .line 1379
    return-object v2

    .line 1378
    .end local v1           #i:I
    :catchall_25
    move-exception v4

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v4
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 1674
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1675
    :try_start_4
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1676
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_32

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_32

    .line 1677
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1678
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_27

    .line 1679
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1680
    monitor-exit v2

    move v2, v4

    .line 1687
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_26
    return v2

    .line 1682
    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_27
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1683
    monitor-exit v2

    move v2, v4

    goto :goto_26

    .line 1686
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_32
    monitor-exit v2

    .line 1687
    const/4 v2, -0x1

    goto :goto_26

    .line 1686
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v3
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 1840
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1841
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1842
    .local v0, p1:Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1843
    .local v1, p2:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1f

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    if-eqz v1, :cond_1f

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v3, :cond_23

    .line 1845
    :cond_1f
    const/4 v3, -0x4

    monitor-exit v2

    move v2, v3

    .line 1847
    :goto_22
    return v2

    :cond_23
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    monitor-exit v2

    move v2, v3

    goto :goto_22

    .line 1848
    .end local v0           #p1:Landroid/content/pm/PackageParser$Package;
    .end local v1           #p2:Landroid/content/pm/PackageParser$Package;
    :catchall_2e
    move-exception v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 10
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 1884
    if-nez p1, :cond_8

    .line 1885
    if-nez p2, :cond_6

    const/4 v6, 0x1

    .line 1904
    :goto_5
    return v6

    .line 1885
    :cond_6
    const/4 v6, -0x1

    goto :goto_5

    .line 1889
    :cond_8
    if-nez p2, :cond_c

    .line 1890
    const/4 v6, -0x2

    goto :goto_5

    .line 1892
    :cond_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1893
    .local v3, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_1e

    aget-object v5, v0, v1

    .line 1894
    .local v5, sig:Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1893
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1896
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_1e
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1897
    .local v4, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_30

    aget-object v5, v0, v1

    .line 1898
    .restart local v5       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1897
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1901
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_30
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1902
    const/4 v6, 0x0

    goto :goto_5

    .line 1904
    :cond_38
    const/4 v6, -0x3

    goto :goto_5
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .registers 10
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v6, 0x0

    .line 1691
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1692
    :try_start_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v2

    .line 1693
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_1b

    .line 1694
    move-object v0, v2

    check-cast v0, Lcom/android/server/PackageManagerService$GrantedPermissions;

    move-object v1, v0

    .line 1695
    .local v1, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    iget-object v5, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1696
    monitor-exit v4

    move v4, v6

    .line 1705
    .end local v1           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1a
    return v4

    .line 1699
    :cond_1b
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1700
    .local v3, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_2e

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1701
    monitor-exit v4

    move v4, v6

    goto :goto_1a

    .line 1704
    .end local v3           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2e
    monitor-exit v4

    .line 1705
    const/4 v4, -0x1

    goto :goto_1a

    .line 1704
    .end local v2           #obj:Ljava/lang/Object;
    :catchall_31
    move-exception v5

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v5
.end method

.method public checkUidSignatures(II)I
    .registers 10
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    const/4 v6, -0x4

    .line 1852
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1855
    :try_start_4
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1856
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_44

    .line 1857
    instance-of v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_34

    .line 1858
    check-cast v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 1867
    .local v2, s1:[Landroid/content/pm/Signature;
    :goto_18
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1868
    .restart local v1       #obj:Ljava/lang/Object;
    if-eqz v1, :cond_59

    .line 1869
    instance-of v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_47

    .line 1870
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    .line 1879
    .local v3, s2:[Landroid/content/pm/Signature;
    :goto_2e
    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    monitor-exit v5

    .end local v2           #s1:[Landroid/content/pm/Signature;
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :goto_33
    return v4

    .line 1859
    :cond_34
    instance-of v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v4, :cond_41

    .line 1860
    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    .restart local v2       #s1:[Landroid/content/pm/Signature;
    goto :goto_18

    .line 1862
    .end local v2           #s1:[Landroid/content/pm/Signature;
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_41
    monitor-exit v5

    move v4, v6

    goto :goto_33

    .line 1865
    :cond_44
    monitor-exit v5

    move v4, v6

    goto :goto_33

    .line 1871
    .restart local v2       #s1:[Landroid/content/pm/Signature;
    :cond_47
    instance-of v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v4, :cond_56

    .line 1872
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    .restart local v3       #s2:[Landroid/content/pm/Signature;
    goto :goto_2e

    .line 1874
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :cond_56
    monitor-exit v5

    move v4, v6

    goto :goto_33

    .line 1877
    :cond_59
    monitor-exit v5

    move v4, v6

    goto :goto_33

    .line 1880
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #s1:[Landroid/content/pm/Signature;
    :catchall_5c
    move-exception v4

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_5c

    throw v4
.end method

.method cleanupInstallFailedPackage(Lcom/android/server/PackageManagerService$PackageSetting;)V
    .registers 10
    .parameter "ps"

    .prologue
    const-string v7, "Unable to remove old code file: "

    const-string v6, "PackageManager"

    .line 1055
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up incompletely installed app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_b4

    .line 1057
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v4}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    .line 1058
    .local v3, useSecureFS:Z
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    move-result v2

    .line 1059
    .local v2, retCode:I
    if-gez v2, :cond_56

    .line 1060
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove app data directory for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v2           #retCode:I
    .end local v3           #useSecureFS:Z
    :cond_56
    :goto_56
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    if-eqz v4, :cond_7c

    .line 1070
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7c

    .line 1071
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to remove old code file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_7c
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    if-eqz v4, :cond_ac

    .line 1075
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_ac

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 1076
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to remove old code file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_ac
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1065
    :cond_b4
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1066
    .local v1, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_56
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 6334
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6337
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$8;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6361
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 8
    .parameter "packageName"

    .prologue
    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 6636
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 6637
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6638
    .local v1, uid:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 6639
    .local v0, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_19

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_55

    .line 6640
    :cond_19
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_55

    .line 6643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_4d

    .line 6645
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6647
    monitor-exit v2

    .line 6658
    :goto_4c
    return-void

    .line 6649
    :cond_4d
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6654
    :cond_55
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 6655
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 6657
    :cond_5e
    monitor-exit v2

    goto :goto_4c

    .end local v0           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v1           #uid:I
    :catchall_60
    move-exception v3

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    throw v3
.end method

.method clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    .line 6661
    const/4 v0, 0x0

    .line 6662
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6663
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 6664
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6665
    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6666
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 6667
    const/4 v0, 0x1

    goto :goto_b

    .line 6670
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_28
    return v0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "names"

    .prologue
    .line 1361
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 1362
    .local v1, out:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1363
    :try_start_6
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_2a

    .line 1364
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1365
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v2, :cond_27

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_27

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    :goto_22
    aput-object v4, v1, v0

    .line 1363
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1365
    :cond_27
    aget-object v4, p1, v0

    goto :goto_22

    .line 1367
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2a
    monitor-exit v3

    .line 1368
    return-object v1

    .line 1367
    .end local v0           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 6410
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_CACHE_FILES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6413
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$9;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6429
    return-void
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .registers 7
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6021
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/PackageManagerService$7;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6034
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 43
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 6898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 6900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7289
    .end local p1
    :goto_44
    return-void

    .line 6908
    .restart local p1
    :cond_45
    const/16 v20, 0x1

    .line 6909
    .local v20, dumpStar:Z
    const/4 v13, 0x0

    .line 6910
    .local v13, dumpLibs:Z
    const/4 v12, 0x0

    .line 6911
    .local v12, dumpFeatures:Z
    const/16 v18, 0x0

    .line 6912
    .local v18, dumpResolvers:Z
    const/16 v16, 0x0

    .line 6913
    .local v16, dumpPermissions:Z
    const/4 v15, 0x0

    .line 6914
    .local v15, dumpPackages:Z
    const/16 v19, 0x0

    .line 6915
    .local v19, dumpSharedUsers:Z
    const/4 v14, 0x0

    .line 6916
    .local v14, dumpMessages:Z
    const/16 v17, 0x0

    .line 6918
    .local v17, dumpProviders:Z
    const/4 v6, 0x0

    .line 6919
    .local v6, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 6921
    .local v7, showFilters:Z
    const/16 v30, 0x0

    .line 6922
    .local v30, opti:I
    :cond_57
    :goto_57
    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    move/from16 v0, v30

    move v1, v2

    if-ge v0, v1, :cond_76

    .line 6923
    aget-object v29, p3, v30

    .line 6924
    .local v29, opt:Ljava/lang/String;
    if-eqz v29, :cond_76

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_76

    const/4 v2, 0x0

    move-object/from16 v0, v29

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_ff

    .line 6954
    .end local v29           #opt:Ljava/lang/String;
    :cond_76
    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    move/from16 v0, v30

    move v1, v2

    if-ge v0, v1, :cond_94

    .line 6955
    aget-object v9, p3, v30

    .line 6956
    .local v9, cmd:Ljava/lang/String;
    add-int/lit8 v30, v30, 0x1

    .line 6958
    const-string v2, "android"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "."

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 6959
    :cond_93
    move-object v6, v9

    .line 6987
    .end local v9           #cmd:Ljava/lang/String;
    :cond_94
    :goto_94
    const/16 v34, 0x0

    .line 6989
    .local v34, printedTitle:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    monitor-enter v9

    .line 6990
    if-nez v20, :cond_a0

    if-eqz v13, :cond_267

    :cond_a0
    if-nez v6, :cond_267

    .line 6991
    if-eqz v34, :cond_ac

    :try_start_a4
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6992
    :cond_ac
    const/16 v34, 0x1

    .line 6993
    const-string v2, "Libraries:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 6995
    .end local p1
    .local v27, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_267

    .line 6996
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 6997
    .local v28, name:Ljava/lang/String;
    const-string v2, "  "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6998
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6999
    const-string v2, " -> "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c3

    .line 7288
    .end local v27           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v28           #name:Ljava/lang/String;
    :catchall_fc
    move-exception v2

    monitor-exit v9
    :try_end_fe
    .catchall {:try_start_a4 .. :try_end_fe} :catchall_fc

    throw v2

    .line 6927
    .end local v34           #printedTitle:Z
    .restart local v29       #opt:Ljava/lang/String;
    .restart local p1
    :cond_ff
    add-int/lit8 v30, v30, 0x1

    .line 6928
    const-string v2, "-a"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 6930
    const-string v2, "-h"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 6931
    const-string v2, "Package manager dump options:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6932
    const-string v2, "  [-h] [-f] [cmd] ..."

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6933
    const-string v2, "    -f: print details of intent filters"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6934
    const-string v2, "    -h: print this help"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6935
    const-string v2, "  cmd may be one of:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6936
    const-string v2, "    l[ibraries]: list known shared libraries"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6937
    const-string v2, "    f[ibraries]: list device features"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6938
    const-string v2, "    r[esolvers]: dump intent resolvers"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6939
    const-string v2, "    perm[issions]: dump permissions"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6940
    const-string v2, "    prov[iders]: dump content providers"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6941
    const-string v2, "    p[ackages]: dump installed packages"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6942
    const-string v2, "    s[hared-users]: dump shared user IDs"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6943
    const-string v2, "    m[essages]: print collected runtime messages"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6944
    const-string v2, "    <package.name>: info about given package"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_44

    .line 6946
    :cond_189
    const-string v2, "-f"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_197

    .line 6947
    const/4 v7, 0x1

    goto/16 :goto_57

    .line 6949
    :cond_197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 6960
    .end local v29           #opt:Ljava/lang/String;
    .restart local v9       #cmd:Ljava/lang/String;
    :cond_1bb
    const-string v2, "l"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cb

    const-string v2, "libraries"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 6961
    :cond_1cb
    const/16 v20, 0x0

    .line 6962
    const/4 v13, 0x1

    goto/16 :goto_94

    .line 6963
    :cond_1d0
    const-string v2, "f"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e0

    const-string v2, "features"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 6964
    :cond_1e0
    const/16 v20, 0x0

    .line 6965
    const/4 v12, 0x1

    goto/16 :goto_94

    .line 6966
    :cond_1e5
    const-string v2, "r"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f5

    const-string v2, "resolvers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fb

    .line 6967
    :cond_1f5
    const/16 v20, 0x0

    .line 6968
    const/16 v18, 0x1

    goto/16 :goto_94

    .line 6969
    :cond_1fb
    const-string v2, "perm"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    const-string v2, "permissions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 6970
    :cond_20b
    const/16 v20, 0x0

    .line 6971
    const/16 v16, 0x1

    goto/16 :goto_94

    .line 6972
    :cond_211
    const-string v2, "p"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_221

    const-string v2, "packages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_226

    .line 6973
    :cond_221
    const/16 v20, 0x0

    .line 6974
    const/4 v15, 0x1

    goto/16 :goto_94

    .line 6975
    :cond_226
    const-string v2, "s"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_236

    const-string v2, "shared-users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23c

    .line 6976
    :cond_236
    const/16 v20, 0x0

    .line 6977
    const/16 v19, 0x1

    goto/16 :goto_94

    .line 6978
    :cond_23c
    const-string v2, "prov"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24c

    const-string v2, "providers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_252

    .line 6979
    :cond_24c
    const/16 v20, 0x0

    .line 6980
    const/16 v17, 0x1

    goto/16 :goto_94

    .line 6981
    :cond_252
    const-string v2, "m"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_262

    const-string v2, "messages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 6982
    :cond_262
    const/16 v20, 0x0

    .line 6983
    const/4 v14, 0x1

    goto/16 :goto_94

    .line 7004
    .end local v9           #cmd:Ljava/lang/String;
    .end local p1
    .restart local v34       #printedTitle:Z
    :cond_267
    if-nez v20, :cond_26b

    if-eqz v12, :cond_2aa

    :cond_26b
    if-nez v6, :cond_2aa

    .line 7005
    if-eqz v34, :cond_277

    :try_start_26f
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7006
    :cond_277
    const/16 v34, 0x1

    .line 7007
    const-string v2, "Features:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 7009
    .restart local v27       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_28e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2aa

    .line 7010
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 7011
    .restart local v28       #name:Ljava/lang/String;
    const-string v2, "  "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7012
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28e

    .line 7016
    .end local v27           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v28           #name:Ljava/lang/String;
    :cond_2aa
    if-nez v20, :cond_2ae

    if-eqz v18, :cond_30a

    .line 7017
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v2, v0

    if-eqz v34, :cond_41a

    const-string v3, "\nActivity Resolver Table:"

    move-object v4, v3

    :goto_2b8
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 7020
    const/16 v34, 0x1

    .line 7022
    :cond_2c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v2, v0

    if-eqz v34, :cond_41f

    const-string v3, "\nReceiver Resolver Table:"

    move-object v4, v3

    :goto_2ce
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2da

    .line 7025
    const/16 v34, 0x1

    .line 7027
    :cond_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v2, v0

    if-eqz v34, :cond_424

    const-string v3, "\nService Resolver Table:"

    move-object v4, v3

    :goto_2e4
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 7030
    const/16 v34, 0x1

    .line 7032
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v2

    if-eqz v34, :cond_429

    const-string v3, "\nPreferred Activities:"

    move-object v4, v3

    :goto_2fe
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_30a

    .line 7035
    const/16 v34, 0x1

    .line 7039
    :cond_30a
    const/16 v33, 0x0

    .line 7040
    .local v33, printedSomething:Z
    if-nez v20, :cond_310

    if-eqz v16, :cond_42e

    .line 7041
    :cond_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_31f
    :goto_31f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/PackageManagerService$BasePermission;

    .line 7042
    .local v31, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v6, :cond_338

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31f

    .line 7045
    :cond_338
    if-nez v33, :cond_350

    .line 7046
    if-eqz v34, :cond_344

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7047
    :cond_344
    const-string v2, "Permissions:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7048
    const/16 v33, 0x1

    .line 7049
    const/16 v34, 0x1

    .line 7051
    :cond_350
    const-string v2, "  Permission ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7052
    invoke-static/range {v31 .. v31}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7053
    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7054
    const-string v2, "    sourcePackage="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7055
    const-string v2, "    uid="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7056
    const-string v2, " gids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7057
    const-string v2, " type="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7058
    const-string v2, " prot="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7059
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v2, v0

    if-eqz v2, :cond_3fe

    .line 7060
    const-string v2, "    packageSetting="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7062
    :cond_3fe
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v2, v0

    if-eqz v2, :cond_31f

    .line 7063
    const-string v2, "    perm="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_31f

    .line 7017
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v31           #p:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v33           #printedSomething:Z
    :cond_41a
    const-string v3, "Activity Resolver Table:"

    move-object v4, v3

    goto/16 :goto_2b8

    .line 7022
    :cond_41f
    const-string v3, "Receiver Resolver Table:"

    move-object v4, v3

    goto/16 :goto_2ce

    .line 7027
    :cond_424
    const-string v3, "Service Resolver Table:"

    move-object v4, v3

    goto/16 :goto_2e4

    .line 7032
    :cond_429
    const-string v3, "Preferred Activities:"

    move-object v4, v3

    goto/16 :goto_2fe

    .line 7068
    .restart local v33       #printedSomething:Z
    :cond_42e
    if-nez v20, :cond_432

    if-eqz v17, :cond_49c

    .line 7069
    :cond_432
    const/16 v33, 0x0

    .line 7070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_441
    :goto_441
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/PackageParser$Provider;

    .line 7071
    .local v31, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v6, :cond_45c

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_441

    .line 7074
    :cond_45c
    if-nez v33, :cond_474

    .line 7075
    if-eqz v34, :cond_468

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7076
    :cond_468
    const-string v2, "Registered ContentProviders:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7077
    const/16 v33, 0x1

    .line 7078
    const/16 v34, 0x1

    .line 7080
    :cond_474
    const-string v2, "  ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]: "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7081
    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_441

    .line 7085
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v31           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_49c
    const/16 v33, 0x0

    .line 7086
    const/16 v32, 0x0

    .line 7087
    .local v32, packageSharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v20, :cond_4a4

    if-eqz v15, :cond_8a4

    .line 7088
    :cond_4a4
    new-instance v37, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v37

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7089
    .local v37, sdf:Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 7090
    .local v11, date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4c4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 7091
    .local v35, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v6, :cond_4e8

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e8

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c4

    .line 7095
    :cond_4e8
    if-nez v33, :cond_500

    .line 7096
    if-eqz v34, :cond_4f4

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7097
    :cond_4f4
    const-string v2, "Packages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7098
    const/16 v33, 0x1

    .line 7099
    const/16 v34, 0x1

    .line 7101
    :cond_500
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v32, v0

    .line 7102
    const-string v2, "  Package ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7103
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_82d

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    :goto_51a
    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7104
    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7105
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7106
    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7107
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_558

    .line 7108
    const-string v2, "    compat name="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7110
    :cond_558
    const-string v2, "    userId="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7111
    const-string v2, " gids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->gids:[I

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7112
    const-string v2, "    sharedUser="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7113
    const-string v2, "    pkg="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7114
    const-string v2, "    codePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7115
    const-string v2, "    resourcePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7116
    const-string v2, "    nativeLibraryPath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7117
    const-string v2, "    versionCode="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7118
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    if-eqz v2, :cond_720

    .line 7119
    const-string v2, "    versionName="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7120
    const-string v2, "    dataDir="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7121
    const-string v2, "    targetSdk="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7122
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v2, :cond_64f

    .line 7123
    const-string v2, "    mOperationPending=true"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7125
    :cond_64f
    const-string v2, "    supportsScreens=["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7126
    const/16 v22, 0x1

    .line 7127
    .local v22, first:Z
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_67a

    .line 7129
    if-nez v22, :cond_670

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7130
    :cond_670
    const/16 v22, 0x0

    .line 7131
    const-string v2, "small"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7133
    :cond_67a
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_69b

    .line 7135
    if-nez v22, :cond_691

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7136
    :cond_691
    const/16 v22, 0x0

    .line 7137
    const-string v2, "medium"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7139
    :cond_69b
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_6bc

    .line 7141
    if-nez v22, :cond_6b2

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7142
    :cond_6b2
    const/16 v22, 0x0

    .line 7143
    const-string v2, "large"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7145
    :cond_6bc
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_6de

    .line 7147
    if-nez v22, :cond_6d4

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7148
    :cond_6d4
    const/16 v22, 0x0

    .line 7149
    const-string v2, "xlarge"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7151
    :cond_6de
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_6ff

    .line 7153
    if-nez v22, :cond_6f5

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7154
    :cond_6f5
    const/16 v22, 0x0

    .line 7155
    const-string v2, "resizeable"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7157
    :cond_6ff
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_720

    .line 7159
    if-nez v22, :cond_716

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7160
    :cond_716
    const/16 v22, 0x0

    .line 7161
    const-string v2, "anyDensity"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7164
    .end local v22           #first:Z
    :cond_720
    const-string v2, "]"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7165
    const-string v2, "    timeStamp="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7166
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    move-wide v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7167
    const-string v2, "    firstInstallTime="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7168
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    move-wide v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7169
    const-string v2, "    lastUpdateTime="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7170
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    move-wide v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7171
    const-string v2, "    signatures="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7172
    const-string v2, "    permissionsFixed="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7173
    const-string v2, " haveGids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->haveGids:Z

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7174
    const-string v2, "    pkgFlags=0x"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7175
    const-string v2, " installStatus="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->installStatus:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7176
    const-string v2, " enabled="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7177
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_834

    .line 7178
    const-string v2, "    disabledComponents:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7179
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_811
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_834

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 7180
    .local v36, s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_811

    .line 7103
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #s:Ljava/lang/String;
    :cond_82d
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_51a

    .line 7183
    :cond_834
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_86c

    .line 7184
    const-string v2, "    enabledComponents:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7185
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_850
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 7186
    .restart local v36       #s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_850

    .line 7189
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #s:Ljava/lang/String;
    :cond_86c
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4c4

    .line 7190
    const-string v2, "    grantedPermissions:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7191
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_888
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 7192
    .restart local v36       #s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_888

    .line 7197
    .end local v11           #date:Ljava/util/Date;
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v35           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v36           #s:Ljava/lang/String;
    .end local v37           #sdf:Ljava/text/SimpleDateFormat;
    :cond_8a4
    const/16 v33, 0x0

    .line 7198
    if-nez v20, :cond_8aa

    if-eqz v15, :cond_a2c

    .line 7199
    :cond_8aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_92b

    .line 7201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_8c6
    :goto_8c6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 7202
    .local v21, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_8e8

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e8

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c6

    .line 7206
    :cond_8e8
    if-nez v33, :cond_900

    .line 7207
    if-eqz v34, :cond_8f4

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7208
    :cond_8f4
    const-string v2, "Renamed packages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7209
    const/16 v33, 0x1

    .line 7210
    const/16 v34, 0x1

    .line 7212
    :cond_900
    const-string v2, "  "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -> "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7213
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c6

    .line 7216
    .end local v21           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #i$:Ljava/util/Iterator;
    :cond_92b
    const/16 v33, 0x0

    .line 7217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_a2c

    .line 7218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_949
    :goto_949
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 7219
    .restart local v35       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v6, :cond_96d

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96d

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_949

    .line 7223
    :cond_96d
    if-nez v33, :cond_985

    .line 7224
    if-eqz v34, :cond_979

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7225
    :cond_979
    const-string v2, "Hidden system packages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7226
    const/16 v33, 0x1

    .line 7227
    const/16 v34, 0x1

    .line 7229
    :cond_985
    const-string v2, "  Package ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7230
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_a25

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    :goto_999
    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7231
    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7232
    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7233
    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7234
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_9d7

    .line 7235
    const-string v2, "    compat name="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7237
    :cond_9d7
    const-string v2, "    userId="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7238
    const-string v2, "    sharedUser="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7239
    const-string v2, "    codePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7240
    const-string v2, "    resourcePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_949

    .line 7230
    :cond_a25
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_999

    .line 7244
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v35           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_a2c
    const/16 v33, 0x0

    .line 7245
    if-nez v20, :cond_a32

    if-eqz v19, :cond_af7

    .line 7246
    :cond_a32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$3600(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_a43
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 7247
    .local v38, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v6, :cond_a57

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_a43

    .line 7250
    :cond_a57
    if-nez v33, :cond_a6f

    .line 7251
    if-eqz v34, :cond_a63

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7252
    :cond_a63
    const-string v2, "Shared users:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7253
    const/16 v33, 0x1

    .line 7254
    const/16 v34, 0x1

    .line 7256
    :cond_a6f
    const-string v2, "  SharedUser ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7257
    invoke-static/range {v38 .. v38}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7258
    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7259
    const-string v2, "    userId="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7260
    const-string v2, " gids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7261
    const-string v2, "    grantedPermissions:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7262
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_adb
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a43

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 7263
    .restart local v36       #s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_adb

    .line 7268
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #s:Ljava/lang/String;
    .end local v38           #su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_af7
    if-nez v20, :cond_afb

    if-eqz v14, :cond_b58

    :cond_afb
    if-nez v6, :cond_b58

    .line 7269
    if-eqz v34, :cond_b07

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7270
    :cond_b07
    const/16 v34, 0x1

    .line 7271
    const-string v2, "Settings parse messages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7274
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7275
    const-string v2, "Package warning messages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7276
    invoke-static {}, Lcom/android/server/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;
    :try_end_b37
    .catchall {:try_start_26f .. :try_end_b37} :catchall_fc

    move-result-object v23

    .line 7279
    .local v23, fname:Ljava/io/File;
    :try_start_b38
    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7280
    .local v26, in:Ljava/io/FileInputStream;
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 7281
    .local v8, avail:I
    new-array v10, v8, [B

    .line 7282
    .local v10, data:[B
    move-object/from16 v0, v26

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 7283
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_b58
    .catchall {:try_start_b38 .. :try_end_b58} :catchall_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_b38 .. :try_end_b58} :catch_b5d
    .catch Ljava/io/IOException; {:try_start_b38 .. :try_end_b58} :catch_b5b

    .line 7288
    .end local v8           #avail:I
    .end local v10           #data:[B
    .end local v23           #fname:Ljava/io/File;
    .end local v26           #in:Ljava/io/FileInputStream;
    :cond_b58
    :goto_b58
    :try_start_b58
    monitor-exit v9
    :try_end_b59
    .catchall {:try_start_b58 .. :try_end_b59} :catchall_fc

    goto/16 :goto_44

    .line 7285
    .restart local v23       #fname:Ljava/io/File;
    :catch_b5b
    move-exception v2

    goto :goto_b58

    .line 7284
    :catch_b5d
    move-exception v2

    goto :goto_b58
.end method

.method public enterSafeMode()V
    .registers 2

    .prologue
    .line 6857
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 6858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    .line 6860
    :cond_7
    return-void
.end method

.method findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 23
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 2000
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 2002
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    const/high16 v15, 0x1

    and-int v15, v15, p3

    if-eqz v15, :cond_42

    const/4 v15, 0x1

    :goto_16
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .line 2005
    .local v11, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    if-eqz v11, :cond_d9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d9

    .line 2009
    const/4 v9, 0x0

    .line 2010
    .local v9, match:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    .line 2012
    .local v5, N:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2e
    if-ge v8, v5, :cond_44

    .line 2013
    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 2016
    .local v12, ri:Landroid/content/pm/ResolveInfo;
    iget v14, v12, Landroid/content/pm/ResolveInfo;->match:I

    if-le v14, v9, :cond_3f

    iget v9, v12, Landroid/content/pm/ResolveInfo;->match:I

    .line 2012
    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 2002
    .end local v5           #N:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_42
    const/4 v15, 0x0

    goto :goto_16

    .line 2020
    .restart local v5       #N:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v11       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_44
    const/high16 v14, 0xfff

    and-int/2addr v9, v14

    .line 2021
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .line 2022
    .local v4, M:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4c
    if-ge v7, v4, :cond_d9

    .line 2023
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 2024
    .local v10, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    if-eq v14, v9, :cond_5b

    .line 2022
    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 2027
    :cond_5b
    iget-object v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2036
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_58

    .line 2037
    const/4 v8, 0x0

    :goto_69
    if-ge v8, v5, :cond_58

    .line 2038
    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 2039
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_87

    .line 2037
    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 2043
    :cond_87
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_84

    .line 2051
    move-object v0, v10

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PreferredActivity;->sameSet(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_d6

    .line 2052
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result set changed, dropping preferred activity for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 2055
    const/4 v14, 0x0

    monitor-exit v13

    move-object v13, v14

    .line 2065
    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :goto_d5
    return-object v13

    .line 2059
    .restart local v4       #M:I
    .restart local v5       #N:I
    .restart local v6       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v10       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    :cond_d6
    monitor-exit v13

    move-object v13, v12

    goto :goto_d5

    .line 2064
    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_d9
    monitor-exit v13

    .line 2065
    const/4 v13, 0x0

    goto :goto_d5

    .line 2064
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_dc
    move-exception v14

    monitor-exit v13
    :try_end_de
    .catchall {:try_start_6 .. :try_end_de} :catchall_dc

    throw v14
.end method

.method public finishPackageInstall(I)V
    .registers 6
    .parameter "token"

    .prologue
    .line 4544
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4545
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4546
    return-void
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .registers 7
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$2;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1582
    return-void
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .registers 7
    .parameter "freeStorageSize"
    .parameter "observer"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$1;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1554
    return-void
.end method

.method generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;
    .registers 12
    .parameter "p"
    .parameter "flags"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 1331
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_f

    move-object v0, p1

    move v2, p2

    move-wide v5, v3

    .line 1333
    invoke-static/range {v0 .. v6}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1340
    :goto_e
    return-object v0

    .line 1335
    :cond_f
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1336
    .local v8, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v8, :cond_17

    move-object v0, v1

    .line 1337
    goto :goto_e

    .line 1339
    :cond_17
    iget-object v0, v8, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_2b

    iget-object v0, v8, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    .line 1340
    .local v7, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1e
    iget-object v1, v7, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    iget-wide v3, v8, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    iget-wide v5, v8, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_e

    .end local v7           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_2b
    move-object v7, v8

    .line 1339
    goto :goto_1e
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1585
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1586
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$900(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1589
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1590
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1596
    :goto_21
    return-object v1

    .line 1592
    :cond_22
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1593
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_21

    .line 1595
    :cond_2f
    monitor-exit v1

    .line 1596
    const/4 v1, 0x0

    goto :goto_21

    .line 1595
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 8
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1466
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1467
    :try_start_3
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1468
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1470
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 1471
    .local v3, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v3, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1474
    .end local v0           #N:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v3           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :catchall_2c
    move-exception v5

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v5

    .line 1473
    .restart local v0       #N:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :cond_2f
    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    return-object v2
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 7
    .parameter "appPackageName"

    .prologue
    .line 6835
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6836
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6837
    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_2d

    .line 6838
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6841
    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2

    .line 6840
    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2d
    :try_start_2d
    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    return v2
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1512
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1516
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_14

    .line 1518
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1527
    :goto_13
    return-object v1

    .line 1520
    :cond_14
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1521
    :cond_24
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_13

    .line 1523
    :cond_29
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_34

    .line 1524
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_13

    .line 1526
    :cond_34
    monitor-exit v1

    .line 1527
    const/4 v1, 0x0

    goto :goto_13

    .line 1526
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .registers 9
    .parameter "componentName"

    .prologue
    .line 6845
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6846
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6847
    .local v1, packageNameStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6848
    .local v2, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_31

    .line 6849
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6853
    .end local v1           #packageNameStr:Ljava/lang/String;
    .end local v2           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v4

    .line 6851
    .restart local v1       #packageNameStr:Ljava/lang/String;
    .restart local v2       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6852
    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageSetting;->currentEnabledStateLP(Ljava/lang/String;)I

    move-result v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2e

    return v4
.end method

.method public getInstallLocation()I
    .registers 4

    .prologue
    .line 10226
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .registers 10
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2362
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2363
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_35

    .line 2364
    :try_start_c
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2365
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2366
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2367
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v5, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2368
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1a

    .line 2369
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2385
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_32
    move-exception v7

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    throw v7

    .line 2374
    :cond_35
    :try_start_35
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2375
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 2377
    .local v4, p:Landroid/content/pm/PackageParser$Package;
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3f

    .line 2378
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2379
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3f

    .line 2380
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 2385
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v4           #p:Landroid/content/pm/PackageParser$Package;
    :cond_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_32

    .line 2386
    return-object v1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .registers 11
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2334
    and-int/lit16 v8, p1, 0x2000

    if-eqz v8, :cond_35

    .line 2335
    :try_start_c
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2336
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 2337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2338
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v8, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2339
    .local v6, psPkg:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1a

    .line 2340
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2356
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v6           #psPkg:Landroid/content/pm/PackageInfo;
    :catchall_32
    move-exception v8

    monitor-exit v7
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    throw v8

    .line 2345
    :cond_35
    :try_start_35
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2346
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 2347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2348
    .local v3, p:Landroid/content/pm/PackageParser$Package;
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3f

    .line 2349
    invoke-virtual {p0, v3, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2350
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_3f

    .line 2351
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 2356
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3           #p:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_32

    .line 2357
    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"

    .prologue
    .line 6825
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6826
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6827
    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_2d

    .line 6828
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6831
    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2

    .line 6830
    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2d
    :try_start_2d
    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    return-object v2
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 6
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2474
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2475
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2476
    .local v0, i:Landroid/content/pm/PackageParser$Instrumentation;
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2477
    .end local v0           #i:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 9
    .parameter "uid"

    .prologue
    .line 1929
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1930
    :try_start_3
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1931
    .local v1, obj:Ljava/lang/Object;
    instance-of v5, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_2f

    .line 1932
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v3, v0

    .line 1933
    .local v3, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    move-object v4, v5

    .line 1939
    .end local v3           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_2e
    return-object v4

    .line 1934
    :cond_2f
    instance-of v5, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v5, :cond_3c

    .line 1935
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v2, v0

    .line 1936
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    monitor-exit v4

    move-object v4, v5

    goto :goto_2e

    .line 1938
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3c
    monitor-exit v4

    .line 1939
    const/4 v4, 0x0

    goto :goto_2e

    .line 1938
    .end local v1           #obj:Ljava/lang/Object;
    :catchall_3f
    move-exception v5

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v5
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 7
    .parameter "packageName"

    .prologue
    .line 1398
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1399
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1403
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1d

    .line 1404
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1405
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 1406
    .local v2, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v2, :cond_1a

    iget-object v4, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    :goto_17
    monitor-exit v3

    move-object v3, v4

    .line 1410
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_19
    return-object v3

    .line 1406
    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v2       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_1a
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;->gids:[I

    goto :goto_17

    .line 1408
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 1410
    const/4 v3, 0x0

    new-array v3, v3, [I

    goto :goto_19

    .line 1408
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_22
    move-exception v4

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v4
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1346
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1350
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_14

    .line 1351
    invoke-virtual {p0, v0, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1357
    :goto_13
    return-object v1

    .line 1353
    :cond_14
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_1f

    .line 1354
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_13

    .line 1356
    :cond_1f
    monitor-exit v1

    .line 1357
    const/4 v1, 0x0

    goto :goto_13

    .line 1356
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 6
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 6463
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6466
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$10;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6483
    return-void
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    .line 1383
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1384
    :try_start_4
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1385
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_15

    .line 1386
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-exit v2

    move v2, v3

    .line 1393
    :goto_14
    return v2

    .line 1388
    :cond_15
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1389
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_2d

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_30

    .line 1390
    :cond_2d
    monitor-exit v2

    move v2, v4

    goto :goto_14

    .line 1392
    :cond_30
    iget-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1393
    if-eqz v0, :cond_3b

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_38
    monitor-exit v2

    move v2, v3

    goto :goto_14

    :cond_3b
    move v3, v4

    goto :goto_38

    .line 1394
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 15
    .parameter "uid"

    .prologue
    .line 1908
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1909
    :try_start_3
    iget-object v10, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v10, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v5

    .line 1910
    .local v5, obj:Ljava/lang/Object;
    instance-of v10, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v10, :cond_38

    .line 1911
    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v8, v0

    .line 1912
    .local v8, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 1913
    .local v1, N:I
    new-array v7, v1, [Ljava/lang/String;

    .line 1914
    .local v7, res:[Ljava/lang/String;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1915
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 1916
    .end local v2           #i:I
    .end local p0
    .local v3, i:I
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1917
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    aput-object v10, v7, v3

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_21

    .line 1919
    :cond_35
    monitor-exit v9

    move-object v9, v7

    .line 1925
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v7           #res:[Ljava/lang/String;
    .end local v8           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_37
    return-object v9

    .line 1920
    .restart local p0
    :cond_38
    instance-of v10, v5, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v10, :cond_4b

    .line 1921
    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v6, v0

    .line 1922
    .local v6, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v6, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    monitor-exit v9

    move-object v9, v10

    goto :goto_37

    .line 1924
    .end local v6           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4b
    monitor-exit v9

    .line 1925
    const/4 v9, 0x0

    goto :goto_37

    .line 1924
    .end local v5           #obj:Ljava/lang/Object;
    .end local p0
    :catchall_4e
    move-exception v10

    monitor-exit v9
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v10
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1460
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {p0, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1462
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 6
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1428
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1429
    .local v0, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_16

    .line 1430
    invoke-static {v0, p2}, Lcom/android/server/PackageManagerService;->generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1432
    :goto_15
    return-object v1

    :cond_16
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_15

    .line 1433
    .end local v0           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public getPersistentApplications(I)Ljava/util/List;
    .registers 7
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2392
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2393
    :try_start_8
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2394
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2396
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_12

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_34

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2399
    :cond_34
    invoke-static {v2, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2402
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_3c
    move-exception v4

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 2404
    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 6676
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 6677
    .local v1, num:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6678
    :try_start_4
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6679
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 6680
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6681
    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    if-eqz p3, :cond_28

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6683
    :cond_28
    if-eqz p1, :cond_32

    .line 6684
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6686
    :cond_32
    if-eqz p2, :cond_e

    .line 6687
    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 6691
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_3a
    move-exception v4

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    throw v4

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    .line 6693
    return v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .registers 3
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1625
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 1628
    .local v0, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1629
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1632
    :goto_1d
    return-object v1

    .line 1631
    :cond_1e
    monitor-exit v1

    .line 1632
    const/4 v1, 0x0

    goto :goto_1d

    .line 1631
    .end local v0           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1600
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1601
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$900(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1604
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1605
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1608
    :goto_21
    return-object v1

    .line 1607
    :cond_22
    monitor-exit v1

    .line 1608
    const/4 v1, 0x0

    goto :goto_21

    .line 1607
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1613
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->access$1000(Lcom/android/server/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 1616
    .local v0, s:Landroid/content/pm/PackageParser$Service;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1617
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1620
    :goto_21
    return-object v1

    .line 1619
    :cond_22
    monitor-exit v1

    .line 1620
    const/4 v1, 0x0

    goto :goto_21

    .line 1619
    .end local v0           #s:Landroid/content/pm/PackageParser$Service;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .registers 8

    .prologue
    .line 1651
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1652
    :try_start_3
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1653
    .local v0, featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 1654
    .local v3, size:I
    if-lez v3, :cond_29

    .line 1655
    add-int/lit8 v5, v3, 0x1

    new-array v1, v5, [Landroid/content/pm/FeatureInfo;

    .line 1656
    .local v1, features:[Landroid/content/pm/FeatureInfo;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1657
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1658
    .local v2, fi:Landroid/content/pm/FeatureInfo;
    const-string v5, "ro.opengles.version"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1660
    aput-object v2, v1, v3

    .line 1661
    monitor-exit v4

    move-object v4, v1

    .line 1664
    .end local v1           #features:[Landroid/content/pm/FeatureInfo;
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :goto_28
    return-object v4

    .line 1663
    :cond_29
    monitor-exit v4

    .line 1664
    const/4 v4, 0x0

    goto :goto_28

    .line 1663
    .end local v0           #featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    .end local v3           #size:I
    :catchall_2c
    move-exception v5

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v5
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 1637
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1638
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1639
    .local v0, libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1640
    .local v2, size:I
    if-lez v2, :cond_17

    .line 1641
    new-array v1, v2, [Ljava/lang/String;

    .line 1642
    .local v1, libs:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1643
    monitor-exit v3

    move-object v3, v1

    .line 1646
    .end local v1           #libs:[Ljava/lang/String;
    :goto_16
    return-object v3

    .line 1645
    :cond_17
    monitor-exit v3

    .line 1646
    const/4 v3, 0x0

    goto :goto_16

    .line 1645
    .end local v0           #libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #size:I
    :catchall_1a
    move-exception v4

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 8
    .parameter "sharedUserName"

    .prologue
    const/4 v5, -0x1

    .line 1943
    if-nez p1, :cond_5

    move v1, v5

    .line 1951
    :goto_4
    return v1

    .line 1946
    :cond_5
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1947
    :try_start_8
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v0

    .line 1948
    .local v0, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_15

    .line 1949
    monitor-exit v1

    move v1, v5

    goto :goto_4

    .line 1951
    :cond_15
    iget v2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    monitor-exit v1

    move v1, v2

    goto :goto_4

    .line 1952
    .end local v0           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method getUidTargetSdkVersionLockedLP(I)I
    .registers 12
    .parameter "uid"

    .prologue
    .line 6540
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v9, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v4

    .line 6541
    .local v4, obj:Ljava/lang/Object;
    instance-of v9, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v9, :cond_39

    .line 6542
    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v6, v0

    .line 6543
    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v9, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 6544
    .local v1, N:I
    const/16 v8, 0x2710

    .line 6545
    .local v8, vers:I
    iget-object v9, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6546
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .line 6547
    .local v2, i:I
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    .line 6548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6549
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_1d

    .line 6550
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6551
    .local v7, v:I
    if-ge v7, v8, :cond_1d

    move v8, v7

    goto :goto_1d

    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v7           #v:I
    :cond_37
    move v9, v8

    .line 6561
    .end local v1           #N:I
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v6           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .end local v8           #vers:I
    :goto_38
    return v9

    .line 6555
    :cond_39
    instance-of v9, v4, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v9, :cond_4c

    .line 6556
    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v5, v0

    .line 6557
    .restart local v5       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_4c

    .line 6558
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_38

    .line 6561
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4c
    const/16 v9, 0x2710

    goto :goto_38
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1669
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1670
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public hasSystemUidErrors()Z
    .registers 2

    .prologue
    .line 6880
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)V
    .registers 5
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 4526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 4527
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .registers 12
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 4537
    .local v6, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/PackageManagerService$InstallParams;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$InstallParams;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4539
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4540
    return-void
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .registers 4
    .parameter "actionName"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1836
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isSafeMode()Z
    .registers 2

    .prologue
    .line 6876
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .registers 17
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 10012
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MOVE_PACKAGE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10014
    const/4 v11, 0x1

    .line 10015
    .local v11, returnCode:I
    const/4 v7, 0x0

    .line 10016
    .local v7, currFlags:I
    const/4 v9, 0x0

    .line 10017
    .local v9, newFlags:I
    iget-object v12, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v12

    .line 10018
    :try_start_e
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Package;

    .line 10019
    .local v10, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_2c

    .line 10020
    const/4 v11, -0x2

    .line 10053
    :cond_19
    :goto_19
    const/4 v1, 0x1

    if-eq v11, v1, :cond_9c

    .line 10054
    new-instance v0, Lcom/android/server/PackageManagerService$MoveParams;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService$MoveParams;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v11}, Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V

    .line 10064
    :goto_2a
    monitor-exit v12

    .line 10065
    return-void

    .line 10023
    :cond_2c
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3f

    invoke-static {v10}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 10024
    const-string v1, "PackageManager"

    const-string v2, "Cannot move system application"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10025
    const/4 v11, -0x3

    goto :goto_19

    .line 10026
    :cond_3f
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_52

    invoke-static {v10}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 10027
    const-string v1, "PackageManager"

    const-string v2, "Cannot move forward locked app."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10028
    const/4 v11, -0x4

    goto :goto_19

    .line 10029
    :cond_52
    iget-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v1, :cond_5f

    .line 10030
    const-string v1, "PackageManager"

    const-string v2, "Attempt to move package which has pending operations"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10031
    const/4 v11, -0x7

    goto :goto_19

    .line 10034
    :cond_5f
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_79

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_79

    .line 10036
    const-string v1, "PackageManager"

    const-string v2, "Ambigous flags specified for move location."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10037
    const/4 v11, -0x5

    .line 10048
    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    if-ne v11, v1, :cond_19

    .line 10049
    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    goto :goto_19

    .line 10064
    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_76
    move-exception v1

    monitor-exit v12
    :try_end_78
    .catchall {:try_start_e .. :try_end_78} :catchall_76

    throw v1

    .line 10039
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_79
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_94

    const/16 v1, 0x8

    move v9, v1

    .line 10041
    :goto_80
    :try_start_80
    invoke-static {v10}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_98

    const/16 v1, 0x8

    move v7, v1

    .line 10043
    :goto_89
    if-ne v9, v7, :cond_6f

    .line 10044
    const-string v1, "PackageManager"

    const-string v2, "No move required. Trying to move to same location"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10045
    const/4 v11, -0x5

    goto :goto_6f

    .line 10039
    :cond_94
    const/16 v1, 0x10

    move v9, v1

    goto :goto_80

    .line 10041
    :cond_98
    const/16 v1, 0x10

    move v7, v1

    goto :goto_89

    .line 10056
    :cond_9c
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 10057
    .local v8, msg:Landroid/os/Message;
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v2, v3}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v2

    .line 10059
    .local v2, srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;
    new-instance v0, Lcom/android/server/PackageManagerService$MoveParams;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService$MoveParams;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V

    .line 10061
    .local v0, mp:Lcom/android/server/PackageManagerService$MoveParams;
    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10062
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v8}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c7
    .catchall {:try_start_80 .. :try_end_c7} :catchall_76

    goto/16 :goto_2a
.end method

.method public nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "lastPackage"

    .prologue
    const/4 v2, 0x0

    .line 4392
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4393
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-nez v1, :cond_b

    .line 4397
    monitor-exit v0

    move-object v0, v2

    .line 4402
    .end local p0
    :goto_a
    return-object v0

    .line 4399
    .restart local p0
    :cond_b
    if-eqz p1, :cond_14

    .line 4400
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4402
    :cond_14
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_2a
    monitor-exit v0

    move-object v0, v1

    goto :goto_a

    .restart local p0
    :cond_2d
    move-object v1, v2

    goto :goto_2a

    .line 4404
    .end local p0
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1045
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 1046
    :catch_5
    move-exception v0

    .line 1047
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_15

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_15

    .line 1048
    const-string v1, "PackageManager"

    const-string v2, "Package Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    :cond_15
    throw v0
.end method

.method public performDexOpt(Ljava/lang/String;)Z
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2732
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    if-nez v1, :cond_8

    move v1, v3

    .line 2744
    :goto_7
    return v1

    .line 2737
    :cond_8
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2738
    :try_start_b
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 2739
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_19

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-eqz v2, :cond_1c

    .line 2740
    :cond_19
    monitor-exit v1

    move v1, v3

    goto :goto_7

    .line 2742
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_2b

    .line 2743
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2744
    const/4 v2, 0x0

    :try_start_21
    invoke-direct {p0, v0, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v2

    if-ne v2, v4, :cond_2e

    move v2, v4

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_30

    move v1, v2

    goto :goto_7

    .line 2742
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_2e
    move v2, v3

    .line 2744
    goto :goto_28

    .line 2745
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2443
    const/4 v0, 0x0

    .line 2445
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 2446
    :try_start_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_67

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    move-object v1, v0

    .line 2447
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 2448
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 2449
    .local v3, p:Landroid/content/pm/PackageParser$Provider;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_6f

    if-eqz p1, :cond_35

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_6f

    :cond_35
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v6, p3}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-boolean v5, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v5, :cond_4d

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6f

    .line 2456
    :cond_4d
    if-nez v1, :cond_6d

    .line 2457
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_6a

    .line 2459
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_55
    :try_start_55
    invoke-static {v3, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_67

    :goto_5c
    move-object v1, v0

    .line 2462
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_f

    .line 2463
    .end local v3           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_5e
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_6a

    .line 2465
    if-eqz v1, :cond_66

    .line 2466
    sget-object v4, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2469
    :cond_66
    return-object v1

    .line 2463
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :catchall_67
    move-exception v5

    :goto_68
    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v5

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    :catchall_6a
    move-exception v5

    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_68

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v3       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_6d
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_55

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :cond_6f
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_5c
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2486
    :try_start_8
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2487
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2489
    .local v2, p:Landroid/content/pm/PackageParser$Instrumentation;
    if-eqz p1, :cond_2a

    iget-object v4, v2, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v4, v4, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2491
    :cond_2a
    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2495
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 2497
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2070
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2071
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1e

    .line 2072
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2073
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2074
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1c

    .line 2075
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2076
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2077
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1c
    move-object v6, v2

    .line 2093
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1d
    return-object v6

    .line 2082
    :cond_1e
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2083
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2084
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_30

    .line 2085
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2088
    :cond_30
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2089
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_45

    .line 2090
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2093
    :cond_45
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2094
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_49
    move-exception v7

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 29
    .parameter "caller"
    .parameter "specifics"
    .parameter "specificTypes"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2100
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 2102
    .local v13, resultsAction:Ljava/lang/String;
    or-int/lit8 v20, p6, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 2106
    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .line 2117
    .local v18, specificsPos:I
    if-eqz p2, :cond_fc

    .line 2118
    const/4 v9, 0x0

    .local v9, i:I
    :goto_17
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_fc

    .line 2119
    aget-object v17, p2, v9

    .line 2120
    .local v17, sintent:Landroid/content/Intent;
    if-nez v17, :cond_28

    .line 2118
    :cond_25
    :goto_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 2125
    :cond_28
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2126
    .local v5, action:Ljava/lang/String;
    if-eqz v13, :cond_35

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_35

    .line 2129
    const/4 v5, 0x0

    .line 2131
    :cond_35
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2132
    .local v8, comp:Landroid/content/ComponentName;
    const/4 v14, 0x0

    .line 2133
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 2134
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_d9

    .line 2135
    if-eqz p3, :cond_d5

    aget-object v20, p3, v9

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 2139
    if-eqz v14, :cond_25

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5a

    .line 2145
    :cond_5a
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2146
    new-instance v8, Landroid/content/ComponentName;

    .end local v8           #comp:Landroid/content/ComponentName;
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    .restart local v8       #comp:Landroid/content/ComponentName;
    :cond_76
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2160
    .local v4, N:I
    move/from16 v11, v18

    .local v11, j:I
    :goto_7c
    if-ge v11, v4, :cond_e6

    .line 2161
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 2162
    .local v19, sri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b6

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c7

    :cond_b6
    if-eqz v5, :cond_d2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d2

    .line 2166
    :cond_c7
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2170
    if-nez v14, :cond_ce

    .line 2171
    move-object/from16 v14, v19

    .line 2173
    :cond_ce
    add-int/lit8 v11, v11, -0x1

    .line 2174
    add-int/lit8 v4, v4, -0x1

    .line 2160
    :cond_d2
    add-int/lit8 v11, v11, 0x1

    goto :goto_7c

    .line 2135
    .end local v4           #N:I
    .end local v11           #j:I
    .end local v19           #sri:Landroid/content/pm/ResolveInfo;
    :cond_d5
    const/16 v20, 0x0

    goto/16 :goto_41

    .line 2149
    :cond_d9
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2150
    if-nez v6, :cond_76

    goto/16 :goto_25

    .line 2179
    .restart local v4       #N:I
    .restart local v11       #j:I
    :cond_e6
    if-nez v14, :cond_ef

    .line 2180
    new-instance v14, Landroid/content/pm/ResolveInfo;

    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    invoke-direct {v14}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2181
    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2183
    :cond_ef
    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2184
    iput v9, v14, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 2185
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_25

    .line 2191
    .end local v4           #N:I
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #comp:Landroid/content/ComponentName;
    .end local v9           #i:I
    .end local v11           #j:I
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v17           #sintent:Landroid/content/Intent;
    :cond_fc
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2192
    .restart local v4       #N:I
    move/from16 v9, v18

    .restart local v9       #i:I
    :goto_102
    const/16 v20, 0x1

    sub-int v20, v4, v20

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_171

    .line 2193
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2194
    .local v15, rii:Landroid/content/pm/ResolveInfo;
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_11b

    .line 2192
    :cond_118
    :goto_118
    add-int/lit8 v9, v9, 0x1

    goto :goto_102

    .line 2200
    :cond_11b
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2201
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_118

    .line 2204
    :cond_126
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_165

    .line 2205
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2206
    .restart local v5       #action:Ljava/lang/String;
    if-eqz v13, :cond_13a

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_126

    .line 2211
    :cond_13a
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #j:I
    :goto_13c
    if-ge v11, v4, :cond_126

    .line 2212
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 2213
    .local v16, rij:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_162

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_162

    .line 2214
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2218
    add-int/lit8 v11, v11, -0x1

    .line 2219
    add-int/lit8 v4, v4, -0x1

    .line 2211
    :cond_162
    add-int/lit8 v11, v11, 0x1

    goto :goto_13c

    .line 2226
    .end local v5           #action:Ljava/lang/String;
    .end local v11           #j:I
    .end local v16           #rij:Landroid/content/pm/ResolveInfo;
    :cond_165
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_118

    .line 2227
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_118

    .line 2232
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #rii:Landroid/content/pm/ResolveInfo;
    :cond_171
    if-eqz p1, :cond_1ac

    .line 2233
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2234
    const/4 v9, 0x0

    .end local p0
    :goto_178
    if-ge v9, v4, :cond_1ac

    .line 2235
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    .line 2236
    .local v7, ainfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c8

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c8

    .line 2238
    invoke-interface {v12, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2247
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_1ac
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_1cb

    .line 2248
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2249
    const/4 v9, 0x0

    :goto_1b5
    if-ge v9, v4, :cond_1cb

    .line 2250
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 2249
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b5

    .line 2234
    .restart local v7       #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_1c8
    add-int/lit8 v9, v9, 0x1

    goto :goto_178

    .line 2255
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_1cb
    return-object v12
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2260
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2261
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1e

    .line 2262
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2263
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2264
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1c

    .line 2265
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2266
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2267
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1c
    move-object v6, v2

    .line 2283
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1d
    return-object v6

    .line 2272
    :cond_1e
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2273
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2274
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_30

    .line 2275
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2278
    :cond_30
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2279
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_45

    .line 2280
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2283
    :cond_45
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2284
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_49
    move-exception v7

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2303
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2304
    .local v0, comp:Landroid/content/ComponentName;
    if-eqz v0, :cond_1e

    .line 2305
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2306
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p3}, Lcom/android/server/PackageManagerService;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 2307
    .local v5, si:Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_1c

    .line 2308
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2309
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2310
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1c
    move-object v6, v1

    .line 2326
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #si:Landroid/content/pm/ServiceInfo;
    :goto_1d
    return-object v6

    .line 2315
    :cond_1e
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2316
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 2317
    .local v3, pkgName:Ljava/lang/String;
    if-nez v3, :cond_30

    .line 2318
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2321
    :cond_30
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2322
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_45

    .line 2323
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2326
    :cond_45
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 2327
    .end local v2           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v3           #pkgName:Ljava/lang/String;
    :catchall_49
    move-exception v7

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1437
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1438
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1439
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1440
    .local v2, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez p1, :cond_3b

    .line 1441
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v4, :cond_30

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v4, :cond_16

    .line 1442
    :cond_30
    invoke-static {v2, p2}, Lcom/android/server/PackageManagerService;->generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1455
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_38
    move-exception v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v4

    .line 1445
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .restart local v2       #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_3b
    :try_start_3b
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v4, :cond_16

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1446
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1451
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5e

    .line 1452
    monitor-exit v3

    move-object v3, v1

    .line 1454
    :goto_5d
    return-object v3

    :cond_5e
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    move-object v4, v1

    :goto_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_3b .. :try_end_68} :catchall_38

    move-object v3, v4

    goto :goto_5d

    :cond_6a
    const/4 v4, 0x0

    goto :goto_67
.end method

.method public querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .parameter "outNames"
    .parameter "outInfo"

    .prologue
    .line 2423
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2424
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2427
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2429
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 2431
    .local v2, p:Landroid/content/pm/PackageParser$Provider;
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_31

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    .line 2434
    :cond_31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2435
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2438
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_41
    move-exception v4

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_44
    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 2439
    return-void
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 15
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 1242
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1244
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1245
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v0, :cond_1f

    .line 1246
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1247
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1252
    .local v3, outerDepth:I
    :cond_23
    :goto_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v9, :cond_77

    if-ne v5, v10, :cond_31

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_77

    .line 1254
    :cond_31
    if-eq v5, v10, :cond_23

    const/4 v6, 0x4

    if-eq v5, v6, :cond_23

    .line 1259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1260
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1261
    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1262
    .local v2, gidStr:Ljava/lang/String;
    if-eqz v2, :cond_5a

    .line 1263
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .line 1264
    .local v1, gid:I
    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    .line 1270
    .end local v1           #gid:I
    .end local v2           #gidStr:Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_23

    .line 1266
    .restart local v2       #gidStr:Ljava/lang/String;
    :cond_5a
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 1272
    .end local v2           #gidStr:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_77
    return-void
.end method

.method readPermissions()V
    .registers 12

    .prologue
    const-string v10, "etc/permissions/platform.xml"

    const-string v9, " cannot be read"

    const-string v8, "PackageManager"

    .line 1084
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1085
    .local v4, libraryDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1086
    :cond_1d
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_3b
    return-void

    .line 1089
    :cond_3c
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_61

    .line 1090
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1095
    :cond_61
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_67
    if-ge v2, v3, :cond_d8

    aget-object v1, v0, v2

    .line 1097
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1095
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1101
    :cond_7a
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 1102
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 1105
    :cond_af
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 1106
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 1110
    :cond_d4
    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_77

    .line 1114
    .end local v1           #f:Ljava/io/File;
    :cond_d8
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1116
    .local v5, permFile:Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto/16 :goto_3b
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 6532
    const-string v0, "PackageManager"

    const-string v1, "removePackageFromPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6533
    return-void
.end method

.method removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 20
    .parameter "pkg"
    .parameter "chatty"

    .prologue
    .line 3630
    if-eqz p2, :cond_21

    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 3634
    :try_start_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3637
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_55

    .line 3638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3641
    :cond_55
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3642
    .local v2, N:I
    const/4 v9, 0x0

    .line 3644
    .local v9, r:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_60
    if-ge v5, v2, :cond_10e

    .line 3645
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Provider;

    .line 3646
    .local v8, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v13, v0

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v13, :cond_92

    .line 3644
    :cond_8f
    :goto_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 3656
    :cond_92
    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3657
    .local v7, names:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_9d
    array-length v13, v7

    if-ge v6, v13, :cond_f2

    .line 3658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v13, v0

    aget-object v14, v7, v6

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_ef

    .line 3659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v13, v0

    aget-object v14, v7, v6

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3660
    if-eqz p2, :cond_ef

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unregistered content provider: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", className = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isSyncable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v15, v15, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_ef
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    .line 3666
    :cond_f2
    if-eqz p2, :cond_8f

    .line 3667
    if-nez v9, :cond_108

    .line 3668
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3672
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_fd
    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8f

    .line 3776
    .end local v2           #N:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v9           #r:Ljava/lang/StringBuilder;
    :catchall_105
    move-exception v13

    monitor-exit v12
    :try_end_107
    .catchall {:try_start_27 .. :try_end_107} :catchall_105

    throw v13

    .line 3670
    .restart local v2       #N:I
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #names:[Ljava/lang/String;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :cond_108
    const/16 v13, 0x20

    :try_start_10a
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fd

    .line 3675
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_10e
    if-eqz v9, :cond_128

    .line 3676
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Providers: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_128
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3680
    const/4 v9, 0x0

    .line 3681
    const/4 v5, 0x0

    :goto_133
    if-ge v5, v2, :cond_163

    .line 3682
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Service;

    .line 3683
    .local v10, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v13, v0

    invoke-virtual {v13, v10}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 3684
    if-eqz p2, :cond_15a

    .line 3685
    if-nez v9, :cond_15d

    .line 3686
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3690
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_153
    iget-object v13, v10, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    :cond_15a
    add-int/lit8 v5, v5, 0x1

    goto :goto_133

    .line 3688
    :cond_15d
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_153

    .line 3693
    .end local v10           #s:Landroid/content/pm/PackageParser$Service;
    :cond_163
    if-eqz v9, :cond_17d

    .line 3694
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Services: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    :cond_17d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3698
    const/4 v9, 0x0

    .line 3699
    const/4 v5, 0x0

    :goto_188
    if-ge v5, v2, :cond_1ba

    .line 3700
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 3701
    .local v3, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v13, v0

    const-string v14, "receiver"

    invoke-virtual {v13, v3, v14}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3702
    if-eqz p2, :cond_1b1

    .line 3703
    if-nez v9, :cond_1b4

    .line 3704
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3708
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_1aa
    iget-object v13, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3699
    :cond_1b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_188

    .line 3706
    :cond_1b4
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1aa

    .line 3711
    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_1ba
    if-eqz v9, :cond_1d4

    .line 3712
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Receivers: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    :cond_1d4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3716
    const/4 v9, 0x0

    .line 3717
    const/4 v5, 0x0

    :goto_1df
    if-ge v5, v2, :cond_211

    .line 3718
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 3719
    .restart local v3       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v13, v0

    const-string v14, "activity"

    invoke-virtual {v13, v3, v14}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3720
    if-eqz p2, :cond_208

    .line 3721
    if-nez v9, :cond_20b

    .line 3722
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3726
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_201
    iget-object v13, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    :cond_208
    add-int/lit8 v5, v5, 0x1

    goto :goto_1df

    .line 3724
    :cond_20b
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_201

    .line 3729
    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_211
    if-eqz v9, :cond_22b

    .line 3730
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Activities: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    :cond_22b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3734
    const/4 v9, 0x0

    .line 3735
    const/4 v5, 0x0

    :goto_236
    if-ge v5, v2, :cond_28d

    .line 3736
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Permission;

    .line 3737
    .local v8, p:Landroid/content/pm/PackageParser$Permission;
    const/4 v11, 0x0

    .line 3738
    .local v11, tree:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v14, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3739
    .local v4, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v4, :cond_269

    .line 3740
    const/4 v11, 0x1

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    iget-object v14, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3743
    .restart local v4       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_269
    if-eqz v4, :cond_284

    iget-object v13, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v13, v8, :cond_284

    .line 3744
    const/4 v13, 0x0

    iput-object v13, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 3745
    if-eqz p2, :cond_284

    .line 3746
    if-nez v9, :cond_287

    .line 3747
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3751
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_27d
    iget-object v13, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3735
    :cond_284
    add-int/lit8 v5, v5, 0x1

    goto :goto_236

    .line 3749
    :cond_287
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27d

    .line 3755
    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v11           #tree:Z
    :cond_28d
    if-eqz v9, :cond_2a7

    .line 3756
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Permissions: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    :cond_2a7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3760
    const/4 v9, 0x0

    .line 3761
    const/4 v5, 0x0

    :goto_2b2
    if-ge v5, v2, :cond_2e6

    .line 3762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Instrumentation;

    .line 3763
    .local v3, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3764
    if-eqz p2, :cond_2dd

    .line 3765
    if-nez v9, :cond_2e0

    .line 3766
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3770
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_2d6
    iget-object v13, v3, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v13, v13, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    :cond_2dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b2

    .line 3768
    :cond_2e0
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d6

    .line 3773
    .end local v3           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_2e6
    if-eqz v9, :cond_300

    .line 3774
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Instrumentation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    :cond_300
    monitor-exit v12
    :try_end_301
    .catchall {:try_start_10a .. :try_end_301} :catchall_105

    .line 3777
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 1818
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1819
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    .line 1820
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1821
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_3f

    .line 1822
    iget v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    .line 1823
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1830
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2

    .line 1827
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v2}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1830
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_30

    .line 1831
    return-void
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 13
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v4, "PackageManager"

    .line 6590
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-eq v4, v5, :cond_13

    .line 6591
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6594
    :cond_13
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-eq v4, v5, :cond_21

    .line 6595
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 category."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6598
    :cond_21
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-eqz v4, :cond_41

    .line 6602
    :cond_39
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have no data authorities, paths, schemes or types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6606
    :cond_41
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 6607
    :try_start_44
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_80

    .line 6610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_78

    .line 6612
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6614
    monitor-exit v4

    .line 6633
    :goto_77
    return-void

    .line 6616
    :cond_78
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6620
    :cond_80
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6621
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 6622
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 6623
    .local v1, category:Ljava/lang/String;
    :cond_94
    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 6624
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6625
    .local v3, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 6626
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 6627
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed preferred activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6628
    new-instance v5, Landroid/util/LogPrinter;

    const/4 v6, 0x4

    const-string v7, "PackageManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p1, v5, v6}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_94

    .line 6632
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v3           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_e7
    move-exception v5

    monitor-exit v4
    :try_end_e9
    .catchall {:try_start_44 .. :try_end_e9} :catchall_e7

    throw v5

    .line 6631
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #category:Ljava/lang/String;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_ea
    :try_start_ea
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 6632
    monitor-exit v4
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_e7

    goto :goto_77
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 7
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2408
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2409
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 2410
    .local v0, provider:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v2, :cond_25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    :cond_25
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    :goto_29
    monitor-exit v1

    return-object v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_29

    .line 2416
    .end local v0           #provider:Landroid/content/pm/PackageParser$Provider;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 1957
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1958
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 7
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 2289
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2291
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_16

    .line 2292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    .line 2295
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v1, p0

    .line 2298
    :goto_15
    return-object v1

    .restart local p0
    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method schedulePackageCleaning(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4409
    return-void
.end method

.method scheduleWriteSettingsLocked()V
    .registers 5

    .prologue
    const/16 v3, 0xd

    .line 681
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 682
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 684
    :cond_11
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .registers 5
    .parameter "appPackageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 6698
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6699
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .registers 6
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 6703
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6705
    return-void
.end method

.method public setInstallLocation(I)Z
    .registers 6
    .parameter "loc"

    .prologue
    const/4 v3, 0x1

    .line 10210
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10212
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->getInstallLocation()I

    move-result v0

    if-ne v0, p1, :cond_11

    move v0, v3

    .line 10222
    :goto_10
    return v0

    .line 10215
    :cond_11
    if-eqz p1, :cond_18

    if-eq p1, v3, :cond_18

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 10218
    :cond_18
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v3

    .line 10220
    goto :goto_10

    .line 10222
    :cond_25
    const/4 v0, 0x0

    goto :goto_10
.end method

.method startCleaningPackages()V
    .registers 5

    .prologue
    .line 4412
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 4413
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-nez v3, :cond_9

    .line 4414
    monitor-exit v2

    .line 4429
    :cond_8
    :goto_8
    return-void

    .line 4416
    :cond_9
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_18

    .line 4417
    monitor-exit v2

    goto :goto_8

    .line 4419
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3

    :cond_18
    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 4420
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4421
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4422
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4423
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_8

    .line 4425
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2d
    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_8

    .line 4426
    :catch_31
    move-exception v2

    goto :goto_8
.end method

.method public systemReady()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 6863
    iput-boolean v3, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    .line 6866
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "compatibility_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_16

    move v0, v3

    .line 6869
    .local v0, compatibilityModeEnabled:Z
    :goto_12
    invoke-static {v0}, Landroid/content/pm/PackageParser;->setCompatibilityModeEnabled(Z)V

    .line 6873
    return-void

    .line 6866
    .end local v0           #compatibilityModeEnabled:Z
    :cond_16
    const/4 v1, 0x0

    move v0, v1

    goto :goto_12
.end method

.method public updateExternalMediaStatus(ZZ)V
    .registers 10
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    const-string v6, "unmounted"

    const-string v5, "mounted"

    .line 9717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_14

    .line 9718
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Media status can only be updated by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9720
    :cond_14
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 9721
    :try_start_17
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating external media status from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-eqz v4, :cond_5c

    const-string v4, "mounted"

    move-object v4, v5

    :goto_2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_60

    const-string v4, "mounted"

    move-object v4, v5

    :goto_3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9726
    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-ne p1, v2, :cond_66

    .line 9727
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_64

    const/4 v4, 0x1

    :goto_50
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 9729
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9730
    monitor-exit v1

    .line 9741
    .end local v0           #msg:Landroid/os/Message;
    :goto_5b
    return-void

    .line 9721
    :cond_5c
    const-string v4, "unmounted"

    move-object v4, v6

    goto :goto_2b

    :cond_60
    const-string v4, "unmounted"

    move-object v4, v6

    goto :goto_3a

    .line 9727
    :cond_64
    const/4 v4, 0x0

    goto :goto_50

    .line 9732
    :cond_66
    iput-boolean p1, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    .line 9733
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_17 .. :try_end_69} :catchall_74

    .line 9735
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/PackageManagerService$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/PackageManagerService$11;-><init>(Lcom/android/server/PackageManagerService;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5b

    .line 9733
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2
.end method
