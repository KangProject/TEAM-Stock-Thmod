.class Lcom/android/server/BackupManagerService$PerformRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
    }
.end annotation


# instance fields
.field private mNeedFullBackup:Z

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmToken:I

.field private mStateDir:Ljava/io/File;

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V
    .registers 12
    .parameter
    .parameter "transport"
    .parameter "observer"
    .parameter "restoreSetToken"
    .parameter "targetPackage"
    .parameter "pmToken"
    .parameter "needFullBackup"

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1583
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1584
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    .line 1585
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 1586
    iput p7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    .line 1587
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    .line 1590
    :try_start_11
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 1594
    :goto_1e
    return-void

    .line 1591
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method


# virtual methods
.method processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    .registers 21
    .parameter "app"
    .parameter "appVersionCode"
    .parameter "agent"
    .parameter "needFullBackup"

    .prologue
    .line 1837
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v10, v0

    .line 1842
    .local v10, packageName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1843
    .local v7, backupDataName:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1844
    .local v9, newStateName:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    move-object v1, v0

    invoke-direct {v11, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1846
    .local v11, savedStateName:Ljava/io/File;
    const/4 v2, 0x0

    .line 1847
    .local v2, backupData:Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 1849
    .local v4, newState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 1852
    .local v5, token:I
    const/high16 v1, 0x3c00

    :try_start_5a
    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object v1, v0

    invoke-interface {v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    if-eqz v1, :cond_a8

    .line 1858
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting restore data for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const/16 v1, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_89
    .catchall {:try_start_5a .. :try_end_89} :catchall_16b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_89} :catch_e3

    .line 1909
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1910
    if-eqz v2, :cond_91

    :try_start_8e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_193

    .line 1911
    :cond_91
    :goto_91
    if-eqz v4, :cond_96

    :try_start_93
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_196

    .line 1912
    :cond_96
    :goto_96
    const/4 v4, 0x0

    move-object v2, v4

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1919
    if-eqz p4, :cond_a7

    .line 1920
    :goto_a4
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1923
    :cond_a7
    return-void

    .line 1864
    :cond_a8
    :try_start_a8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1865
    const/high16 v1, 0x1000

    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1868
    const/high16 v1, 0x3c00

    invoke-static {v9, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    const-wide/32 v14, 0xea60

    invoke-virtual {v1, v5, v14, v15}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJ)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v6, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v1, p3

    move/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v13

    .line 1878
    .local v13, success:Z
    if-nez v13, :cond_134

    .line 1879
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "restore timeout"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e3
    .catchall {:try_start_a8 .. :try_end_e3} :catchall_16b
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_e3} :catch_e3

    .line 1900
    .end local v13           #success:Z
    :catch_e3
    move-exception v1

    move-object v8, v1

    .line 1901
    .local v8, e:Ljava/lang/Exception;
    :try_start_e5
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error restoring data for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    const/16 v1, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Ljava/lang/Exception;
    aput-object v8, v3, v6

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    invoke-virtual {v1, v10}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_e5 .. :try_end_117} :catchall_16b

    .line 1909
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1910
    if-eqz v2, :cond_11f

    :try_start_11c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_18f

    .line 1911
    :cond_11f
    :goto_11f
    if-eqz v4, :cond_124

    :try_start_121
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_191

    .line 1912
    :cond_124
    :goto_124
    const/4 v4, 0x0

    move-object v2, v4

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1919
    if-eqz p4, :cond_a7

    goto/16 :goto_a4

    .line 1895
    .restart local v13       #success:Z
    :cond_134
    :try_start_134
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1898
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v12, v14

    .line 1899
    .local v12, size:I
    const/16 v1, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    const/4 v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_14e
    .catchall {:try_start_134 .. :try_end_14e} :catchall_16b
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_14e} :catch_e3

    .line 1909
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1910
    if-eqz v2, :cond_156

    :try_start_153
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_199

    .line 1911
    :cond_156
    :goto_156
    if-eqz v4, :cond_15b

    :try_start_158
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_19b

    .line 1912
    :cond_15b
    :goto_15b
    const/4 v4, 0x0

    move-object v2, v4

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1919
    if-eqz p4, :cond_a7

    goto/16 :goto_a4

    .line 1909
    .end local v12           #size:I
    .end local v13           #success:Z
    :catchall_16b
    move-exception v1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1910
    if-eqz v2, :cond_174

    :try_start_171
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_18b

    .line 1911
    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    :cond_174
    :goto_174
    if-eqz v4, :cond_179

    :try_start_176
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_18d

    .line 1912
    :cond_179
    :goto_179
    const/4 v4, 0x0

    move-object v2, v4

    .line 1913
    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v2, v0

    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1919
    if-eqz p4, :cond_18a

    .line 1920
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1909
    :cond_18a
    throw v1

    .line 1910
    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_18b
    move-exception v2

    goto :goto_174

    .line 1911
    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_18d
    move-exception v2

    goto :goto_179

    .line 1910
    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_18f
    move-exception v1

    goto :goto_11f

    .line 1911
    :catch_191
    move-exception v1

    goto :goto_124

    .line 1910
    :catch_193
    move-exception v1

    goto/16 :goto_91

    .line 1911
    :catch_196
    move-exception v1

    goto/16 :goto_96

    .line 1910
    .restart local v12       #size:I
    .restart local v13       #success:Z
    :catch_199
    move-exception v1

    goto :goto_156

    .line 1911
    :catch_19b
    move-exception v1

    goto :goto_15b
.end method

.method public run()V
    .registers 28

    .prologue
    .line 1597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1602
    .local v20, startRealtime:J
    const/16 v17, 0x0

    .line 1603
    .local v17, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/4 v9, -0x1

    .line 1608
    .local v9, error:I
    const/16 v22, 0xb0e

    const/16 v23, 0x2

    :try_start_b
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1612
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    .local v19, restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v14, Landroid/content/pm/PackageInfo;

    invoke-direct {v14}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1614
    .local v14, omPackage:Landroid/content/pm/PackageInfo;
    const-string v22, "@pm@"

    move-object/from16 v0, v22

    move-object v1, v14

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1615
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v6

    .line 1618
    .local v6, agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_130

    .line 1619
    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1626
    :goto_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0
    :try_end_65
    .catchall {:try_start_b .. :try_end_65} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_65} :catch_13f

    if-eqz v22, :cond_74

    .line 1630
    :try_start_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_1df
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_74} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_74} :catch_13f

    .line 1637
    :cond_74
    :goto_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/pm/PackageInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v22

    if-eqz v22, :cond_25f

    .line 1639
    const-string v22, "BackupManagerService"

    const-string v23, "Error starting restore operation"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_b1
    .catchall {:try_start_74 .. :try_end_b1} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b1} :catch_13f

    .line 1797
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_ba} :catch_968

    .line 1802
    :goto_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ce

    .line 1804
    :try_start_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_ce} :catch_979

    .line 1813
    :cond_ce
    :goto_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_103

    if-eqz v17, :cond_103

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_120

    .line 1824
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_120} :catch_a45

    .line 1829
    :cond_120
    :goto_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_12c
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1831
    :goto_12f
    return-void

    .line 1622
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_130
    :try_start_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catchall {:try_start_130 .. :try_end_13d} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13d} :catch_13f

    goto/16 :goto_5f

    .line 1791
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_13f
    move-exception v22

    move-object/from16 v8, v22

    .line 1792
    .local v8, e:Ljava/lang/Exception;
    :goto_142
    :try_start_142
    const-string v22, "BackupManagerService"

    const-string v23, "Error in restore thread"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14e
    .catchall {:try_start_142 .. :try_end_14e} :catchall_1df

    .line 1797
    :try_start_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_157} :catch_94b

    .line 1802
    .end local v8           #e:Ljava/lang/Exception;
    :goto_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16b

    .line 1804
    :try_start_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_16b
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_16b} :catch_95c

    .line 1813
    :cond_16b
    :goto_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_1a0

    if-eqz v17, :cond_1a0

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_1a0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_1bd

    .line 1824
    :try_start_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_1bd
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1bd} :catch_a48

    .line 1829
    :cond_1bd
    :goto_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_12c

    .line 1631
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_1cb
    move-exception v22

    move-object/from16 v8, v22

    .line 1632
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1ce
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreStarting"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_1dd
    .catchall {:try_start_1ce .. :try_end_1dd} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1dd} :catch_13f

    goto/16 :goto_74

    .line 1794
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_1df
    move-exception v22

    .line 1797
    :goto_1e0
    :try_start_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_1e9
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_1e9} :catch_92e

    .line 1802
    :goto_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1fd

    .line 1804
    :try_start_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1fd
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_1fd} :catch_93f

    .line 1813
    :cond_1fd
    :goto_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_232

    if-eqz v17, :cond_232

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    if-lez v23, :cond_24f

    .line 1824
    :try_start_23a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_23a .. :try_end_24f} :catch_a4b

    .line 1829
    :cond_24f
    :goto_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1794
    throw v22

    .line 1644
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_25f
    :try_start_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v16

    .line 1645
    .local v16, packageName:Ljava/lang/String;
    if-nez v16, :cond_2fc

    .line 1646
    const-string v22, "BackupManagerService"

    const-string v23, "Error getting first restore package"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_27f
    .catchall {:try_start_25f .. :try_end_27f} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_27f} :catch_13f

    .line 1797
    :try_start_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_288
    .catch Landroid/os/RemoteException; {:try_start_27f .. :try_end_288} :catch_985

    .line 1802
    :goto_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_29c

    .line 1804
    :try_start_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_29c
    .catch Landroid/os/RemoteException; {:try_start_290 .. :try_end_29c} :catch_996

    .line 1813
    :cond_29c
    :goto_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_2d1

    if-eqz v17, :cond_2d1

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_2d1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_2ee

    .line 1824
    :try_start_2d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_2ee
    .catch Landroid/os/RemoteException; {:try_start_2d9 .. :try_end_2ee} :catch_a42

    .line 1829
    :cond_2ee
    :goto_2ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_12c

    .line 1649
    :cond_2fc
    :try_start_2fc
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3b5

    .line 1650
    const-string v22, "BackupManagerService"

    const-string v23, "No restore data available"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v13, v0

    .line 1652
    .local v13, millis:I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_338
    .catchall {:try_start_2fc .. :try_end_338} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_338} :catch_13f

    .line 1797
    :try_start_338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_341
    .catch Landroid/os/RemoteException; {:try_start_338 .. :try_end_341} :catch_9a2

    .line 1802
    :goto_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_355

    .line 1804
    :try_start_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_355
    .catch Landroid/os/RemoteException; {:try_start_349 .. :try_end_355} :catch_9b3

    .line 1813
    :cond_355
    :goto_355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_38a

    if-eqz v17, :cond_38a

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_38a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_3a7

    .line 1824
    :try_start_392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_3a7
    .catch Landroid/os/RemoteException; {:try_start_392 .. :try_end_3a7} :catch_a3f

    .line 1829
    :cond_3a7
    :goto_3a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_12c

    .line 1654
    .end local v13           #millis:I
    :cond_3b5
    :try_start_3b5
    const-string v22, "@pm@"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_479

    .line 1655
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "@pm@"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package manager data missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3fc
    .catchall {:try_start_3b5 .. :try_end_3fc} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_3b5 .. :try_end_3fc} :catch_13f

    .line 1797
    :try_start_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_405
    .catch Landroid/os/RemoteException; {:try_start_3fc .. :try_end_405} :catch_9bf

    .line 1802
    :goto_405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_419

    .line 1804
    :try_start_40d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_419
    .catch Landroid/os/RemoteException; {:try_start_40d .. :try_end_419} :catch_9d0

    .line 1813
    :cond_419
    :goto_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_44e

    if-eqz v17, :cond_44e

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_44e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_46b

    .line 1824
    :try_start_456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_46b
    .catch Landroid/os/RemoteException; {:try_start_456 .. :try_end_46b} :catch_a3c

    .line 1829
    :cond_46b
    :goto_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_12c

    .line 1663
    :cond_479
    :try_start_479
    new-instance v18, Lcom/android/server/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    :try_end_48d
    .catchall {:try_start_479 .. :try_end_48d} :catchall_1df
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_48d} :catch_13f

    .line 1665
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .local v18, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/16 v22, 0x0

    :try_start_48f
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    .line 1671
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v22

    if-nez v22, :cond_551

    .line 1672
    const-string v22, "BackupManagerService"

    const-string v23, "No restore metadata available, so not restoring settings"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "@pm@"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package manager restore metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4cf
    .catchall {:try_start_48f .. :try_end_4cf} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_48f .. :try_end_4cf} :catch_6ff

    .line 1797
    :try_start_4cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_4d8
    .catch Landroid/os/RemoteException; {:try_start_4cf .. :try_end_4d8} :catch_9dc

    .line 1802
    :goto_4d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4ec

    .line 1804
    :try_start_4e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_4ec
    .catch Landroid/os/RemoteException; {:try_start_4e0 .. :try_end_4ec} :catch_9ed

    .line 1813
    :cond_4ec
    :goto_4ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_521

    if-eqz v18, :cond_521

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_53e

    .line 1824
    :try_start_529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_53e
    .catch Landroid/os/RemoteException; {:try_start_529 .. :try_end_53e} :catch_a39

    .line 1829
    :cond_53e
    :goto_53e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .line 1675
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_12f

    .line 1678
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_551
    const/4 v7, 0x0

    .line 1680
    .local v7, count:I
    :cond_552
    :goto_552
    :try_start_552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v16

    .line 1682
    if-nez v16, :cond_5f4

    .line 1683
    const-string v22, "BackupManagerService"

    const-string v23, "Error getting next restore package"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_572
    .catchall {:try_start_552 .. :try_end_572} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_552 .. :try_end_572} :catch_6ff

    .line 1797
    :try_start_572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_57b
    .catch Landroid/os/RemoteException; {:try_start_572 .. :try_end_57b} :catch_9f9

    .line 1802
    :goto_57b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_58f

    .line 1804
    :try_start_583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_58f
    .catch Landroid/os/RemoteException; {:try_start_583 .. :try_end_58f} :catch_a0a

    .line 1813
    :cond_58f
    :goto_58f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_5c4

    if-eqz v18, :cond_5c4

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_5c4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_5e1

    .line 1824
    :try_start_5cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_5e1
    .catch Landroid/os/RemoteException; {:try_start_5cc .. :try_end_5e1} :catch_a36

    .line 1829
    :cond_5e1
    :goto_5e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .line 1685
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_12f

    .line 1686
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_5f4
    :try_start_5f4
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6aa

    .line 1788
    const/4 v9, 0x0

    .line 1789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v13, v0

    .line 1790
    .restart local v13       #millis:I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_628
    .catchall {:try_start_5f4 .. :try_end_628} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_5f4 .. :try_end_628} :catch_6ff

    .line 1797
    :try_start_628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_631
    .catch Landroid/os/RemoteException; {:try_start_628 .. :try_end_631} :catch_a16

    .line 1802
    :goto_631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_645

    .line 1804
    :try_start_639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_645
    .catch Landroid/os/RemoteException; {:try_start_639 .. :try_end_645} :catch_a27

    .line 1813
    :cond_645
    :goto_645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_67a

    if-eqz v18, :cond_67a

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1821
    :cond_67a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_697

    .line 1824
    :try_start_682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_697
    .catch Landroid/os/RemoteException; {:try_start_682 .. :try_end_697} :catch_a33

    .line 1829
    :cond_697
    :goto_697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .line 1830
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_12f

    .line 1691
    .end local v13           #millis:I
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_6aa
    :try_start_6aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0
    :try_end_6b0
    .catchall {:try_start_6aa .. :try_end_6b0} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_6aa .. :try_end_6b0} :catch_6ff

    if-eqz v22, :cond_6c0

    .line 1693
    :try_start_6b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v7

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_6c0
    .catchall {:try_start_6b2 .. :try_end_6c0} :catchall_719
    .catch Landroid/os/RemoteException; {:try_start_6b2 .. :try_end_6c0} :catch_706
    .catch Ljava/lang/Exception; {:try_start_6b2 .. :try_end_6c0} :catch_6ff

    .line 1700
    :cond_6c0
    :goto_6c0
    :try_start_6c0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v12

    .line 1701
    .local v12, metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    if-nez v12, :cond_71e

    .line 1702
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Missing metadata for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_552

    .line 1791
    .end local v7           #count:I
    .end local v12           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :catch_6ff
    move-exception v22

    move-object/from16 v8, v22

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_142

    .line 1694
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v7       #count:I
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_706
    move-exception v22

    move-object/from16 v8, v22

    .line 1695
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died in onUpdate"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_718
    .catchall {:try_start_6c0 .. :try_end_718} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_6c0 .. :try_end_718} :catch_6ff

    goto :goto_6c0

    .line 1794
    .end local v7           #count:I
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_719
    move-exception v22

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_1e0

    .line 1710
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v7       #count:I
    .restart local v12       #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_71e
    const/16 v10, 0x40

    .line 1711
    .local v10, flags:I
    :try_start_720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_732
    .catchall {:try_start_720 .. :try_end_732} :catchall_719
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_720 .. :try_end_732} :catch_7bb
    .catch Ljava/lang/Exception; {:try_start_720 .. :try_end_732} :catch_6ff

    move-result-object v15

    .line 1719
    .local v15, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_733
    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7e3

    .line 1723
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x2

    and-int v22, v22, v23

    if-nez v22, :cond_7e3

    .line 1725
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > installed version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1727
    .local v11, message:Ljava/lang/String;
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_552

    .line 1712
    .end local v11           #message:Ljava/lang/String;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_7bb
    move-exception v22

    move-object/from16 v8, v22

    .line 1713
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "BackupManagerService"

    const-string v23, "Invalid package restoring data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_552

    .line 1738
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_7e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v22

    if-nez v22, :cond_82e

    .line 1739
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Signature mismatch restoring "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Signature mismatch"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_552

    .line 1751
    :cond_82e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    .line 1754
    .local v5, agent:Landroid/app/IBackupAgent;
    if-nez v5, :cond_876

    .line 1755
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t find backup agent for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Restore agent missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_874
    .catchall {:try_start_733 .. :try_end_874} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_733 .. :try_end_874} :catch_6ff

    goto/16 :goto_552

    .line 1763
    :cond_876
    :try_start_876
    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v22

    move-object v3, v5

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    :try_end_88c
    .catchall {:try_start_876 .. :try_end_88c} :catchall_8de

    .line 1765
    add-int/lit8 v7, v7, 0x1

    .line 1768
    :try_start_88e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_552

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x1

    and-int v22, v22, v23

    if-eqz v22, :cond_552

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    goto/16 :goto_552

    .line 1768
    :catchall_8de
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v23

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_92d

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    const/high16 v24, 0x1

    and-int v23, v23, v24

    if-eqz v23, :cond_92d

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v23

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1768
    :cond_92d
    throw v22
    :try_end_92e
    .catchall {:try_start_88e .. :try_end_92e} :catchall_719
    .catch Ljava/lang/Exception; {:try_start_88e .. :try_end_92e} :catch_6ff

    .line 1798
    .end local v5           #agent:Landroid/app/IBackupAgent;
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7           #count:I
    .end local v10           #flags:I
    .end local v12           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_92e
    move-exception v23

    move-object/from16 v8, v23

    .line 1799
    .local v8, e:Landroid/os/RemoteException;
    const-string v23, "BackupManagerService"

    const-string v24, "Error finishing restore"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e9

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_93f
    move-exception v23

    move-object/from16 v8, v23

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v23, "BackupManagerService"

    const-string v24, "Restore observer died at restoreFinished"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1fd

    .line 1798
    .local v8, e:Ljava/lang/Exception;
    :catch_94b
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .local v8, e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_157

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_95c
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16b

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_968
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ba

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_979
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v16       #packageName:Ljava/lang/String;
    :catch_985
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_288

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_996
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29c

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #millis:I
    :catch_9a2
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_341

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_9b3
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_355

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v13           #millis:I
    :catch_9bf
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_405

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_9d0
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_419

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_9dc
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4d8

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_9ed
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ec

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #count:I
    :catch_9f9
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57b

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_a0a
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58f

    .line 1798
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #millis:I
    :catch_a16
    move-exception v22

    move-object/from16 v8, v22

    .line 1799
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_631

    .line 1805
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_a27
    move-exception v22

    move-object/from16 v8, v22

    .line 1806
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_645

    .line 1825
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_a33
    move-exception v22

    goto/16 :goto_697

    .end local v13           #millis:I
    :catch_a36
    move-exception v22

    goto/16 :goto_5e1

    .end local v7           #count:I
    :catch_a39
    move-exception v22

    goto/16 :goto_53e

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_a3c
    move-exception v22

    goto/16 :goto_46b

    .restart local v13       #millis:I
    :catch_a3f
    move-exception v22

    goto/16 :goto_3a7

    .end local v13           #millis:I
    :catch_a42
    move-exception v22

    goto/16 :goto_2ee

    .end local v16           #packageName:Ljava/lang/String;
    :catch_a45
    move-exception v22

    goto/16 :goto_120

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_a48
    move-exception v22

    goto/16 :goto_1bd

    :catch_a4b
    move-exception v23

    goto/16 :goto_24f
.end method
