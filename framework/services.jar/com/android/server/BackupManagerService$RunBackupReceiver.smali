.class Lcom/android/server/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "BackupManagerService"

    .line 521
    const-string v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 522
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 523
    :try_start_13
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_3d

    move-result v3

    if-lez v3, :cond_40

    .line 528
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 529
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_3d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1d .. :try_end_31} :catch_33

    .line 550
    :goto_31
    :try_start_31
    monitor-exit v2

    .line 552
    :cond_32
    return-void

    .line 530
    :catch_33
    move-exception v3

    move-object v0, v3

    .line 531
    .local v0, ce:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "BackupManagerService"

    const-string v4, "Run init intent cancelled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 550
    .end local v0           #ce:Landroid/app/PendingIntent$CanceledException;
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3d

    throw v3

    .line 537
    :cond_40
    :try_start_40
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v3, :cond_64

    .line 542
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 544
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 545
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_31

    .line 547
    .end local v1           #msg:Landroid/os/Message;
    :cond_64
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_40 .. :try_end_8e} :catchall_3d

    goto :goto_31
.end method
