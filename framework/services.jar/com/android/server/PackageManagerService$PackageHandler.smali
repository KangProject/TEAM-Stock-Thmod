.class Lcom/android/server/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    .line 434
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 435
    return-void
.end method

.method private connectToService()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 414
    .local v0, service:Landroid/content/Intent;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 415
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 417
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 418
    iput-boolean v3, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move v1, v3

    .line 422
    :goto_28
    return v1

    .line 421
    :cond_29
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v4

    .line 422
    goto :goto_28
.end method

.method private disconnectService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 427
    iput-boolean v2, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    .line 428
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 429
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/PackageManagerService;->access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 430
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 431
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 33
    .parameter "msg"

    .prologue
    .line 446
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_4d0

    .line 677
    .end local p1
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 449
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 450
    .local v19, params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 455
    .local v15, idx:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v26, v0

    if-nez v26, :cond_44

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v26

    if-nez v26, :cond_35

    .line 459
    const-string v26, "PackageManager"

    const-string v27, "Failed to bind to media container service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_9

    .line 465
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 468
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    if-nez v15, :cond_9

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 479
    .end local v15           #idx:I
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :pswitch_66
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_83

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 482
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v26

    if-nez v26, :cond_c6

    .line 484
    const-string v26, "PackageManager"

    const-string v27, "Cannot bind to media container service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_bb

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 486
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_a0

    .line 490
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9

    .line 491
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_e7

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 493
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    if-eqz v19, :cond_9

    .line 494
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->startCopy()V

    goto/16 :goto_9

    .line 498
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_e7
    const-string v26, "PackageManager"

    const-string v27, "Empty queue"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 504
    .restart local p1
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v26, v0

    if-eqz v26, :cond_107

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->disconnectService()V

    .line 508
    :cond_107
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v26

    if-nez v26, :cond_9

    .line 509
    const-string v26, "PackageManager"

    const-string v27, "Failed to bind to media container service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_11e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_139

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 511
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 513
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_11e

    .line 515
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9

    .line 523
    .end local v14           #i$:Ljava/util/Iterator;
    :pswitch_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_15b

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 526
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_174

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_9

    .line 534
    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 540
    :pswitch_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 541
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    goto/16 :goto_9

    .line 546
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :pswitch_197
    const/16 v23, 0x0

    .line 548
    .local v23, size:I
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 550
    :try_start_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    if-nez v27, :cond_1bf

    .line 551
    monitor-exit v26

    goto/16 :goto_9

    .line 574
    .end local p1
    :catchall_1bc
    move-exception v27

    monitor-exit v26
    :try_end_1be
    .catchall {:try_start_1ab .. :try_end_1be} :catchall_1bc

    throw v27

    .line 553
    .restart local p1
    :cond_1bf
    :try_start_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v23

    .line 554
    if-gtz v23, :cond_1d4

    .line 556
    monitor-exit v26

    goto/16 :goto_9

    .line 558
    :cond_1d4
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 559
    .local v18, packages:[Ljava/lang/String;
    move/from16 v0, v23

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object v6, v0

    .line 560
    .local v6, components:[Ljava/util/ArrayList;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 562
    .local v24, uids:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 563
    .local v16, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v13, 0x0

    .line 564
    .end local p1
    .local v13, i:I
    :goto_1fa
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_245

    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_245

    .line 565
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 566
    .local v11, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v18, v13

    .line 567
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    aput-object p1, v6, v13

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v27

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 569
    .local v20, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v20, :cond_242

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v27, v0

    :goto_23d
    aput v27, v24, v13

    .line 570
    add-int/lit8 v13, v13, 0x1

    .line 571
    goto :goto_1fa

    .line 569
    :cond_242
    const/16 v27, -0x1

    goto :goto_23d

    .line 572
    .end local v11           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v20           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_245
    move/from16 v23, v13

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    .line 574
    monitor-exit v26
    :try_end_257
    .catchall {:try_start_1bf .. :try_end_257} :catchall_1bc

    .line 576
    const/4 v13, 0x0

    :goto_258
    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_271

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    aget-object v27, v18, v13

    const/16 v28, 0x1

    aget-object v29, v6, v13

    aget v30, v24, v13

    invoke-static/range {v26 .. v30}, Lcom/android/server/PackageManagerService;->access$500(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 576
    add-int/lit8 v13, v13, 0x1

    goto :goto_258

    .line 580
    :cond_271
    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_9

    .line 584
    .end local v6           #components:[Ljava/util/ArrayList;
    .end local v13           #i:I
    .end local v16           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v18           #packages:[Ljava/lang/String;
    .end local v23           #size:I
    .end local v24           #uids:[I
    .restart local p1
    :pswitch_278
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 585
    .local v17, packageName:Ljava/lang/String;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 587
    :try_start_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2c7

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_2c7
    monitor-exit v26
    :try_end_2c8
    .catchall {:try_start_292 .. :try_end_2c8} :catchall_2d8

    .line 591
    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_9

    .line 590
    :catchall_2d8
    move-exception v27

    :try_start_2d9
    monitor-exit v26
    :try_end_2da
    .catchall {:try_start_2d9 .. :try_end_2da} :catchall_2d8

    throw v27

    .line 596
    .end local v17           #packageName:Ljava/lang/String;
    :pswitch_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$PostInstallData;

    .line 597
    .local v7, data:Lcom/android/server/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseArray;->delete(I)V

    .line 598
    const/4 v8, 0x0

    .line 600
    .local v8, deleteOld:Z
    if-eqz v7, :cond_412

    .line 601
    iget-object v4, v7, Lcom/android/server/PackageManagerService$PostInstallData;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 602
    .local v4, args:Lcom/android/server/PackageManagerService$InstallArgs;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PostInstallData;->res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v22, v0

    .line 604
    .local v22, res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b8

    .line 605
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 606
    new-instance v12, Landroid/os/Bundle;

    const/16 v26, 0x1

    move-object v0, v12

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 607
    .local v12, extras:Landroid/os/Bundle;
    const-string v26, "android.intent.extra.UID"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    move/from16 v27, v0

    move-object v0, v12

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_409

    const/16 v26, 0x1

    move/from16 v25, v26

    .line 609
    .local v25, update:Z
    :goto_359
    if-eqz v25, :cond_367

    .line 610
    const-string v26, "android.intent.extra.REPLACING"

    const/16 v27, 0x1

    move-object v0, v12

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 612
    :cond_367
    const-string v26, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v12

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 615
    if-eqz v25, :cond_3a9

    .line 616
    const-string v26, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v12

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 620
    :cond_3a9
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3b8

    .line 622
    const/4 v8, 0x1

    .line 626
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v25           #update:Z
    :cond_3b8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Runtime;->gc()V

    .line 628
    if-eqz v8, :cond_3e0

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 630
    :try_start_3ce
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 631
    monitor-exit v26
    :try_end_3e0
    .catchall {:try_start_3ce .. :try_end_3e0} :catchall_40f

    .line 633
    :cond_3e0
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 635
    :try_start_3e7
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v28, v0

    invoke-interface/range {v26 .. v28}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_3fb
    .catch Landroid/os/RemoteException; {:try_start_3e7 .. :try_end_3fb} :catch_3fd

    goto/16 :goto_9

    .line 636
    :catch_3fd
    move-exception v26

    move-object/from16 v10, v26

    .line 637
    .local v10, e:Landroid/os/RemoteException;
    const-string v26, "PackageManager"

    const-string v27, "Observer no longer exists."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 608
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v12       #extras:Landroid/os/Bundle;
    :cond_409
    const/16 v26, 0x0

    move/from16 v25, v26

    goto/16 :goto_359

    .line 631
    .end local v12           #extras:Landroid/os/Bundle;
    :catchall_40f
    move-exception v27

    :try_start_410
    monitor-exit v26
    :try_end_411
    .catchall {:try_start_410 .. :try_end_411} :catchall_40f

    throw v27

    .line 641
    .end local v4           #args:Lcom/android/server/PackageManagerService$InstallArgs;
    .end local v22           #res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    :cond_412
    const-string v26, "PackageManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Bogus post-install token "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 646
    .end local v7           #data:Lcom/android/server/PackageManagerService$PostInstallData;
    .end local v8           #deleteOld:Z
    :pswitch_432
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_491

    const/16 v26, 0x1

    move/from16 v21, v26

    .line 647
    .local v21, reportStatus:Z
    :goto_444
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_496

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 649
    .local v9, doGc:Z
    :goto_456
    if-eqz v9, :cond_45f

    .line 651
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Runtime;->gc()V

    .line 653
    :cond_45f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_47a

    .line 654
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/Set;

    .line 657
    .local v5, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$700(Lcom/android/server/PackageManagerService;Ljava/util/Set;)V

    .line 659
    .end local v5           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    :cond_47a
    if-eqz v21, :cond_9

    .line 662
    :try_start_47c
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_483
    .catch Landroid/os/RemoteException; {:try_start_47c .. :try_end_483} :catch_485

    goto/16 :goto_9

    .line 663
    :catch_485
    move-exception v26

    move-object/from16 v10, v26

    .line 664
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v26, "PackageManager"

    const-string v27, "MountService not running?"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 646
    .end local v9           #doGc:Z
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v21           #reportStatus:Z
    :cond_491
    const/16 v26, 0x0

    move/from16 v21, v26

    goto :goto_444

    .line 647
    .restart local v21       #reportStatus:Z
    :cond_496
    const/16 v26, 0x0

    move/from16 v9, v26

    goto :goto_456

    .line 669
    .end local v21           #reportStatus:Z
    :pswitch_49b
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 671
    const/16 v27, 0xd

    :try_start_4af
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 673
    monitor-exit v26
    :try_end_4c6
    .catchall {:try_start_4af .. :try_end_4c6} :catchall_4cd

    .line 674
    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_9

    .line 673
    :catchall_4cd
    move-exception v27

    :try_start_4ce
    monitor-exit v26
    :try_end_4cf
    .catchall {:try_start_4ce .. :try_end_4cf} :catchall_4cd

    throw v27

    .line 446
    :pswitch_data_4d0
    .packed-switch 0x1
        :pswitch_197
        :pswitch_9
        :pswitch_66
        :pswitch_9
        :pswitch_a
        :pswitch_144
        :pswitch_278
        :pswitch_9
        :pswitch_2db
        :pswitch_f0
        :pswitch_187
        :pswitch_432
        :pswitch_49b
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/16 v1, 0xa

    .line 439
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 441
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 443
    return-void

    .line 441
    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
