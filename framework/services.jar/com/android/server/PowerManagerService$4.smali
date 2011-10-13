.class Lcom/android/server/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1370
    :goto_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 1371
    :try_start_b
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v10, v1, v3

    .line 1372
    .local v10, value:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v11, v1, v3

    .line 1373
    .local v11, why:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    if-ge v8, v12, :cond_47

    .line 1374
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    aget v3, v3, v4

    aput v3, v1, v8

    .line 1375
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    aget v3, v3, v4

    aput v3, v1, v8

    .line 1373
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 1377
    :cond_47
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService;->getPolicyLocked()Landroid/view/WindowManagerPolicy;

    move-result-object v9

    .line 1378
    .local v9, policy:Landroid/view/WindowManagerPolicy;
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_8f

    .line 1379
    if-ne v10, v13, :cond_c7

    .line 1380
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/PowerManagerService;->mScreenOnStart:J

    .line 1382
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    .line 1384
    :try_start_5b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_62} :catch_140

    .line 1392
    :goto_62
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1393
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1378
    .end local v8           #i:I
    .end local v9           #policy:Landroid/view/WindowManagerPolicy;
    .end local v10           #value:I
    .end local v11           #why:I
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1

    .line 1396
    .restart local v8       #i:I
    .restart local v9       #policy:Landroid/view/WindowManagerPolicy;
    .restart local v10       #value:I
    .restart local v11       #why:I
    :cond_92
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 1397
    const/16 v1, 0xaa7

    const/4 v3, 0x2

    :try_start_9c
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v6

    iget v6, v6, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1399
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1400
    monitor-exit v0

    goto/16 :goto_4

    :catchall_c4
    move-exception v1

    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_9c .. :try_end_c6} :catchall_c4

    throw v1

    .line 1403
    :cond_c7
    if-nez v10, :cond_13d

    .line 1404
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/PowerManagerService;->mScreenOffStart:J

    .line 1406
    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 1408
    :try_start_d4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_db} :catch_13e

    .line 1413
    :goto_db
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 1414
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1417
    :cond_108
    iget-object v0, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 1418
    const/16 v1, 0xaa7

    const/4 v3, 0x2

    :try_start_112
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v6

    iget v6, v6, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1420
    iget-object v1, p0, Lcom/android/server/PowerManagerService$4;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1421
    monitor-exit v0

    goto/16 :goto_4

    :catchall_13a
    move-exception v1

    monitor-exit v0
    :try_end_13c
    .catchall {:try_start_112 .. :try_end_13c} :catchall_13a

    throw v1

    .line 1430
    :cond_13d
    return-void

    .line 1409
    :catch_13e
    move-exception v0

    goto :goto_db

    .line 1385
    :catch_140
    move-exception v0

    goto/16 :goto_62
.end method
