.class Lcom/android/server/WifiService$WifiHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    .line 2076
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2077
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2081
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2165
    .end local p0
    :goto_0
    return-void

    .line 2084
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_1

    move v2, v4

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZZI)Z

    .line 2085
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2086
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    new-instance v2, Lcom/android/server/WifiWatchdogService;

    iget-object v3, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v3}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/WifiWatchdogService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 2088
    :cond_0
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v2, v5

    .line 2084
    goto :goto_1

    .line 2092
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 2093
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->setScanOnlyMode(Z)V

    .line 2094
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    .line 2095
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->setHighPerfMode(Z)V

    .line 2097
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    move v2, v5

    .line 2093
    goto :goto_2

    :cond_3
    move v2, v5

    .line 2095
    goto :goto_3

    .line 2101
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)V

    goto :goto_0

    .line 2107
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_4

    move v2, v4

    :goto_4
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v5, v2, v3}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZZI)Z

    .line 2108
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 2109
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_4
    move v2, v5

    .line 2107
    goto :goto_4

    .line 2113
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    goto/16 :goto_0

    .line 2118
    :pswitch_5
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2122
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v4, v2, p0}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 2125
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2129
    .restart local p0
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v5, v2, p0}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 2132
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2136
    .restart local p0
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_5
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;IZ)Z

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_5

    .line 2140
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->enableAllNetworks(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2144
    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_6

    move v0, v4

    .line 2145
    .local v0, forceActive:Z
    :goto_6
    sget-object v1, Lcom/android/server/WifiService$5;->$SwitchMap$android$net$wifi$SupplicantState:[I

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2152
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 2156
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_0

    .end local v0           #forceActive:Z
    :cond_6
    move v0, v5

    .line 2144
    goto :goto_6

    .line 2159
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2162
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_7

    move v2, v4

    :goto_7
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    goto/16 :goto_0

    :cond_7
    move v2, v5

    goto :goto_7

    .line 2081
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2145
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
