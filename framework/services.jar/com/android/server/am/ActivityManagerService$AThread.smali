.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1319
    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    .line 1320
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1323
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1325
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1327
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1329
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Lcom/android/server/am/ActivityManagerService$1;)V

    .line 1331
    .local v0, m:Lcom/android/server/am/ActivityManagerService;
    monitor-enter p0

    .line 1332
    :try_start_12
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1333
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1334
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_23

    .line 1336
    monitor-enter p0

    .line 1337
    :goto_19
    :try_start_19
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_2b

    if-nez v1, :cond_26

    .line 1339
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_19

    .line 1340
    :catch_21
    move-exception v1

    goto :goto_19

    .line 1334
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 1343
    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    .line 1345
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1346
    return-void

    .line 1343
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method
