.class Lcom/android/server/PowerManagerService$13;
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
    .line 2975
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3007
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const/high16 v6, -0x4080

    .line 2977
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 2979
    :try_start_9
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2980
    monitor-exit v3

    .line 3003
    :goto_12
    return-void

    .line 2983
    :cond_13
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2984
    .local v2, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2988
    .local v0, milliseconds:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2989
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_75

    .line 2990
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_5d

    .line 2993
    :cond_53
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4, v2}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;I)V

    .line 3002
    :goto_58
    monitor-exit v3

    goto :goto_12

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_5a
    move-exception v4

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_5a

    throw v4

    .line 2996
    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_5d
    :try_start_5d
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$4902(Lcom/android/server/PowerManagerService;F)F

    .line 2997
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_58

    .line 3000
    :cond_75
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v5, -0x4080

    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$4902(Lcom/android/server/PowerManagerService;F)F
    :try_end_7c
    .catchall {:try_start_5d .. :try_end_7c} :catchall_5a

    goto :goto_58
.end method
