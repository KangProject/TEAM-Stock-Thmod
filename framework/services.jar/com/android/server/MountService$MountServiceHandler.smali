.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "l"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 341
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 342
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .parameter "msg"

    .prologue
    .line 345
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    packed-switch v12, :pswitch_data_110

    .line 419
    :cond_8
    :goto_8
    return-void

    .line 348
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 349
    .local v11, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move v12, v0

    if-nez v12, :cond_8

    .line 354
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_8

    .line 362
    .end local v11           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_34
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 364
    .local v7, size:I
    new-array v8, v7, [I

    .line 365
    .local v8, sizeArr:[I
    const/4 v9, 0x0

    .line 367
    .local v9, sizeArrN:I
    const-string v12, "activity"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService;

    .line 369
    .local v2, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v4, 0x0

    .local v4, i:I
    move v10, v9

    .end local v9           #sizeArrN:I
    .local v10, sizeArrN:I
    :goto_50
    if-ge v4, v7, :cond_f1

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 371
    .restart local v11       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v5, v11, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 372
    .local v5, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 373
    .local v3, done:Z
    iget-boolean v12, v11, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v12, :cond_a1

    .line 374
    const/4 v3, 0x1

    .line 389
    :cond_65
    :goto_65
    if-nez v3, :cond_c6

    iget v12, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v13, 0x4

    if-ge v12, v13, :cond_c6

    .line 391
    const-string v12, "MountService"

    const-string v13, "Retrying to kill storage users again"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    iget v15, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x1e

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v9, v10

    .line 369
    .end local v10           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    :goto_9d
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9           #sizeArrN:I
    .restart local v10       #sizeArrN:I
    goto :goto_50

    .line 376
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v12, v0

    invoke-virtual {v12, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 377
    .local v6, pids:[I
    if-eqz v6, :cond_af

    array-length v12, v6

    if-nez v12, :cond_b1

    .line 378
    :cond_af
    const/4 v3, 0x1

    goto :goto_65

    .line 381
    :cond_b1
    const-string v12, "unmount media"

    invoke-virtual {v2, v6, v12}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v12, v0

    invoke-virtual {v12, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 384
    if-eqz v6, :cond_c4

    array-length v12, v6

    if-nez v12, :cond_65

    .line 385
    :cond_c4
    const/4 v3, 0x1

    goto :goto_65

    .line 397
    .end local v6           #pids:[I
    :cond_c6
    iget v12, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v13, 0x4

    if-lt v12, v13, :cond_d2

    .line 398
    const-string v12, "MountService"

    const-string v13, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_d2
    add-int/lit8 v9, v10, 0x1

    .end local v10           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    aput v4, v8, v10

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9d

    .line 407
    .end local v3           #done:Z
    .end local v5           #path:Ljava/lang/String;
    .end local v9           #sizeArrN:I
    .end local v11           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v10       #sizeArrN:I
    :cond_f1
    const/4 v12, 0x1

    sub-int v4, v10, v12

    :goto_f4
    if-ltz v4, :cond_8

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v12, v0

    aget v13, v8, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    add-int/lit8 v4, v4, -0x1

    goto :goto_f4

    .line 414
    .end local v2           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v4           #i:I
    .end local v7           #size:I
    .end local v8           #sizeArr:[I
    .end local v10           #sizeArrN:I
    :pswitch_103
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    .line 415
    .restart local v11       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v11}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_8

    .line 345
    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_9
        :pswitch_34
        :pswitch_103
    .end packed-switch
.end method
