.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1536
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1657
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1538
    .restart local p0
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1539
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 1540
    .local v8, type:I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 1546
    .local v7, state:Landroid/net/NetworkInfo$State;
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v10, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v8

    iget-object v10, v10, Lcom/android/server/ConnectivityService$NetworkAttributes;->mLastState:Landroid/net/NetworkInfo$State;

    if-ne v10, v7, :cond_1

    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v10, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v8

    iget v10, v10, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-eq v10, v12, :cond_0

    .line 1557
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v10, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v8

    iput-object v7, v10, Lcom/android/server/ConnectivityService$NetworkAttributes;->mLastState:Landroid/net/NetworkInfo$State;

    .line 1570
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v11

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    shl-int/lit8 v11, v11, 0x9

    or-int v2, v10, v11

    .line 1573
    .local v2, eventLogParam:I
    const v10, 0xc364

    invoke-static {v10, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1576
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_2

    .line 1578
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1579
    :cond_2
    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v10, :cond_3

    .line 1580
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1581
    :cond_3
    sget-object v10, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v7, v10, :cond_4

    .line 1589
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1590
    :cond_4
    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v10, :cond_0

    .line 1591
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1596
    .end local v2           #eventLogParam:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v7           #state:Landroid/net/NetworkInfo$State;
    .end local v8           #type:I
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1597
    .restart local v3       #info:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1601
    .end local v3           #info:Landroid/net/NetworkInfo;
    :sswitch_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v12, :cond_5

    move v11, v12

    :goto_1
    iget v12, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/Notification;

    invoke-static {v10, v11, v12, p0}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V

    goto/16 :goto_0

    .restart local p0
    :cond_5
    move v11, v13

    goto :goto_1

    .line 1606
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1607
    .restart local v3       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 1608
    .restart local v8       #type:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v8}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 1616
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v8           #type:I
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1617
    .restart local v3       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 1618
    .restart local v8       #type:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    goto/16 :goto_0

    .line 1621
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v8           #type:I
    :sswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1622
    .local v9, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 1626
    .end local v9           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_7
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1627
    .local v4, netType:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1628
    .local v0, condition:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v4, v0}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 1633
    .end local v0           #condition:I
    .end local v4           #netType:I
    :sswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1634
    .restart local v4       #netType:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 1635
    .local v6, sequence:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v4, v6}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 1640
    .end local v4           #netType:I
    .end local v6           #sequence:I
    :sswitch_9
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1641
    .local v5, preference:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v5}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 1646
    .end local v5           #preference:I
    :sswitch_a
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v12, :cond_6

    move v1, v12

    .line 1647
    .local v1, enabled:Z
    :goto_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v1}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_6
    move v1, v13

    .line 1646
    goto :goto_2

    .line 1652
    :sswitch_b
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v12, :cond_7

    move v1, v12

    .line 1653
    .restart local v1       #enabled:Z
    :goto_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_7
    move v1, v13

    .line 1652
    goto :goto_3

    .line 1536
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_0
        0x6 -> :sswitch_5
        0x65 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
    .end sparse-switch
.end method
