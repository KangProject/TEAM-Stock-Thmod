.class Lcom/android/server/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 2931
    iput-object p1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2972
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 15
    .parameter "event"

    .prologue
    .line 2933
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2934
    .local v3, milliseconds:J
    iget-object v8, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v8

    monitor-enter v8

    .line 2935
    :try_start_b
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v1, v9, v10

    .line 2936
    .local v1, distance:F
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)J

    move-result-wide v9

    sub-long v6, v3, v9

    .line 2937
    .local v6, timeSinceLastEvent:J
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9, v3, v4}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;J)J

    .line 2938
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2939
    const/4 v5, 0x0

    .line 2942
    .local v5, proximityTaskQueued:Z
    float-to-double v9, v1

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_84

    const/high16 v9, 0x40a0

    cmpg-float v9, v1, v9

    if-gez v9, :cond_84

    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_84

    const/4 v9, 0x1

    move v0, v9

    .line 2948
    .local v0, active:Z
    :goto_4a
    const-wide/16 v9, 0x3e8

    cmp-long v9, v6, v9

    if-gez v9, :cond_89

    .line 2950
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_87

    const/4 v10, 0x1

    :goto_55
    invoke-static {v9, v10}, Lcom/android/server/PowerManagerService;->access$4602(Lcom/android/server/PowerManagerService;I)I

    .line 2951
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    sub-long/2addr v11, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2952
    const/4 v5, 0x1

    .line 2960
    :goto_6b
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    .line 2961
    .local v2, held:Z
    if-nez v2, :cond_98

    if-eqz v5, :cond_98

    .line 2963
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2967
    :cond_82
    :goto_82
    monitor-exit v8

    .line 2968
    return-void

    .line 2942
    .end local v0           #active:Z
    .end local v2           #held:Z
    :cond_84
    const/4 v9, 0x0

    move v0, v9

    goto :goto_4a

    .line 2950
    .restart local v0       #active:Z
    :cond_87
    const/4 v10, 0x0

    goto :goto_55

    .line 2955
    :cond_89
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/android/server/PowerManagerService;->access$4602(Lcom/android/server/PowerManagerService;I)I

    .line 2956
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9, v0}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_6b

    .line 2967
    .end local v0           #active:Z
    .end local v1           #distance:F
    .end local v5           #proximityTaskQueued:Z
    .end local v6           #timeSinceLastEvent:J
    :catchall_95
    move-exception v9

    monitor-exit v8
    :try_end_97
    .catchall {:try_start_b .. :try_end_97} :catchall_95

    throw v9

    .line 2964
    .restart local v0       #active:Z
    .restart local v1       #distance:F
    .restart local v2       #held:Z
    .restart local v5       #proximityTaskQueued:Z
    .restart local v6       #timeSinceLastEvent:J
    :cond_98
    if-eqz v2, :cond_82

    if-nez v5, :cond_82

    .line 2965
    :try_start_9c
    iget-object v9, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_95

    goto :goto_82
.end method
