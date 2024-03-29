.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    .line 270
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .parameter "msg"

    .prologue
    .line 275
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_294

    .line 400
    :goto_8
    :pswitch_8
    return-void

    .line 278
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v25

    .line 282
    .local v25, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v25, :cond_4a

    .line 283
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_8

    .line 289
    :cond_4a
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v19, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v17, v0

    .line 291
    .local v17, oldJournal:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 295
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_a5

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_7d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 297
    .local v14, b:Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 306
    .end local v14           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v16           #i$:Ljava/util/Iterator;
    :catchall_90
    move-exception v6

    monitor-exit v5
    :try_end_92
    .catchall {:try_start_61 .. :try_end_92} :catchall_90

    throw v6

    .line 300
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_93
    :try_start_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 306
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_a5
    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_93 .. :try_end_a6} :catchall_90

    .line 308
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c3

    .line 314
    new-instance v5, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformBackupTask;->run()V

    goto/16 :goto_8

    .line 316
    :cond_c3
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 327
    .end local v17           #oldJournal:Ljava/io/File;
    .end local v19           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v25           #transport:Lcom/android/internal/backup/IBackupTransport;
    :pswitch_d6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/BackupManagerService$RestoreParams;

    .line 328
    .local v18, params:Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v5, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v7, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v8, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-wide v9, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object v11, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move v12, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    move v13, v0

    invoke-direct/range {v5 .. v13}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->run()V

    goto/16 :goto_8

    .line 337
    .end local v18           #params:Lcom/android/server/BackupManagerService$RestoreParams;
    :pswitch_128
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/BackupManagerService$ClearParams;

    .line 338
    .local v18, params:Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v5, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v7, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    move-object v8, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_8

    .line 347
    .end local v18           #params:Lcom/android/server/BackupManagerService$ClearParams;
    :pswitch_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 348
    :try_start_151
    new-instance v20, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v20, queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 350
    monitor-exit v5
    :try_end_16b
    .catchall {:try_start_151 .. :try_end_16b} :catchall_17e

    .line 352
    new-instance v5, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_8

    .line 350
    .end local v20           #queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_17e
    move-exception v6

    :try_start_17f
    monitor-exit v5
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v6

    .line 359
    :pswitch_181
    const/16 v22, 0x0

    .line 360
    .local v22, sets:[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    .line 362
    .local v18, params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    :try_start_18b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v22

    .line 364
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object v5, v0

    monitor-enter v5
    :try_end_19a
    .catchall {:try_start_18b .. :try_end_19a} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_19a} :catch_1d0

    .line 365
    :try_start_19a
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v6

    iput-object v0, v1, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 366
    monitor-exit v5
    :try_end_1a5
    .catchall {:try_start_19a .. :try_end_1a5} :catchall_1cd

    .line 367
    if-nez v22, :cond_1af

    const/16 v5, 0xb0f

    const/4 v6, 0x0

    :try_start_1aa
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1af} :catch_1d0

    .line 371
    :cond_1af
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    if-eqz v5, :cond_1c1

    .line 373
    :try_start_1b6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1c1} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c1} :catch_202

    .line 381
    :cond_1c1
    :goto_1c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 366
    :catchall_1cd
    move-exception v6

    :try_start_1ce
    monitor-exit v5
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cd

    :try_start_1cf
    throw v6
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d0} :catch_1d0

    .line 368
    :catch_1d0
    move-exception v5

    move-object v15, v5

    .line 369
    .local v15, e:Ljava/lang/Exception;
    :try_start_1d2
    const-string v5, "BackupManagerService"

    const-string v6, "Error from transport getting set list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d9
    .catchall {:try_start_1d2 .. :try_end_1d9} :catchall_221

    .line 371
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    if-eqz v5, :cond_1eb

    .line 373
    :try_start_1e0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_1eb} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1eb} :catch_217

    .line 381
    :cond_1eb
    :goto_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 374
    .end local v15           #e:Ljava/lang/Exception;
    :catch_1f7
    move-exception v5

    move-object/from16 v21, v5

    .line 375
    .local v21, re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c1

    .line 376
    .end local v21           #re:Landroid/os/RemoteException;
    :catch_202
    move-exception v5

    move-object v15, v5

    .line 377
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    invoke-static {v5, v6, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c1

    .line 374
    :catch_20c
    move-exception v5

    move-object/from16 v21, v5

    .line 375
    .restart local v21       #re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1eb

    .line 376
    .end local v21           #re:Landroid/os/RemoteException;
    :catch_217
    move-exception v5

    move-object v15, v5

    .line 377
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    invoke-static {v5, v6, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1eb

    .line 371
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_221
    move-exception v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v6, v0

    if-eqz v6, :cond_234

    .line 373
    :try_start_229
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_234
    .catch Landroid/os/RemoteException; {:try_start_229 .. :try_end_234} :catch_23f
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_234} :catch_24a

    .line 381
    :cond_234
    :goto_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 374
    :catch_23f
    move-exception v6

    move-object/from16 v21, v6

    .line 375
    .restart local v21       #re:Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Unable to report listing to observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_234

    .line 376
    .end local v21           #re:Landroid/os/RemoteException;
    :catch_24a
    move-exception v6

    move-object v15, v6

    .line 377
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    const-string v7, "Restore observer threw"

    invoke-static {v6, v7, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_234

    .line 388
    .end local v15           #e:Ljava/lang/Exception;
    .end local v18           #params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .end local v22           #sets:[Landroid/app/backup/RestoreSet;
    :pswitch_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 389
    :try_start_25c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 390
    .local v24, token:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v23

    .line 391
    .local v23, state:I
    if-nez v23, :cond_283

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 396
    monitor-exit v5

    goto/16 :goto_8

    .end local v23           #state:I
    .end local v24           #token:I
    :catchall_290
    move-exception v6

    monitor-exit v5
    :try_end_292
    .catchall {:try_start_25c .. :try_end_292} :catchall_290

    throw v6

    .line 275
    nop

    :pswitch_data_294
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_d6
        :pswitch_128
        :pswitch_149
        :pswitch_181
        :pswitch_254
    .end packed-switch
.end method
