.class Lcom/android/server/am/ActivityManagerService$3;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 1446
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_3a

    .line 1447
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1448
    .local v5, now:J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/32 v9, 0xfffffff

    add-long/2addr v7, v9

    sub-long v1, v7, v5

    .line 1449
    .local v1, nextCpuDelay:J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v9, 0x1b7740

    add-long/2addr v7, v9

    sub-long v3, v7, v5

    .line 1452
    .local v3, nextWriteDelay:J
    cmp-long v7, v3, v1

    if-gez v7, :cond_22

    .line 1453
    move-wide v1, v3

    .line 1455
    :cond_22
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_33

    .line 1456
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStatsMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1457
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1459
    :cond_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_44

    .line 1462
    .end local v1           #nextCpuDelay:J
    .end local v3           #nextWriteDelay:J
    .end local v5           #now:J
    :goto_34
    :try_start_34
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_0

    .line 1463
    :catch_3a
    move-exception v7

    move-object v0, v7

    .line 1464
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    const-string v8, "Unexpected exception collecting process stats"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1459
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v7

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v7
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_47} :catch_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_3a

    .line 1460
    :catch_47
    move-exception v7

    goto :goto_34
.end method
