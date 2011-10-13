.class Lcom/android/server/ThrottleService$MyHandler;
.super Landroid/os/Handler;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThrottleService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "l"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    .line 354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 355
    return-void
.end method

.method private calculatePeriodEnd(J)Ljava/util/Calendar;
    .registers 12
    .parameter "now"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 651
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 652
    .local v1, end:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 653
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 654
    .local v0, day:I
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 655
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 656
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 657
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 658
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 659
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v3

    if-lt v0, v3, :cond_49

    .line 660
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 661
    .local v2, month:I
    if-ne v2, v8, :cond_44

    .line 662
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 663
    const/4 v2, -0x1

    .line 665
    :cond_44
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 669
    .end local v2           #month:I
    :cond_49
    const-string v3, "persist.throttle.testing"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 670
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 671
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 672
    const/16 v3, 0xd

    const/16 v4, 0x258

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 674
    :cond_65
    return-object v1
.end method

.method private calculatePeriodStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 7
    .parameter "end"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 677
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 678
    .local v1, start:Ljava/util/Calendar;
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 679
    .local v0, month:I
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1c

    .line 680
    const/16 v0, 0xc

    .line 681
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 683
    :cond_1c
    sub-int v2, v0, v3

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 686
    const-string v2, "persist.throttle.testing"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 687
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #start:Ljava/util/Calendar;
    check-cast v1, Ljava/util/Calendar;

    .line 688
    .restart local v1       #start:Ljava/util/Calendar;
    const/16 v2, 0xd

    const/16 v3, -0x258

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 690
    :cond_3c
    return-object v1
.end method

.method private checkThrottleAndPostNotification(J)V
    .registers 26
    .parameter "currentTotal"

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_14

    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->clearThrottleAndNotification()V

    .line 604
    :cond_13
    :goto_13
    return-void

    .line 537
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 542
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v19

    cmp-long v19, p1, v19

    if-lez v19, :cond_12c

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 545
    :try_start_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 546
    monitor-exit v19
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_10a

    .line 547
    const-string v19, "ThrottleService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Threshold "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " exceeded!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :try_start_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v22

    invoke-interface/range {v19 .. v22}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b2} :catch_10d

    .line 555
    :goto_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x10804a9

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 557
    const v19, 0x10403a6

    const v20, 0x10403a7

    const v21, 0x10804a9

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$MyHandler;->postNotification(IIII)V

    .line 562
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.net.thrott.THROTTLE_ACTION"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v5, broadcast:Landroid/content/Intent;
    const-string v19, "level"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v20

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_13

    .line 546
    .end local v5           #broadcast:Landroid/content/Intent;
    :catchall_10a
    move-exception v20

    :try_start_10b
    monitor-exit v19
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v20

    .line 551
    :catch_10d
    move-exception v19

    move-object/from16 v6, v19

    .line 552
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "ThrottleService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error setting Throttle: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 568
    .end local v6           #e:Ljava/lang/Exception;
    :cond_12c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->clearThrottleAndNotification()V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_13

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v13

    .line 582
    .local v13, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v7

    .line 583
    .local v7, end:J
    sub-long v11, v7, v13

    .line 584
    .local v11, periodLength:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 585
    .local v9, now:J
    sub-long v15, v9, v13

    .line 586
    .local v15, timeUsed:J
    const-wide/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v21

    mul-long v19, v19, v21

    mul-long v19, v19, v15

    add-long v21, v15, v11

    div-long v17, v19, v21

    .line 587
    .local v17, warningThreshold:J
    cmp-long v19, p1, v17

    if-lez v19, :cond_1cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v19

    const-wide/16 v21, 0x4

    div-long v19, v19, v21

    cmp-long v19, p1, v19

    if-lez v19, :cond_1cc

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2000(Lcom/android/server/ThrottleService;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;Z)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x10804a9

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 591
    const v19, 0x10403a4

    const v20, 0x10403a5

    const v21, 0x10804a9

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$MyHandler;->postNotification(IIII)V

    goto/16 :goto_13

    .line 597
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2000(Lcom/android/server/ThrottleService;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x10804a9

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;Z)Z

    goto/16 :goto_13
.end method

.method private declared-synchronized clearThrottleAndNotification()V
    .registers 7

    .prologue
    .line 633
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)I

    move-result v2

    if-eqz v2, :cond_4c

    .line 634
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_51

    .line 635
    :try_start_c
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 636
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_4e

    .line 638
    :try_start_13
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_54

    .line 642
    :goto_24
    :try_start_24
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.thrott.THROTTLE_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, broadcast:Landroid/content/Intent;
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 645
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x10804a9

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 646
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;Z)Z
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_51

    .line 648
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_4c
    monitor-exit p0

    return-void

    .line 636
    :catchall_4e
    move-exception v3

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 633
    :catchall_51
    move-exception v2

    monitor-exit p0

    throw v2

    .line 639
    :catch_54
    move-exception v2

    move-object v1, v2

    .line 640
    .local v1, e:Ljava/lang/Exception;
    :try_start_56
    const-string v2, "ThrottleService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error clearing Throttle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_51

    goto :goto_24
.end method

.method private onIfaceUp()V
    .registers 6

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 519
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 520
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v4}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_36

    .line 526
    :cond_35
    :goto_35
    return-void

    .line 522
    :catch_36
    move-exception v1

    move-object v0, v1

    .line 523
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ThrottleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error setting Throttle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private onPolicyChanged()V
    .registers 13

    .prologue
    .line 398
    const-string v8, "persist.throttle.testing"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 400
    .local v7, testing:Z
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 402
    .local v6, pollingPeriod:I
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_polling_sec"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$402(Lcom/android/server/ThrottleService;I)I

    .line 406
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v2, v8

    .line 408
    .local v2, defaultThreshold:J
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 410
    .local v4, defaultValue:I
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    monitor-enter v8

    .line 411
    :try_start_58
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "throttle_threshold_bytes"

    invoke-static {v10, v11, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;J)J

    .line 413
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "throttle_value_kbitsps"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/ThrottleService;->access$602(Lcom/android/server/ThrottleService;I)I

    .line 415
    if-eqz v7, :cond_93

    .line 416
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/16 v10, 0x3c

    invoke-static {v9, v10}, Lcom/android/server/ThrottleService;->access$402(Lcom/android/server/ThrottleService;I)I

    .line 417
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const-wide/32 v10, 0x100000

    invoke-static {v9, v10, v11}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;J)J

    .line 419
    :cond_93
    monitor-exit v8
    :try_end_94
    .catchall {:try_start_58 .. :try_end_94} :catchall_1df

    .line 421
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_reset_day"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$702(Lcom/android/server/ThrottleService;I)I

    .line 423
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c6

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_c6

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v8

    const/16 v9, 0x1c

    if-le v8, v9, :cond_ed

    .line 425
    :cond_c6
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 426
    .local v5, g:Ljava/util/Random;
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/16 v9, 0x1c

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$702(Lcom/android/server/ThrottleService;I)I

    .line 427
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "throttle_reset_day"

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    .end local v5           #g:Ljava/util/Random;
    :cond_ed
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    monitor-enter v8

    .line 431
    :try_start_f0
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_ff

    .line 432
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;J)J

    .line 434
    :cond_ff
    monitor-exit v8
    :try_end_100
    .catchall {:try_start_f0 .. :try_end_100} :catchall_1e2

    .line 436
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 438
    .local v1, defaultNotificationType:I
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_notification_type"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$902(Lcom/android/server/ThrottleService;I)I

    .line 441
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_max_ntp_cache_age_sec"

    const v11, 0x15180

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$1002(Lcom/android/server/ThrottleService;I)I

    .line 444
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1c2

    .line 445
    const-string v8, "ThrottleService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPolicyChanged testing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", period="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", resetDay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", noteType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", maxNtpCacheAge="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$1000(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1c2
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 454
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onResetAlarm()V

    .line 456
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    return-void

    .line 419
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v1           #defaultNotificationType:I
    :catchall_1df
    move-exception v9

    :try_start_1e0
    monitor-exit v8
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_1df

    throw v9

    .line 434
    :catchall_1e2
    move-exception v9

    :try_start_1e3
    monitor-exit v8
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    throw v9
.end method

.method private onPollAlarm()V
    .registers 27

    .prologue
    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 464
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v11, v13, v22

    .line 466
    .local v11, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1100(Lcom/android/server/ThrottleService;)V

    .line 468
    const-wide/16 v7, 0x0

    .line 469
    .local v7, incRead:J
    const-wide/16 v9, 0x0

    .line 471
    .local v9, incWrite:J
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/os/INetworkManagementService;->getInterfaceRxCounter(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)J

    move-result-wide v24

    sub-long v7, v22, v24

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/os/INetworkManagementService;->getInterfaceTxCounter(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$1400(Lcom/android/server/ThrottleService;)J

    move-result-wide v24

    sub-long v9, v22, v24

    .line 475
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-ltz v22, :cond_7c

    const-wide/16 v22, 0x0

    cmp-long v22, v9, v22

    if-gez v22, :cond_aa

    .line 476
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)J

    move-result-wide v22

    add-long v7, v7, v22

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1400(Lcom/android/server/ThrottleService;)J

    move-result-wide v22

    add-long v9, v9, v22

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    invoke-static/range {v22 .. v24}, Lcom/android/server/ThrottleService;->access$1302(Lcom/android/server/ThrottleService;J)J

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    invoke-static/range {v22 .. v24}, Lcom/android/server/ThrottleService;->access$1402(Lcom/android/server/ThrottleService;J)J
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_aa} :catch_1ff

    .line 485
    :cond_aa
    :goto_aa
    const-string v22, "true"

    const-string v23, "gsm.operator.isroaming"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 487
    .local v19, roaming:Z
    if-nez v19, :cond_c9

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v7

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$DataRecorder;->addData(JJ)V

    .line 491
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v15

    .line 492
    .local v15, periodRx:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v17

    .line 493
    .local v17, periodTx:J
    add-long v20, v15, v17

    .line 494
    .local v20, total:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_13f

    .line 495
    const-string v22, "ThrottleService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onPollAlarm - roaming ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", read ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", written ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", new total ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/ThrottleService;->access$1314(Lcom/android/server/ThrottleService;J)J

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/ThrottleService;->access$1414(Lcom/android/server/ThrottleService;J)J

    .line 501
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ThrottleService$MyHandler;->checkThrottleAndPostNotification(J)V

    .line 503
    new-instance v5, Landroid/content/Intent;

    const-string v22, "android.net.thrott.POLL_ACTION"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v5, broadcast:Landroid/content/Intent;
    const-string v22, "cycleRead"

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 505
    const-string v22, "cycleWrite"

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 506
    const-string v22, "cycleStart"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ThrottleService;->getPeriodStartTime(Ljava/lang/String;)J

    move-result-wide v23

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 507
    const-string v22, "cycleEnd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ThrottleService;->getResetTime(Ljava/lang/String;)J

    move-result-wide v23

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$1500(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$1500(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-wide v2, v11

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 512
    return-void

    .line 481
    .end local v5           #broadcast:Landroid/content/Intent;
    .end local v15           #periodRx:J
    .end local v17           #periodTx:J
    .end local v19           #roaming:Z
    .end local v20           #total:J
    :catch_1ff
    move-exception v22

    move-object/from16 v6, v22

    .line 482
    .local v6, e:Landroid/os/RemoteException;
    const-string v22, "ThrottleService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got remoteException in onPollAlarm:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa
.end method

.method private onRebootRecovery()V
    .registers 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 384
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    new-instance v1, Lcom/android/server/ThrottleService$DataRecorder;

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ThrottleService$DataRecorder;-><init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V

    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$202(Lcom/android/server/ThrottleService;Lcom/android/server/ThrottleService$DataRecorder;)Lcom/android/server/ThrottleService$DataRecorder;

    .line 387
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 392
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 394
    return-void
.end method

.method private onResetAlarm()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 694
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_49

    .line 695
    const-string v6, "ThrottleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResetAlarm - last period had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes read and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " written"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_49
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)J

    move-result-wide v1

    .line 701
    .local v1, now:J
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Z

    move-result v6

    if-nez v6, :cond_5f

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a0

    .line 702
    :cond_5f
    invoke-direct {p0, v1, v2}, Lcom/android/server/ThrottleService$MyHandler;->calculatePeriodEnd(J)Ljava/util/Calendar;

    move-result-object v0

    .line 703
    .local v0, end:Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcom/android/server/ThrottleService$MyHandler;->calculatePeriodStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    .line 705
    .local v5, start:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/server/ThrottleService$DataRecorder;->setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 706
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    .line 709
    :cond_76
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v7}, Lcom/android/server/ThrottleService;->access$2300(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 710
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v3, v6, v1

    .line 712
    .local v3, offset:J
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v3

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$2300(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 718
    .end local v0           #end:Ljava/util/Calendar;
    .end local v3           #offset:J
    .end local v5           #start:Ljava/util/Calendar;
    :cond_a0
    return-void
.end method

.method private postNotification(IIII)V
    .registers 13
    .parameter "titleInt"
    .parameter "messageInt"
    .parameter "icon"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 609
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.DataUsage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const/high16 v5, 0x4000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 612
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 614
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 615
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 616
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 617
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    if-nez v5, :cond_58

    .line 618
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    invoke-static {v5, v6}, Lcom/android/server/ThrottleService;->access$2102(Lcom/android/server/ThrottleService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 619
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 621
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput p3, v5, Landroid/app/Notification;->icon:I

    .line 622
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 624
    :cond_58
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput p4, v5, Landroid/app/Notification;->flags:I

    .line 625
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 626
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 628
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v7}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 629
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 375
    :goto_5
    return-void

    .line 361
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onRebootRecovery()V

    goto :goto_5

    .line 364
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPolicyChanged()V

    goto :goto_5

    .line 367
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    goto :goto_5

    .line 370
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onResetAlarm()V

    goto :goto_5

    .line 373
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onIfaceUp()V

    goto :goto_5

    .line 359
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method
