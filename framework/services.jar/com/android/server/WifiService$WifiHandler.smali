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
    .registers 3
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
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2081
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_13e

    .line 2165
    .end local p0
    :goto_8
    return-void

    .line 2084
    .restart local p0
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_3b

    move v2, v4

    :goto_10
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZZI)Z

    .line 2085
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;

    move-result-object v1

    if-nez v1, :cond_33

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
    :cond_33
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_8

    :cond_3b
    move v2, v5

    .line 2084
    goto :goto_10

    .line 2092
    :pswitch_3d
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 2093
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_70

    move v2, v4

    :goto_4d
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

    if-ne v2, v3, :cond_72

    move v2, v4

    :goto_65
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->setHighPerfMode(Z)V

    .line 2097
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_8

    :cond_70
    move v2, v5

    .line 2093
    goto :goto_4d

    :cond_72
    move v2, v5

    .line 2095
    goto :goto_65

    .line 2101
    :pswitch_74
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)V

    goto :goto_8

    .line 2107
    :pswitch_7a
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_95

    move v2, v4

    :goto_81
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

    goto/16 :goto_8

    :cond_95
    move v2, v5

    .line 2107
    goto :goto_81

    .line 2113
    :pswitch_97
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    goto/16 :goto_8

    .line 2118
    :pswitch_a2
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 2122
    :pswitch_ab
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

    goto/16 :goto_8

    .line 2129
    .restart local p0
    :pswitch_bf
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

    goto/16 :goto_8

    .line 2136
    .restart local p0
    :pswitch_d3
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_e1

    move v3, v4

    :goto_dc
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;IZ)Z

    goto/16 :goto_8

    :cond_e1
    move v3, v5

    goto :goto_dc

    .line 2140
    :pswitch_e3
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->enableAllNetworks(Ljava/util/List;)V

    goto/16 :goto_8

    .line 2144
    :pswitch_f4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_122

    move v0, v4

    .line 2145
    .local v0, forceActive:Z
    :goto_f9
    sget-object v1, Lcom/android/server/WifiService$5;->$SwitchMap$android$net$wifi$SupplicantState:[I

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_15c

    .line 2152
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 2156
    :pswitch_117
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_8

    .end local v0           #forceActive:Z
    :cond_122
    move v0, v5

    .line 2144
    goto :goto_f9

    .line 2159
    :pswitch_124
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto/16 :goto_8

    .line 2162
    :pswitch_12b
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_13b

    move v2, v4

    :goto_136
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    goto/16 :goto_8

    :cond_13b
    move v2, v5

    goto :goto_136

    .line 2081
    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7a
        :pswitch_97
        :pswitch_3d
        :pswitch_a2
        :pswitch_74
        :pswitch_ab
        :pswitch_bf
        :pswitch_d3
        :pswitch_e3
        :pswitch_f4
        :pswitch_124
        :pswitch_12b
    .end packed-switch

    .line 2145
    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
    .end packed-switch
.end method
