.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 647
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 648
    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 654
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;I)I

    move-result v20

    .line 656
    .local v20, result:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v21, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/high16 v5, 0x1

    and-int v5, v5, v20

    if-eqz v5, :cond_52

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 661
    new-instance v14, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v14, intent:Landroid/content/Intent;
    const/high16 v5, 0x2000

    invoke-virtual {v14, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 666
    .end local v14           #intent:Landroid/content/Intent;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 667
    :try_start_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 668
    .local v18, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 673
    .local v16, nowELAPSED:J
    and-int/lit8 v5, v20, 0x1

    if-eqz v5, :cond_7f

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 676
    :cond_7f
    and-int/lit8 v5, v20, 0x2

    if-eqz v5, :cond_9a

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 679
    :cond_9a
    and-int/lit8 v5, v20, 0x4

    if-eqz v5, :cond_b5

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 682
    :cond_b5
    and-int/lit8 v5, v20, 0x8

    if-eqz v5, :cond_d0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 686
    :cond_d0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 687
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_d4
    :goto_d4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_180

    .line 688
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_e0
    .catchall {:try_start_5c .. :try_end_e0} :catchall_16b

    .line 691
    .local v11, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_e0
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.extra.ALARM_COUNT"

    iget v10, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v9, v0

    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)I

    move-result v5

    if-nez v5, :cond_124

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 700
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1408(Lcom/android/server/AlarmManagerService;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v5, v6}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v12

    .line 703
    .local v12, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_16e

    .line 704
    move-wide/from16 v0, v16

    move-object v2, v12

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 708
    :goto_140
    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_149

    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_d4

    .line 710
    :cond_149
    iget v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 711
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v5}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_154
    .catchall {:try_start_e0 .. :try_end_154} :catchall_16b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e0 .. :try_end_154} :catch_155
    .catch Ljava/lang/RuntimeException; {:try_start_e0 .. :try_end_154} :catch_175

    goto :goto_d4

    .line 714
    .end local v12           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_155
    move-exception v5

    move-object v13, v5

    .line 715
    .local v13, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_157
    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_d4

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_d4

    .line 724
    .end local v11           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v16           #nowELAPSED:J
    .end local v18           #nowRTC:J
    :catchall_16b
    move-exception v5

    monitor-exit v14
    :try_end_16d
    .catchall {:try_start_157 .. :try_end_16d} :catchall_16b

    throw v5

    .line 706
    .restart local v11       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v12       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v16       #nowELAPSED:J
    .restart local v18       #nowRTC:J
    :cond_16e
    :try_start_16e
    iget v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_174
    .catchall {:try_start_16e .. :try_end_174} :catchall_16b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16e .. :try_end_174} :catch_155
    .catch Ljava/lang/RuntimeException; {:try_start_16e .. :try_end_174} :catch_175

    goto :goto_140

    .line 720
    .end local v12           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_175
    move-exception v5

    move-object v13, v5

    .line 721
    .local v13, e:Ljava/lang/RuntimeException;
    :try_start_177
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d4

    .line 724
    .end local v11           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13           #e:Ljava/lang/RuntimeException;
    :cond_180
    monitor-exit v14
    :try_end_181
    .catchall {:try_start_177 .. :try_end_181} :catchall_16b

    goto/16 :goto_0
.end method
