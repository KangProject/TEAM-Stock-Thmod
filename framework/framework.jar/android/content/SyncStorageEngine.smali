.class public Landroid/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStorageEngine$DayStats;,
        Landroid/content/SyncStorageEngine$SyncHistoryItem;,
        Landroid/content/SyncStorageEngine$AuthorityInfo;,
        Landroid/content/SyncStorageEngine$AccountInfo;,
        Landroid/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEBUG_FILE:Z = false

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String; = null

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x2

.field public static final SOURCES:[Ljava/lang/String; = null

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field public static final SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static sAuthorityRenames:Ljava/util/HashMap;
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

.field private static volatile sSyncStorageEngine:Landroid/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Landroid/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSync:Landroid/content/SyncInfo;

.field private final mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

.field private mMasterSyncAutomatically:Z

.field private mMccMnc:Ljava/lang/String;

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Lcom/android/internal/os/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Lcom/android/internal/os/AtomicFile;

.field private final mStatusFile:Lcom/android/internal/os/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/SyncStorageEngine;->EVENTS:[Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PERIODIC"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 145
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/4 v0, 0x0

    sput-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .parameter "context"
    .parameter "dataDir"

    .prologue
    const/4 v4, 0x0

    .line 303
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 238
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    .line 249
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 255
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 258
    iput v4, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 261
    const/16 v3, 0x1c

    new-array v3, v3, [Landroid/content/SyncStorageEngine$DayStats;

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    .line 297
    iput v4, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 299
    iput v4, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 300
    iput-boolean v4, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 301
    const-string v3, "0"

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;

    .line 2170
    new-instance v3, Landroid/content/SyncStorageEngine$1;

    invoke-direct {v3, p0}, Landroid/content/SyncStorageEngine$1;-><init>(Landroid/content/SyncStorageEngine;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    iput-object p1, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 305
    sput-object p0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 307
    const-string v3, "GMT+0"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 309
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 312
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v2, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "sync"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v1, syncDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 315
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "accounts.xml"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    .line 316
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "status.bin"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    .line 317
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "pending.bin"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    .line 318
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "stats.bin"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 326
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 327
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 328
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 329
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 330
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 331
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 332
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 333
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 334
    return-void
.end method

.method static synthetic access$000(Landroid/content/SyncStorageEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/SyncStorageEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/content/SyncStorageEngine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V
    .locals 6
    .parameter "op"

    .prologue
    .line 2035
    const/4 v2, 0x0

    .line 2037
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2045
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2046
    .local v3, out:Landroid/os/Parcel;
    invoke-direct {p0, p1, v3}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 2047
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2048
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2053
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2057
    .end local v3           #out:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 2038
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2040
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    goto :goto_0

    .line 2049
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 2050
    .local v1, e1:Ljava/io/IOException;
    :try_start_3
    const-string v4, "SyncManager"

    const-string v5, "Error writing pending operations"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2053
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2054
    .end local v1           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 2052
    :catchall_0
    move-exception v4

    .line 2053
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2052
    :goto_1
    throw v4

    .line 2054
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public static equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "b1"
    .parameter "b2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 993
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 1007
    :goto_0
    return v2

    .line 996
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 997
    goto :goto_0

    .line 999
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1000
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 1001
    goto :goto_0

    .line 1003
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 1004
    goto :goto_0

    .end local v1           #key:Ljava/lang/String;
    :cond_4
    move v2, v5

    .line 1007
    goto :goto_0
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2060
    const/4 v0, 0x0

    .line 2061
    .local v0, flatData:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2063
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2068
    return-object v0

    .line 2066
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 6
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const-string v4, "SyncManager"

    .line 1289
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1290
    .local v0, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_1

    .line 1291
    if-eqz p3, :cond_0

    .line 1292
    const-string v2, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v5

    .line 1308
    :goto_0
    return-object v2

    .line 1298
    :cond_1
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1299
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_3

    .line 1300
    if-eqz p3, :cond_2

    .line 1301
    const-string v2, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1302
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v5

    .line 1305
    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 1308
    goto :goto_0
.end method

.method private getCurrentDayLocked()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1268
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1269
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1270
    .local v0, dayOfYear:I
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1271
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    .line 1272
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1273
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Landroid/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1274
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    .line 1276
    :cond_0
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1732
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1736
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 5
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "ident"
    .parameter "doWrite"

    .prologue
    const-string v4, "SyncManager"

    .line 1313
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1314
    .local v0, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .end local v0           #account:Landroid/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/Account;)V

    .line 1316
    .restart local v0       #account:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    :cond_0
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1319
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_3

    .line 1320
    if-gez p3, :cond_1

    .line 1321
    iget p3, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1322
    iget v2, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1323
    const/4 p4, 0x1

    .line 1325
    :cond_1
    const-string v2, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1326
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created a new AuthorityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_2
    new-instance v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {v1, p1, p2, p3}, Landroid/content/SyncStorageEngine$AuthorityInfo;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1330
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    if-eqz p4, :cond_3

    .line 1333
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1337
    :cond_3
    return-object v1
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .parameter "authorityId"

    .prologue
    .line 1360
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1361
    .local v0, status:Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0           #status:Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1363
    .restart local v0       #status:Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1365
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Landroid/content/SyncStorageEngine;
    .locals 2

    .prologue
    .line 351
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 341
    sget-object v1, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 347
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Landroid/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    goto :goto_0
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1497
    const/4 v8, 0x0

    .line 1499
    .local v8, writeNeeded:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v1, authoritiesToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1501
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 1502
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1504
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    sget-object v9, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v10, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1505
    .local v7, newAuthorityName:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1501
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1511
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    iget-boolean v9, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v9, :cond_0

    .line 1520
    iget-object v9, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    const-string v10, "cleanup"

    invoke-direct {p0, v9, v7, v10}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1524
    iget-object v9, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    const/4 v10, -0x1

    invoke-direct {p0, v9, v7, v10, v11}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1526
    .local v6, newAuthority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1527
    const/4 v8, 0x1

    goto :goto_1

    .line 1530
    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v6           #newAuthority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #newAuthorityName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1531
    .local v3, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v9, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v10, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Landroid/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1533
    const/4 v8, 0x1

    goto :goto_2

    .line 1536
    .end local v3           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    return v8
.end method

.method public static newTestInstance(Landroid/content/Context;)Landroid/content/SyncStorageEngine;
    .locals 2
    .parameter "context"

    .prologue
    .line 337
    new-instance v0, Landroid/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 11
    .parameter "parser"
    .parameter "version"

    .prologue
    .line 1540
    const/4 v2, 0x0

    .line 1541
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v6, -0x1

    .line 1543
    .local v6, id:I
    const/4 v8, 0x0

    :try_start_0
    const-string v9, "id"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 1550
    :goto_0
    if-ltz v6, :cond_3

    .line 1551
    const/4 v8, 0x0

    const-string v9, "authority"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1552
    .local v3, authorityName:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "enabled"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1553
    .local v5, enabled:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "syncable"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    .local v7, syncable:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "account"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, accountName:Ljava/lang/String;
    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, accountType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1557
    const-string v1, "com.google"

    .line 1558
    const-string/jumbo v7, "unknown"

    .line 1560
    :cond_0
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1565
    .restart local v2       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_1

    .line 1567
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {p0, v8, v3, v6, v9}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1574
    if-lez p2, :cond_1

    .line 1575
    iget-object v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1578
    :cond_1
    if-eqz v2, :cond_8

    .line 1579
    if-eqz v5, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1580
    const-string/jumbo v8, "unknown"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1581
    const/4 v8, -0x1

    iput v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 1594
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v3           #authorityName:Ljava/lang/String;
    .end local v5           #enabled:Ljava/lang/String;
    .end local v7           #syncable:Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v2

    .line 1545
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1546
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v8, "SyncManager"

    const-string v9, "error parsing the id of the authority"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1547
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 1548
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v8, "SyncManager"

    const-string v9, "the id of the authority is null"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1579
    .end local v4           #e:Ljava/lang/NullPointerException;
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v3       #authorityName:Ljava/lang/String;
    .restart local v5       #enabled:Ljava/lang/String;
    .restart local v7       #syncable:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1583
    :cond_5
    if-eqz v7, :cond_6

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    const/4 v8, 0x1

    :goto_3
    iput v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 1587
    :cond_8
    const-string v8, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure adding authority: account="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " auth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " syncable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/Pair;)V
    .locals 10
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const-string v9, "error parsing bundle value"

    const-string v8, "SyncManager"

    .line 1617
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1618
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "name"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1620
    .local v3, type:Ljava/lang/String;
    const-string/jumbo v6, "value1"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1621
    .local v4, value1:Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1624
    .local v5, value2:Ljava/lang/String;
    :try_start_0
    const-string v6, "long"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1625
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    const-string v6, "integer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1627
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1639
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1640
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1628
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    const-string v6, "double"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1629
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1641
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1642
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1630
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    const-string v6, "float"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1631
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1632
    :cond_4
    const-string v6, "boolean"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1633
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1634
    :cond_5
    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1635
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1636
    :cond_6
    const-string v6, "account"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1637
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 9
    .parameter "parser"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v8, "SyncManager"

    .line 1598
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1599
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "period"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1602
    .local v4, periodValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1610
    .local v2, period:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 1611
    .local v5, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v6, p2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    .line 1613
    .end local v2           #period:J
    .end local v5           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :goto_0
    return-object v6

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SyncManager"

    const-string v6, "error parsing the period of a periodic sync"

    invoke-static {v8, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 1605
    goto :goto_0

    .line 1606
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1607
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SyncManager"

    const-string v6, "the period of a periodic sync is null"

    invoke-static {v8, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 1608
    goto :goto_0
.end method

.method private readAccountInfoLocked()V
    .locals 20

    .prologue
    .line 1410
    const/4 v7, -0x1

    .line 1411
    .local v7, highestAuthorityId:I
    const/4 v6, 0x0

    .line 1413
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 1415
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1416
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    move-object v0, v11

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1417
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1418
    .local v5, eventType:I
    :goto_0
    const/16 v17, 0x2

    move v0, v5

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 1419
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 1421
    :cond_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1422
    .local v14, tagName:Ljava/lang/String;
    const-string v17, "accounts"

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1423
    const/16 v17, 0x0

    const-string v18, "listen-for-tickles"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1425
    .local v9, listen:Ljava/lang/String;
    const/16 v17, 0x0

    const-string/jumbo v18, "version"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1426
    .local v16, versionString:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "mccmnc"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1429
    .local v13, savedMccMnc:Ljava/lang/String;
    if-nez v16, :cond_7

    const/16 v17, 0x0

    move/from16 v15, v17

    .line 1433
    .local v15, version:I
    :goto_1
    const/16 v17, 0x0

    const-string v18, "nextAuthorityId"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 1435
    .local v10, nextIdString:Ljava/lang/String;
    if-nez v10, :cond_8

    const/16 v17, 0x0

    move/from16 v8, v17

    .line 1436
    .local v8, id:I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1440
    .end local v8           #id:I
    :goto_3
    if-nez v9, :cond_9

    const/16 v17, 0x0

    :goto_4
    :try_start_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 1442
    if-eqz v13, :cond_1

    .line 1443
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;

    .line 1445
    :cond_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1446
    const/4 v3, 0x0

    .line 1447
    .local v3, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v12, 0x0

    .line 1449
    .local v12, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_2
    const/16 v17, 0x2

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1450
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1451
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1452
    const-string v17, "authority"

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1453
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v15

    invoke-direct {v0, v1, v2}, Landroid/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1454
    const/4 v12, 0x0

    .line 1455
    move-object v0, v3

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v7

    if-le v0, v1, :cond_3

    .line 1456
    iget v7, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1469
    :cond_3
    :goto_5
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v5

    .line 1470
    const/16 v17, 0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 1480
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v12           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v13           #savedMccMnc:Ljava/lang/String;
    .end local v15           #version:I
    .end local v16           #versionString:Ljava/lang/String;
    :cond_4
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1481
    if-eqz v6, :cond_5

    .line 1483
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1489
    :cond_5
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1490
    .end local v5           #eventType:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #tagName:Ljava/lang/String;
    :cond_6
    :goto_7
    return-void

    .line 1429
    .restart local v5       #eventType:I
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #savedMccMnc:Ljava/lang/String;
    .restart local v14       #tagName:Ljava/lang/String;
    .restart local v16       #versionString:Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v17

    move/from16 v15, v17

    goto/16 :goto_1

    .line 1430
    :catch_0
    move-exception v4

    .line 1431
    .local v4, e:Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .restart local v15       #version:I
    goto/16 :goto_1

    .line 1435
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #nextIdString:Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v17

    move/from16 v8, v17

    goto/16 :goto_2

    .line 1440
    :cond_9
    :try_start_6
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    goto/16 :goto_4

    .line 1459
    .restart local v3       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v12       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_a
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1460
    const-string v17, "periodicSync"

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v3, :cond_3

    .line 1461
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_5

    .line 1463
    :cond_b
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    if-eqz v12, :cond_3

    .line 1464
    const-string v17, "extra"

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1465
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/Pair;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_5

    .line 1472
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v5           #eventType:I
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v13           #savedMccMnc:Ljava/lang/String;
    .end local v14           #tagName:Ljava/lang/String;
    .end local v15           #version:I
    .end local v16           #versionString:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v4, v17

    .line 1473
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v17, "SyncManager"

    const-string v18, "Error reading accounts"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1480
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1481
    if-eqz v6, :cond_6

    .line 1483
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_7

    .line 1484
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v17

    goto/16 :goto_7

    .line 1475
    :catch_3
    move-exception v17

    move-object/from16 v4, v17

    .line 1476
    .local v4, e:Ljava/io/IOException;
    if-nez v6, :cond_c

    :try_start_9
    const-string v17, "SyncManager"

    const-string v18, "No initial accounts"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1480
    :goto_8
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1481
    if-eqz v6, :cond_6

    .line 1483
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_7

    .line 1477
    :cond_c
    :try_start_b
    const-string v17, "SyncManager"

    const-string v18, "Error reading accounts"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    .line 1480
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1481
    if-eqz v6, :cond_d

    .line 1483
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1480
    :cond_d
    :goto_9
    throw v17

    .line 1484
    :catch_4
    move-exception v18

    goto :goto_9

    .restart local v5       #eventType:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #tagName:Ljava/lang/String;
    :catch_5
    move-exception v17

    goto/16 :goto_6

    .line 1437
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v10       #nextIdString:Ljava/lang/String;
    .restart local v13       #savedMccMnc:Ljava/lang/String;
    .restart local v15       #version:I
    .restart local v16       #versionString:Ljava/lang/String;
    :catch_6
    move-exception v17

    goto/16 :goto_3
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .locals 28

    .prologue
    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string v8, "syncmanager.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 1747
    .local v18, file:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 1751
    .local v24, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1753
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    move-object/from16 v0, v24

    move-object v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1758
    :goto_1
    if-eqz v6, :cond_0

    .line 1759
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_8

    const/4 v7, 0x1

    move/from16 v20, v7

    .line 1763
    .local v20, hasType:Z
    :goto_2
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1764
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v7, "stats, status"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1765
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1766
    .local v22, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "_id"

    const-string v8, "status._id as _id"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const-string v7, "account"

    const-string v8, "stats.account as account"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    if-eqz v20, :cond_2

    .line 1769
    const-string v7, "account_type"

    const-string v8, "stats.account_type as account_type"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    :cond_2
    const-string v7, "authority"

    const-string v8, "stats.authority as authority"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    const-string/jumbo v7, "totalElapsedTime"

    const-string/jumbo v8, "totalElapsedTime"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const-string v7, "numSyncs"

    const-string v8, "numSyncs"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    const-string v7, "numSourceLocal"

    const-string v8, "numSourceLocal"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    const-string v7, "numSourcePoll"

    const-string v8, "numSourcePoll"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    const-string v7, "numSourceServer"

    const-string v8, "numSourceServer"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const-string v7, "numSourceUser"

    const-string v8, "numSourceUser"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    const-string v7, "lastSuccessSource"

    const-string v8, "lastSuccessSource"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-string v7, "lastSuccessTime"

    const-string v8, "lastSuccessTime"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    const-string v7, "lastFailureSource"

    const-string v8, "lastFailureSource"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    const-string v7, "lastFailureTime"

    const-string v8, "lastFailureTime"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    const-string v7, "lastFailureMesg"

    const-string v8, "lastFailureMesg"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const-string v7, "pending"

    const-string v8, "pending"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1785
    const-string v7, "stats._id = status.stats_id"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1786
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1787
    .local v17, c:Landroid/database/Cursor;
    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1788
    const-string v7, "account"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1789
    .local v13, accountName:Ljava/lang/String;
    if-eqz v20, :cond_9

    const-string v7, "account_type"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 1791
    .local v14, accountType:Ljava/lang/String;
    :goto_4
    if-nez v14, :cond_4

    .line 1792
    const-string v14, "com.google"

    .line 1794
    :cond_4
    const-string v7, "authority"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1795
    .local v16, authorityName:Ljava/lang/String;
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v13, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v16

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v15

    .line 1798
    .local v15, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v15, :cond_3

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v21

    .line 1800
    .local v21, i:I
    const/16 v19, 0x0

    .line 1801
    .local v19, found:Z
    const/16 v26, 0x0

    .line 1802
    .local v26, st:Landroid/content/SyncStatusInfo;
    :cond_5
    if-lez v21, :cond_6

    .line 1803
    add-int/lit8 v21, v21, -0x1

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #st:Landroid/content/SyncStatusInfo;
    check-cast v26, Landroid/content/SyncStatusInfo;

    .line 1805
    .restart local v26       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move v7, v0

    iget v8, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v7, v8, :cond_5

    .line 1806
    const/16 v19, 0x1

    .line 1810
    :cond_6
    if-nez v19, :cond_7

    .line 1811
    new-instance v26, Landroid/content/SyncStatusInfo;

    .end local v26           #st:Landroid/content/SyncStatusInfo;
    iget v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v26

    move v1, v7

    invoke-direct {v0, v1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1812
    .restart local v26       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    iget v8, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1814
    :cond_7
    const-string/jumbo v7, "totalElapsedTime"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1815
    const-string v7, "numSyncs"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1816
    const-string v7, "numSourceLocal"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 1817
    const-string v7, "numSourcePoll"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 1818
    const-string v7, "numSourceServer"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 1819
    const-string v7, "numSourceUser"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 1820
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 1821
    const-string v7, "lastSuccessSource"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1822
    const-string v7, "lastSuccessTime"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1823
    const-string v7, "lastFailureSource"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v26

    iput v0, v1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1824
    const-string v7, "lastFailureTime"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1825
    const-string v7, "lastFailureMesg"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1826
    const-string v7, "pending"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_5
    move v0, v7

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_3

    .line 1759
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v13           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v15           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v16           #authorityName:Ljava/lang/String;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v19           #found:Z
    .end local v20           #hasType:Z
    .end local v21           #i:I
    .end local v22           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26           #st:Landroid/content/SyncStatusInfo;
    :cond_8
    const/4 v7, 0x0

    move/from16 v20, v7

    goto/16 :goto_2

    .line 1789
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v13       #accountName:Ljava/lang/String;
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v20       #hasType:Z
    .restart local v22       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/4 v7, 0x0

    move-object v14, v7

    goto/16 :goto_4

    .line 1826
    .restart local v14       #accountType:Ljava/lang/String;
    .restart local v15       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v16       #authorityName:Ljava/lang/String;
    .restart local v19       #found:Z
    .restart local v21       #i:I
    .restart local v26       #st:Landroid/content/SyncStatusInfo;
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 1830
    .end local v13           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v15           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v16           #authorityName:Ljava/lang/String;
    .end local v19           #found:Z
    .end local v21           #i:I
    .end local v26           #st:Landroid/content/SyncStatusInfo;
    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1833
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1834
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v7, "settings"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1835
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1836
    :cond_c
    :goto_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1837
    const-string v7, "name"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1838
    .local v23, name:Ljava/lang/String;
    const-string/jumbo v7, "value"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1839
    .local v27, value:Ljava/lang/String;
    if-eqz v23, :cond_c

    .line 1840
    const-string v7, "listen_for_tickles"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1841
    if-eqz v27, :cond_d

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    goto :goto_7

    .line 1842
    :cond_f
    const-string v7, "sync_provider_"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1843
    const-string v7, "sync_provider_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v23

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1845
    .local v25, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v21

    .line 1846
    .restart local v21       #i:I
    :cond_10
    :goto_8
    if-lez v21, :cond_c

    .line 1847
    add-int/lit8 v21, v21, -0x1

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1849
    .restart local v15       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1850
    if-eqz v27, :cond_11

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    const/4 v7, 0x1

    :goto_9
    iput-boolean v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1851
    const/4 v7, 0x1

    iput v7, v15, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_8

    .line 1850
    :cond_12
    const/4 v7, 0x0

    goto :goto_9

    .line 1857
    .end local v15           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v21           #i:I
    .end local v23           #name:Ljava/lang/String;
    .end local v25           #provider:Ljava/lang/String;
    .end local v27           #value:Ljava/lang/String;
    :cond_13
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1859
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1861
    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 1755
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v20           #hasType:Z
    .end local v22           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method private readPendingOperationsLocked()V
    .locals 14

    .prologue
    .line 1940
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v9

    .line 1941
    .local v9, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 1942
    .local v12, in:Landroid/os/Parcel;
    const/4 v1, 0x0

    array-length v2, v9

    invoke-virtual {v12, v9, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1943
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1944
    invoke-virtual {v12}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    .line 1945
    .local v6, SIZE:I
    :cond_0
    :goto_0
    invoke-virtual {v12}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 1946
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1947
    .local v13, version:I
    const/4 v1, 0x2

    if-eq v13, v1, :cond_2

    const/4 v1, 0x1

    if-eq v13, v1, :cond_2

    .line 1948
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pending operation version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; dropping all ops"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    .end local v6           #SIZE:I
    .end local v9           #data:[B
    .end local v12           #in:Landroid/os/Parcel;
    .end local v13           #version:I
    :cond_1
    :goto_1
    return-void

    .line 1952
    .restart local v6       #SIZE:I
    .restart local v9       #data:[B
    .restart local v12       #in:Landroid/os/Parcel;
    .restart local v13       #version:I
    :cond_2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1953
    .local v8, authorityId:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1954
    .local v2, syncSource:I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 1956
    .local v11, flatExtras:[B
    const/4 v1, 0x2

    if-ne v13, v1, :cond_5

    .line 1957
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v5, v1

    .line 1961
    .local v5, expedited:Z
    :goto_2
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1962
    .local v7, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v7, :cond_0

    .line 1963
    const/4 v4, 0x0

    .line 1964
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v11, :cond_3

    .line 1965
    invoke-static {v11}, Landroid/content/SyncStorageEngine;->unflattenBundle([B)Landroid/os/Bundle;

    move-result-object v4

    .line 1967
    :cond_3
    new-instance v0, Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v1, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v3, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 1970
    .local v0, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iput v8, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 1971
    iput-object v11, v0, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 1977
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1980
    .end local v0           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .end local v2           #syncSource:I
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #expedited:Z
    .end local v6           #SIZE:I
    .end local v7           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #authorityId:I
    .end local v9           #data:[B
    .end local v11           #flatExtras:[B
    .end local v12           #in:Landroid/os/Parcel;
    .end local v13           #version:I
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 1981
    .local v10, e:Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "No initial pending operations"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1957
    .end local v10           #e:Ljava/io/IOException;
    .restart local v2       #syncSource:I
    .restart local v6       #SIZE:I
    .restart local v8       #authorityId:I
    .restart local v9       #data:[B
    .restart local v11       #flatExtras:[B
    .restart local v12       #in:Landroid/os/Parcel;
    .restart local v13       #version:I
    :cond_4
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2

    .line 1959
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #expedited:Z
    goto :goto_2
.end method

.method private readStatisticsLocked()V
    .locals 11

    .prologue
    const/16 v9, 0x64

    const-string v10, "SyncManager"

    .line 2097
    :try_start_0
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2098
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2099
    .local v4, in:Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2100
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2102
    const/4 v5, 0x0

    .line 2103
    .local v5, index:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, token:I
    if-eqz v6, :cond_4

    .line 2104
    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    if-ne v6, v9, :cond_3

    .line 2106
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2107
    .local v1, day:I
    if-ne v6, v9, :cond_2

    .line 2108
    const/16 v7, 0x7d9

    sub-int v7, v1, v7

    add-int/lit16 v1, v7, 0x37a5

    .line 2110
    :cond_2
    new-instance v2, Landroid/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2111
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2112
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2113
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2114
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2115
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 2116
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2117
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2121
    .end local v1           #day:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_3
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    .end local v0           #data:[B
    .end local v4           #in:Landroid/os/Parcel;
    .end local v5           #index:I
    .end local v6           #token:I
    :cond_4
    :goto_1
    return-void

    .line 2125
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 2126
    .local v3, e:Ljava/io/IOException;
    const-string v7, "SyncManager"

    const-string v7, "No initial statistics"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readStatusLocked()V
    .locals 9

    .prologue
    const-string v8, "SyncManager"

    .line 1874
    :try_start_0
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1875
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1876
    .local v2, in:Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1877
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1879
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, token:I
    if-eqz v4, :cond_1

    .line 1880
    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 1881
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 1882
    .local v3, status:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 1883
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1886
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1894
    .end local v0           #data:[B
    .end local v2           #in:Landroid/os/Parcel;
    .end local v3           #status:Landroid/content/SyncStatusInfo;
    .end local v4           #token:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1895
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SyncManager"

    const-string v5, "No initial status"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 1890
    .restart local v0       #data:[B
    .restart local v2       #in:Landroid/os/Parcel;
    .restart local v4       #token:I
    :cond_2
    :try_start_1
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "authorityName"
    .parameter "doWrite"

    .prologue
    .line 1341
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1342
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_0

    .line 1343
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1344
    .local v1, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_0

    .line 1345
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1346
    if-eqz p3, :cond_0

    .line 1347
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1351
    .end local v1           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    return-void
.end method

.method private reportChange(I)V
    .locals 7
    .parameter "which"

    .prologue
    const-string v6, "SyncManager"

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 384
    :try_start_0
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, i:I
    move-object v3, v2

    .line 385
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 386
    add-int/lit8 v0, v0, -0x1

    .line 387
    :try_start_1
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 388
    .local v1, mask:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    .line 391
    if-nez v3, :cond_4

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_1
    :try_start_2
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .line 395
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_0

    .line 396
    .end local v1           #mask:Ljava/lang/Integer;
    :cond_1
    :try_start_3
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 397
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    const-string v4, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    if-eqz v3, :cond_3

    .line 404
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 405
    .end local p0
    :goto_2
    if-lez v0, :cond_3

    .line 406
    add-int/lit8 v0, v0, -0x1

    .line 408
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ISyncStatusObserver;

    invoke-interface {p0, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 409
    :catch_0
    move-exception v4

    goto :goto_2

    .line 397
    .end local v0           #i:I
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local p0
    :catchall_0
    move-exception v5

    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 414
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .end local p0
    .restart local v0       #i:I
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_3
    return-void

    .line 397
    .restart local p0
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_3

    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v1       #mask:Ljava/lang/Integer;
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_4
    move-object v2, v3

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_1
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .locals 5
    .parameter "flatData"

    .prologue
    .line 2073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2075
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2076
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2077
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2083
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2085
    return-object v0

    .line 2078
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2081
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto :goto_0

    .line 2083
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private updateOrRemovePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    .locals 18
    .parameter "account"
    .parameter "providerName"
    .parameter "extras"
    .parameter "period"
    .parameter "add"

    .prologue
    .line 581
    const-wide/16 v14, 0x0

    cmp-long v14, p4, v14

    if-gtz v14, :cond_0

    .line 582
    const-wide/16 p4, 0x0

    .line 584
    :cond_0
    if-nez p3, :cond_1

    .line 585
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    .line 587
    .restart local p3
    :cond_1
    const-string v14, "SyncManager"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 588
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addOrRemovePeriodicSync: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", provider "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> period "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", extras "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v14, v0

    monitor-enter v14

    .line 593
    const/4 v15, -0x1

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v7

    .line 595
    .local v7, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p6, :cond_7

    .line 598
    const/4 v6, 0x0

    .line 599
    .local v6, alreadyPresent:Z
    const/4 v10, 0x0

    .local v10, i:I
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, N:I
    :goto_0
    if-ge v10, v5, :cond_4

    .line 600
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 601
    .local v13, syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v9, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    .line 602
    .local v9, existingExtras:Landroid/os/Bundle;
    move-object v0, v9

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 603
    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    cmp-long v15, v15, p4

    if-nez v15, :cond_3

    .line 643
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 644
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 604
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 649
    .end local v5           #N:I
    .end local v6           #alreadyPresent:Z
    .end local v9           #existingExtras:Landroid/os/Bundle;
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :goto_1
    return-void

    .line 606
    .restart local v5       #N:I
    .restart local v6       #alreadyPresent:Z
    .restart local v9       #existingExtras:Landroid/os/Bundle;
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_3
    :try_start_2
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    move-object v0, v15

    move v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 607
    const/4 v6, 0x1

    .line 613
    .end local v9           #existingExtras:Landroid/os/Bundle;
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_4
    if-nez v6, :cond_5

    .line 614
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v12

    .line 616
    .local v12, status:Landroid/content/SyncStatusInfo;
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    const-wide/16 v16, 0x0

    move-object v0, v12

    move v1, v15

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    .end local v5           #N:I
    .end local v6           #alreadyPresent:Z
    .end local v12           #status:Landroid/content/SyncStatusInfo;
    :cond_5
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 644
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 646
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 648
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_1

    .line 599
    .restart local v5       #N:I
    .restart local v6       #alreadyPresent:Z
    .restart local v9       #existingExtras:Landroid/os/Bundle;
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local p1
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 620
    .end local v5           #N:I
    .end local v6           #alreadyPresent:Z
    .end local v9           #existingExtras:Landroid/os/Bundle;
    .end local v10           #i:I
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v15, v0

    move-object v0, v7

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncStatusInfo;

    .line 621
    .restart local v12       #status:Landroid/content/SyncStatusInfo;
    const/4 v8, 0x0

    .line 622
    .local v8, changed:Z
    iget-object v15, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 623
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    const/4 v10, 0x0

    .line 624
    .end local p1
    .restart local v10       #i:I
    :cond_8
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 625
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 626
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Bundle;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 627
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 628
    const/4 v8, 0x1

    .line 631
    if-eqz v12, :cond_8

    .line 632
    invoke-virtual {v12, v10}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 643
    .end local v7           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #changed:Z
    .end local v10           #i:I
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    .end local v12           #status:Landroid/content/SyncStatusInfo;
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v15

    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 644
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 643
    throw v15

    .line 646
    :catchall_1
    move-exception v15

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v15

    .line 635
    .restart local v7       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v8       #changed:Z
    .restart local v10       #i:I
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    .restart local v12       #status:Landroid/content/SyncStatusInfo;
    .restart local v13       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 638
    .end local v13           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_a
    if-nez v8, :cond_5

    .line 643
    :try_start_6
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 644
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 639
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1
.end method

.method private writeAccountInfoLocked()V
    .locals 17

    .prologue
    .line 1651
    const/4 v5, 0x0

    .line 1654
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1655
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1656
    .local v10, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v13, "utf-8"

    invoke-interface {v10, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1657
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1658
    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v14, 0x1

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1660
    const/4 v13, 0x0

    const-string v14, "accounts"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1661
    const/4 v13, 0x0

    const-string/jumbo v14, "version"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1662
    const/4 v13, 0x0

    const-string v14, "nextAuthorityId"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1663
    const/4 v13, 0x0

    const-string v14, "listen-for-tickles"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    move v15, v0

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1664
    const/4 v13, 0x0

    const-string v14, "mccmnc"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mMccMnc:Ljava/lang/String;

    move-object v15, v0

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1667
    .local v1, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_c

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1669
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v13, 0x0

    const-string v14, "authority"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1670
    const/4 v13, 0x0

    const-string v14, "id"

    iget v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1671
    const/4 v13, 0x0

    const-string v14, "account"

    iget-object v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1672
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    iget-object v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1673
    const/4 v13, 0x0

    const-string v14, "authority"

    iget-object v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1674
    const/4 v13, 0x0

    const-string v14, "enabled"

    iget-boolean v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1675
    iget v13, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-gez v13, :cond_2

    .line 1676
    const/4 v13, 0x0

    const-string v14, "syncable"

    const-string/jumbo v15, "unknown"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1680
    :goto_1
    iget-object v13, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 1681
    .local v11, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    const/4 v13, 0x0

    const-string v14, "periodicSync"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1682
    const/4 v13, 0x0

    const-string v14, "period"

    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1683
    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1684
    .local v4, extras:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1685
    .local v9, key:Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "extra"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1686
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v10, v13, v14, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1687
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1688
    .local v12, value:Ljava/lang/Object;
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_4

    .line 1689
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "long"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1690
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1711
    .end local v12           #value:Ljava/lang/Object;
    :cond_0
    :goto_4
    const/4 v13, 0x0

    const-string v14, "extra"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1723
    .end local v1           #N:I
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v11           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 1724
    .local v3, e1:Ljava/io/IOException;
    const-string v13, "SyncManager"

    const-string v14, "Error writing accounts"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1725
    if-eqz v5, :cond_1

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object v13, v0

    invoke-virtual {v13, v5}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1729
    .end local v3           #e1:Ljava/io/IOException;
    :cond_1
    :goto_5
    return-void

    .line 1678
    .restart local v1       #N:I
    .restart local v2       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v6       #i:I
    .restart local v10       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v13, 0x0

    :try_start_1
    const-string v14, "syncable"

    iget v15, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_6

    .line 1691
    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v4       #extras:Landroid/os/Bundle;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v11       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local v12       #value:Ljava/lang/Object;
    :cond_4
    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_5

    .line 1692
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "integer"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1693
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 1694
    :cond_5
    instance-of v13, v12, Ljava/lang/Boolean;

    if-eqz v13, :cond_6

    .line 1695
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "boolean"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1696
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 1697
    :cond_6
    instance-of v13, v12, Ljava/lang/Float;

    if-eqz v13, :cond_7

    .line 1698
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "float"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1699
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 1700
    :cond_7
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_8

    .line 1701
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "double"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1702
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 1703
    :cond_8
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_9

    .line 1704
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "string"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1705
    const/4 v13, 0x0

    const-string/jumbo v14, "value1"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 1706
    :cond_9
    instance-of v13, v12, Landroid/accounts/Account;

    if-eqz v13, :cond_0

    .line 1707
    const/4 v13, 0x0

    const-string/jumbo v14, "type"

    const-string v15, "account"

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1708
    const/4 v14, 0x0

    const-string/jumbo v15, "value1"

    move-object v0, v12

    check-cast v0, Landroid/accounts/Account;

    move-object v13, v0

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v10, v14, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1709
    const/4 v13, 0x0

    const-string/jumbo v14, "value2"

    check-cast v12, Landroid/accounts/Account;

    .end local v12           #value:Ljava/lang/Object;
    iget-object v15, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v10, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 1713
    .end local v9           #key:Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    const-string v14, "periodicSync"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 1715
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_b
    const/4 v13, 0x0

    const-string v14, "authority"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1667
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1718
    :cond_c
    const/4 v13, 0x0

    const-string v14, "accounts"

    invoke-interface {v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1720
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    move-object v13, v0

    invoke-virtual {v13, v5}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V
    .locals 1
    .parameter "op"
    .parameter "out"

    .prologue
    .line 1986
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/SyncStorageEngine;->flattenBundle(Landroid/os/Bundle;)[B

    move-result-object v0

    iput-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 1992
    :cond_0
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1993
    iget-boolean v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    return-void

    .line 1993
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePendingOperationsLocked()V
    .locals 8

    .prologue
    .line 2000
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2001
    .local v0, N:I
    const/4 v2, 0x0

    .line 2003
    .local v2, fos:Ljava/io/FileOutputStream;
    if-nez v0, :cond_1

    .line 2005
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->truncate()V

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 2010
    :cond_1
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2013
    .local v5, out:Landroid/os/Parcel;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 2014
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 2015
    .local v4, op:Landroid/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v4, v5}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 2013
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2017
    .end local v4           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_2
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2018
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2020
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2021
    .end local v3           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 2022
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    if-eqz v2, :cond_0

    .line 2024
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method private writeStatisticsLocked()V
    .locals 8

    .prologue
    .line 2138
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 2140
    const/4 v3, 0x0

    .line 2142
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2144
    .local v5, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2145
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2146
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2147
    .local v1, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_2

    .line 2157
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2159
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2161
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2168
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :cond_1
    :goto_1
    return-void

    .line 2150
    .restart local v0       #N:I
    .restart local v1       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v4       #i:I
    .restart local v5       #out:Landroid/os/Parcel;
    :cond_2
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2154
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2162
    .end local v0           #N:I
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 2163
    .local v2, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2164
    if-eqz v3, :cond_1

    .line 2165
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method private writeStatusLocked()V
    .locals 8

    .prologue
    .line 1907
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 1909
    const/4 v2, 0x0

    .line 1911
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1913
    .local v4, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1914
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1915
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1916
    .local v5, status:Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1917
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1914
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1919
    .end local v5           #status:Landroid/content/SyncStatusInfo;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1920
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1921
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1923
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1930
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #out:Landroid/os/Parcel;
    :cond_1
    :goto_1
    return-void

    .line 1924
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1925
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    if-eqz v2, :cond_1

    .line 1927
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7
    .parameter "account"
    .parameter "providerName"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 653
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 654
    return-void
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 370
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAndReadState()V
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1388
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1389
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1390
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1391
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1392
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1394
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1395
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 1396
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 1397
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1398
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 1399
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1400
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1401
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1402
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1403
    monitor-exit v0

    .line 1404
    return-void

    .line 1403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPending()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-string v3, "SyncManager"

    .line 824
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 825
    :try_start_0
    const-string v3, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    const-string v3, "SyncManager"

    const-string v5, "clearPending"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 829
    .local v2, num:I
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 831
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 832
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    :cond_1
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 835
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    invoke-direct {p0, v6}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 837
    return v2

    .line 835
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #num:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .locals 12
    .parameter "op"

    .prologue
    const/4 v11, 0x2

    const-string v7, "SyncManager"

    .line 775
    const/4 v5, 0x0

    .line 776
    .local v5, res:Z
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 777
    :try_start_0
    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 778
    const-string v8, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteFromPending: account="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " auth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " src="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extras="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 784
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_7

    .line 786
    :cond_1
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 787
    const/4 v8, 0x0

    iput v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 792
    :goto_0
    iget-object v8, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const-string v10, "deleteFromPending"

    invoke-direct {p0, v8, v9, v10}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 794
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_5

    .line 795
    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removing - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_2
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 797
    .local v0, N:I
    const/4 v4, 0x0

    .line 798
    .local v4, morePending:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 799
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 800
    .local v2, cur:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v8, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 802
    const/4 v4, 0x1

    .line 807
    .end local v2           #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_3
    if-nez v4, :cond_5

    .line 808
    const-string v8, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "SyncManager"

    const-string v9, "no more pending!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_4
    iget v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 810
    .local v6, status:Landroid/content/SyncStatusInfo;
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/content/SyncStatusInfo;->pending:Z

    .line 814
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #morePending:Z
    .end local v6           #status:Landroid/content/SyncStatusInfo;
    :cond_5
    const/4 v5, 0x1

    .line 816
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    invoke-direct {p0, v11}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 819
    return v5

    .line 789
    :cond_7
    :try_start_1
    iget v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 798
    .restart local v0       #N:I
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local v3       #i:I
    .restart local v4       #morePending:Z
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;)V
    .locals 12
    .parameter "accounts"

    .prologue
    const-string v8, "SyncManager"

    .line 865
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 866
    :try_start_0
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "SyncManager"

    const-string v10, "Updating for new accounts..."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 868
    .local v7, removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 869
    .local v1, accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 870
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 871
    .local v0, acc:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 873
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 874
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Account removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_2
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 877
    .local v2, auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 910
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v1           #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2           #auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 879
    .restart local v0       #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .restart local v1       #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 884
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 885
    .local v3, i:I
    if-lez v3, :cond_a

    .line 886
    :cond_5
    if-lez v3, :cond_9

    .line 887
    add-int/lit8 v3, v3, -0x1

    .line 888
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 889
    .local v5, ident:I
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 890
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 891
    .local v6, j:I
    :cond_6
    :goto_2
    if-lez v6, :cond_7

    .line 892
    add-int/lit8 v6, v6, -0x1

    .line 893
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_6

    .line 894
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 897
    :cond_7
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 898
    :cond_8
    :goto_3
    if-lez v6, :cond_5

    .line 899
    add-int/lit8 v6, v6, -0x1

    .line 900
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_8

    .line 901
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 905
    .end local v5           #ident:I
    .end local v6           #j:I
    :cond_9
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 906
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 907
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 908
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 910
    :cond_a
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    return-void
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1152
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1153
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1154
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1155
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    :cond_0
    monitor-exit v3

    return-object v2

    .line 1158
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .parameter "authorityId"

    .prologue
    .line 710
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object p0

    .line 712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 504
    :try_start_0
    const-string v2, "getBackoff"

    invoke-direct {p0, p1, p2, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 505
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 506
    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 508
    :goto_0
    return-object v1

    :cond_1
    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 509
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentSync()Landroid/content/SyncInfo;
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1125
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    monitor-exit v0

    return-object v1

    .line 1126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;
    .locals 6

    .prologue
    .line 1232
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1233
    :try_start_0
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v2, v2

    new-array v0, v2, [Landroid/content/SyncStorageEngine$DayStats;

    .line 1234
    .local v0, ds:[Landroid/content/SyncStorageEngine$DayStats;
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1235
    monitor-exit v1

    return-object v0

    .line 1236
    .end local v0           #ds:[Landroid/content/SyncStorageEngine$DayStats;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J
    .locals 4
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 570
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 571
    :try_start_0
    const-string v2, "getDelayUntil"

    invoke-direct {p0, p1, p2, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 572
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 573
    const-wide/16 v2, 0x0

    monitor-exit v1

    move-wide v1, v2

    .line 575
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 576
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getInitialSyncFailureTime()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1245
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1246
    :try_start_0
    iget-boolean v6, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    if-nez v6, :cond_0

    .line 1247
    monitor-exit v5

    move-wide v5, v8

    .line 1263
    :goto_0
    return-wide v5

    .line 1250
    :cond_0
    const-wide/16 v2, 0x0

    .line 1251
    .local v2, oldest:J
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1252
    .local v1, i:I
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    .line 1253
    add-int/lit8 v1, v1, -0x1

    .line 1254
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1255
    .local v4, stats:Landroid/content/SyncStatusInfo;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1256
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1

    iget-boolean v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_1

    .line 1257
    cmp-long v6, v2, v8

    if-eqz v6, :cond_2

    iget-wide v6, v4, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    .line 1258
    :cond_2
    iget-wide v2, v4, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    goto :goto_1

    .line 1263
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #stats:Landroid/content/SyncStatusInfo;
    :cond_3
    monitor-exit v5

    move-wide v5, v2

    goto :goto_0

    .line 1264
    .end local v1           #i:I
    .end local v2           #oldest:J
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 5
    .parameter "account"
    .parameter "providerName"

    .prologue
    const/4 v4, -0x1

    .line 457
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 458
    if-eqz p1, :cond_1

    .line 459
    :try_start_0
    const-string v3, "getIsSyncable"

    invoke-direct {p0, p1, p2, v3}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 461
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 462
    monitor-exit v2

    move v2, v4

    .line 475
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_0
    return v2

    .line 464
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    iget v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .line 467
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 468
    .local v1, i:I
    :cond_2
    if-lez v1, :cond_3

    .line 469
    add-int/lit8 v1, v1, -0x1

    .line 470
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 471
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    iget v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .line 475
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v2

    move v2, v4

    goto :goto_0

    .line 476
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-boolean v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    monitor-exit v0

    return v1

    .line 692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrCreateAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 3
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 696
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 697
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;
    .locals 2
    .parameter "authority"

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1355
    :try_start_0
    iget v1, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingOperationCount()I
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 856
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 847
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v9, syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v10

    .line 664
    :try_start_0
    const-string v0, "getPeriodicSyncs"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 665
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v6, :cond_0

    .line 666
    iget-object v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p0
    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 667
    .local v8, item:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object p0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    return-object v9
.end method

.method public getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1170
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1172
    :cond_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1173
    :try_start_0
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1174
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1175
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1176
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1178
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1180
    monitor-exit v4

    move-object v4, v2

    .line 1183
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_1
    return-object v4

    .line 1174
    .restart local v1       #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStatusInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1183
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :cond_3
    const/4 v5, 0x0

    monitor-exit v4

    move-object v4, v5

    goto :goto_1

    .line 1184
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "providerName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 417
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 418
    if-eqz p1, :cond_1

    .line 419
    :try_start_0
    const-string v3, "getSyncAutomatically"

    invoke-direct {p0, p1, p2, v3}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 421
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    monitor-exit v2

    move v2, v3

    .line 433
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_1
    return v2

    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    move v3, v4

    .line 421
    goto :goto_0

    .line 424
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 425
    .local v1, i:I
    :cond_2
    if-lez v1, :cond_3

    .line 426
    add-int/lit8 v1, v1, -0x1

    .line 427
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 428
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v3, :cond_2

    .line 430
    monitor-exit v2

    move v2, v5

    goto :goto_1

    .line 433
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v2

    move v2, v4

    goto :goto_1

    .line 434
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1217
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1218
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1219
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1220
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    :cond_0
    monitor-exit v3

    return-object v2

    .line 1223
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1136
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1137
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1138
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1139
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    :cond_0
    monitor-exit v3

    return-object v2

    .line 1142
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 360
    :try_start_0
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 361
    monitor-exit v0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 362
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 364
    :try_start_1
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 365
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;
    .locals 9
    .parameter "op"

    .prologue
    const/4 v8, 0x2

    const-string v3, "SyncManager"

    .line 745
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 746
    :try_start_0
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertIntoPending: account="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " auth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extras="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-object v4, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v5, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 757
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_1

    .line 758
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    .line 771
    :goto_0
    return-object v3

    .line 761
    :cond_1
    new-instance v1, Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-direct {v1, p1}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/content/SyncStorageEngine$PendingOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    .end local p1
    .local v1, op:Landroid/content/SyncStorageEngine$PendingOperation;
    :try_start_1
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 763
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V

    .line 766
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 767
    .local v2, status:Landroid/content/SyncStatusInfo;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 768
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 770
    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-object p1, v1

    .end local v1           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    move-object v3, v1

    .line 771
    goto :goto_0

    .line 768
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #status:Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local p1
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1       #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :catchall_1
    move-exception v4

    move-object p1, v1

    .end local v1           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    goto :goto_1
.end method

.method public insertStartSyncEvent(Landroid/accounts/Account;Ljava/lang/String;JI)J
    .locals 8
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "now"
    .parameter "source"

    .prologue
    const-string v4, "SyncManager"

    .line 963
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 964
    :try_start_0
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 965
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertStartSyncEvent: account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    const-string v5, "insertStartSyncEvent"

    invoke-direct {p0, p1, p2, v5}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 970
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_1

    .line 971
    const-wide/16 v5, -0x1

    monitor-exit v4

    move-wide v4, v5

    .line 989
    :goto_0
    return-wide v4

    .line 973
    :cond_1
    new-instance v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Landroid/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 974
    .local v3, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    iget v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 975
    iget v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 976
    iget v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v5, :cond_2

    const/4 v5, 0x0

    iput v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 977
    :cond_2
    iput-wide p3, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 978
    iput p5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 979
    const/4 v5, 0x0

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 980
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 981
    :goto_1
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_3

    .line 982
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 986
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v3           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 984
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_1
    iget v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v1, v5

    .line 985
    .local v1, id:J
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-wide v4, v1

    .line 989
    goto :goto_0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v5, 0x1

    .line 720
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 721
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 722
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 723
    add-int/lit8 v1, v1, -0x1

    .line 726
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 727
    .local v2, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v4, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 728
    monitor-exit v3

    move v3, v5

    .line 741
    .end local v2           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :goto_0
    return v3

    .line 732
    :cond_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    if-eqz v4, :cond_2

    .line 733
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    iget v4, v4, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v4}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 734
    .local v0, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 736
    monitor-exit v3

    move v3, v5

    goto :goto_0

    .line 739
    .end local v0           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    monitor-exit v3

    .line 741
    const/4 v3, 0x0

    goto :goto_0

    .line 739
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 1191
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1192
    :try_start_0
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1193
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1194
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1195
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1196
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    .line 1193
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1199
    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1202
    :cond_2
    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v5, :cond_0

    .line 1203
    const/4 v5, 0x1

    monitor-exit v4

    move v4, v5

    .line 1206
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_1
    return v4

    :cond_3
    const/4 v5, 0x0

    monitor-exit v4

    move v4, v5

    goto :goto_1

    .line 1207
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 704
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 705
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Landroid/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter "account"
    .parameter "providerName"
    .parameter "extras"

    .prologue
    .line 657
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 659
    return-void
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 376
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportActiveChange()V
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 955
    return-void
.end method

.method public setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V
    .locals 8
    .parameter "activeSyncContext"

    .prologue
    const-string v0, "SyncManager"

    .line 919
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 920
    if-eqz p1, :cond_3

    .line 921
    :try_start_0
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSync: account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v2, v2, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v2, v2, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget v2, v2, Landroid/content/SyncOperation;->syncSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v2, v2, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    if-eqz v0, :cond_1

    .line 929
    const-string v0, "SyncManager"

    const-string v1, "setActiveSync called with existing active sync!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1
    iget-object v0, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v1, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v1, v1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    const-string v2, "setActiveSync"

    invoke-direct {p0, v0, v1, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 935
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v6, :cond_2

    .line 936
    monitor-exit v7

    .line 948
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_0
    return-void

    .line 938
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    new-instance v0, Landroid/content/SyncInfo;

    iget v1, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v3, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iget-wide v4, p1, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    .line 945
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_0

    .line 942
    :cond_3
    :try_start_1
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SyncManager"

    const-string v1, "setActiveSync: null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SyncStorageEngine;->mCurrentSync:Landroid/content/SyncInfo;

    goto :goto_1

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "account"
    .parameter "providerName"
    .parameter "nextSyncTime"
    .parameter "nextDelay"

    .prologue
    .line 514
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 515
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackoff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> nextSyncTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nextDelay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    const/4 v3, 0x0

    .line 519
    .local v3, changed:Z
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 520
    if-eqz p1, :cond_1

    if-nez p2, :cond_7

    .line 521
    :cond_1
    :try_start_0
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 522
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_3

    iget-object v7, v0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 523
    :cond_3
    iget-object v7, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 524
    .local v2, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p2, :cond_5

    iget-object v7, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 527
    :cond_5
    iget-wide v7, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_6

    iget-wide v7, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v7, v7, p5

    if-eqz v7, :cond_4

    .line 529
    :cond_6
    iput-wide p3, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 530
    iput-wide p5, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 531
    const/4 v3, 0x1

    goto :goto_0

    .line 536
    .end local v0           #accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v2           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v7, v8}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 538
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v7, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_9

    iget-wide v7, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v7, v7, p5

    if-nez v7, :cond_9

    .line 539
    monitor-exit v6

    .line 550
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_8
    :goto_1
    return-void

    .line 541
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_9
    iput-wide p3, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 542
    iput-wide p5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 543
    const/4 v3, 0x1

    .line 545
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_a
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    if-eqz v3, :cond_8

    .line 548
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_1

    .line 545
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public setDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 5
    .parameter "account"
    .parameter "providerName"
    .parameter "delayUntil"

    .prologue
    const/4 v4, 0x1

    const-string v3, "SyncManager"

    .line 553
    const-string v1, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const-string v1, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDelayUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 558
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 560
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    .line 561
    monitor-exit v1

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_1
    iput-wide p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 564
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_0

    .line 564
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 5
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const-string v3, "SyncManager"

    .line 480
    if-le p3, v4, :cond_1

    .line 481
    const/4 p3, 0x1

    .line 485
    :cond_0
    :goto_0
    const-string v1, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSyncable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 487
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 488
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v2, p3, :cond_2

    .line 489
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    monitor-exit v1

    .line 500
    :goto_1
    return-void

    .line 482
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    if-ge p3, v1, :cond_0

    .line 483
    const/4 p3, -0x1

    goto :goto_0

    .line 492
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    iput p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 493
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 494
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-lez p3, :cond_3

    .line 497
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    :cond_3
    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_1

    .line 494
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 676
    :try_start_0
    iget-boolean v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    if-ne v1, p1, :cond_0

    .line 677
    monitor-exit v0

    .line 687
    :goto_0
    return-void

    .line 679
    :cond_0
    iput-boolean p1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Z

    .line 680
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 681
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    if-eqz p1, :cond_1

    .line 683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 685
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 686
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 5
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    const-string v3, "SyncManager"

    .line 438
    const-string v1, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncAutomatically: , provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 441
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 442
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v2, p3, :cond_0

    .line 443
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v1

    .line 454
    :goto_0
    return-void

    .line 446
    :cond_0
    iput-boolean p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 447
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-eqz p3, :cond_1

    .line 451
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 453
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_0

    .line 448
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .locals 20
    .parameter "historyId"
    .parameter "elapsedTime"
    .parameter "resultMessage"
    .parameter "downstreamActivity"
    .parameter "upstreamActivity"

    .prologue
    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    monitor-enter v13

    .line 1013
    :try_start_0
    const-string v14, "SyncManager"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1014
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stopSyncEvent: historyId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    const/4 v7, 0x0

    .line 1017
    .local v7, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1018
    .local v6, i:I
    :goto_0
    if-lez v6, :cond_1

    .line 1019
    add-int/lit8 v6, v6, -0x1

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1021
    .restart local v7       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v14

    cmp-long v14, v14, p1

    if-nez v14, :cond_2

    .line 1027
    :cond_1
    if-nez v7, :cond_3

    .line 1028
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stopSyncEvent: no history for id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    monitor-exit v13

    .line 1116
    :goto_1
    return-void

    .line 1024
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1032
    :cond_3
    move-wide/from16 v0, p3

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1033
    const/4 v14, 0x1

    iput v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1034
    move-object/from16 v0, p5

    move-object v1, v7

    iput-object v0, v1, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1035
    move-wide/from16 v0, p6

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1036
    move-wide/from16 v0, p8

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1038
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v10

    .line 1040
    .local v10, status:Landroid/content/SyncStatusInfo;
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1041
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1042
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v14, :pswitch_data_0

    .line 1060
    :goto_2
    const/4 v11, 0x0

    .line 1061
    .local v11, writeStatisticsNow:Z
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v4

    .line 1062
    .local v4, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_a

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v16, v14, v15

    .line 1070
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .line 1072
    .local v5, ds:Landroid/content/SyncStorageEngine$DayStats;
    iget-wide v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v8, v14, p3

    .line 1073
    .local v8, lastSyncTime:J
    const/4 v12, 0x0

    .line 1074
    .local v12, writeStatusNow:Z
    const-string v14, "success"

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1076
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    .line 1077
    :cond_5
    const/4 v12, 0x1

    .line 1079
    :cond_6
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1080
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1081
    const-wide/16 v14, 0x0

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1082
    const/4 v14, -0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1083
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1084
    const-wide/16 v14, 0x0

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1085
    iget v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1086
    iget-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1101
    :cond_7
    :goto_4
    if-eqz v12, :cond_f

    .line 1102
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1107
    :cond_8
    :goto_5
    if-eqz v11, :cond_10

    .line 1108
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1113
    :cond_9
    :goto_6
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto/16 :goto_1

    .line 1044
    .end local v4           #day:I
    .end local v5           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v8           #lastSyncTime:J
    .end local v11           #writeStatisticsNow:Z
    .end local v12           #writeStatusNow:Z
    :pswitch_0
    :try_start_1
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto/16 :goto_2

    .line 1113
    .end local v6           #i:I
    .end local v7           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .end local v10           #status:Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 1047
    .restart local v6       #i:I
    .restart local v7       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .restart local v10       #status:Landroid/content/SyncStatusInfo;
    :pswitch_1
    :try_start_2
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_2

    .line 1050
    :pswitch_2
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_2

    .line 1053
    :pswitch_3
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_2

    .line 1056
    :pswitch_4
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_2

    .line 1064
    .restart local v4       #day:I
    .restart local v11       #writeStatisticsNow:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Landroid/content/SyncStorageEngine$DayStats;->day:I

    if-eq v4, v14, :cond_b

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v16, v14, v15

    .line 1067
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1068
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_4

    goto/16 :goto_3

    .line 1087
    .restart local v5       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v8       #lastSyncTime:J
    .restart local v12       #writeStatusNow:Z
    :cond_c
    const-string v14, "canceled"

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1088
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_d

    .line 1089
    const/4 v12, 0x1

    .line 1091
    :cond_d
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1092
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1093
    move-object/from16 v0, p5

    move-object v1, v10

    iput-object v0, v1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1094
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_e

    .line 1095
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1097
    :cond_e
    iget v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1098
    iget-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_4

    .line 1103
    :cond_f
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1104
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0x927c0

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 1109
    :cond_10
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1110
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0x1b7740

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 1042
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public writeAllState()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1372
    :try_start_0
    iget v1, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    if-lez v1, :cond_0

    .line 1374
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1378
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1379
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1380
    monitor-exit v0

    .line 1381
    return-void

    .line 1380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
