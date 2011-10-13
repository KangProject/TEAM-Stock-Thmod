.class Landroid/server/BluetoothService$EnableThread;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableThread"
.end annotation


# instance fields
.field private final mSaveSetting:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Z)V
    .locals 0
    .parameter
    .parameter "saveSetting"

    .prologue
    .line 529
    iput-object p1, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 530
    iput-boolean p2, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    .line 531
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 533
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)I

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    move v5, v9

    .line 534
    .local v5, res:Z
    :goto_0
    if-eqz v5, :cond_4

    .line 535
    const/4 v6, 0x2

    .line 536
    .local v6, retryCount:I
    const/4 v8, 0x0

    .local v8, running:Z
    move v7, v6

    .line 537
    .end local v6           #retryCount:I
    .local v7, retryCount:I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7           #retryCount:I
    .restart local v6       #retryCount:I
    if-lez v7, :cond_3

    if-nez v8, :cond_3

    .line 538
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->start()V

    .line 541
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 542
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_2
    add-int/lit8 v2, v3, -0x1

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_0

    if-nez v8, :cond_0

    .line 543
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 544
    const/4 v8, 0x1

    :cond_0
    move v7, v6

    .line 551
    .end local v6           #retryCount:I
    .restart local v7       #retryCount:I
    goto :goto_1

    .line 533
    .end local v2           #pollCount:I
    .end local v5           #res:Z
    .end local v7           #retryCount:I
    .end local v8           #running:Z
    :cond_1
    const/4 v9, 0x0

    move v5, v9

    goto :goto_0

    .line 548
    .restart local v2       #pollCount:I
    .restart local v5       #res:Z
    .restart local v6       #retryCount:I
    .restart local v8       #running:Z
    :cond_2
    const-wide/16 v9, 0x64

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 549
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_2

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_0
    move-exception v9

    move v3, v2

    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_2

    .line 552
    .end local v3           #pollCount:I
    :cond_3
    if-nez v8, :cond_4

    .line 553
    const-string v9, "bt EnableThread giving up"

    invoke-static {v9}, Landroid/server/BluetoothService;->access$500(Ljava/lang/String;)V

    .line 554
    const/4 v5, 0x0

    .line 555
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)I

    .line 560
    .end local v6           #retryCount:I
    .end local v8           #running:Z
    :cond_4
    if-eqz v5, :cond_8

    .line 561
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 600
    :cond_5
    :goto_3
    return-void

    .line 564
    :cond_6
    iget-boolean v9, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    if-eqz v9, :cond_7

    .line 565
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;Z)V

    .line 567
    :cond_7
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$902(Landroid/server/BluetoothService;Z)Z

    .line 568
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->readAutoPairingData()V

    .line 569
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->loadBondState()V

    .line 570
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)V

    .line 571
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 577
    .local v0, ident:J
    :try_start_1
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 580
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    .end local v0           #ident:J
    :cond_8
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;

    .line 586
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    if-eqz v5, :cond_a

    const/16 v10, 0xc

    :goto_5
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;I)V

    .line 590
    if-eqz v5, :cond_9

    .line 592
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Pairable"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    iget-object v10, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const-string v11, "Pairable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 593
    .local v4, propVal:[Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/server/BluetoothEventLoop;->onPropertyChanged([Ljava/lang/String;)V

    .line 596
    .end local v4           #propVal:[Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 597
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_3

    .line 580
    .restart local v0       #ident:J
    :catchall_0
    move-exception v9

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 586
    .end local v0           #ident:J
    :cond_a
    const/16 v10, 0xa

    goto :goto_5

    .line 578
    .restart local v0       #ident:J
    :catch_1
    move-exception v9

    goto :goto_4
.end method
