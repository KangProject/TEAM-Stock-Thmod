.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCellLocation:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private final mDataConnStateChangeIntentQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionApnTypes:[Ljava/lang/String;

.field private mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mMessageWaiting:Z

.field private mOrderedBroadcastCallback:Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 75
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 77
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 79
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 81
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 83
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 87
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 91
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 93
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 95
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 97
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApnTypes:[Ljava/lang/String;

    .line 99
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 105
    new-instance v1, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;-><init>(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$1;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOrderedBroadcastCallback:Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnStateChangeIntentQueue:Ljava/util/Queue;

    .line 125
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 129
    .local v0, location:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_5b

    .line 130
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 132
    :cond_5b
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 134
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnStateChangeIntentQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .registers 8
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 534
    .local v0, ident:J
    if-nez p1, :cond_3a

    .line 535
    :try_start_6
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_40

    .line 542
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 547
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 549
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    :cond_32
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 552
    return-void

    .line 537
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_b

    .line 539
    :catch_40
    move-exception v3

    goto :goto_b

    .line 542
    :catchall_42
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 597
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "gateway"

    .prologue
    .line 560
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v4, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    if-nez p2, :cond_21

    .line 564
    const-string v3, "networkUnvailable"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    :cond_21
    if-eqz p3, :cond_2c

    .line 567
    const-string v3, "reason"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    :cond_2c
    const-string v3, "apn"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    new-instance v12, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 571
    .local v12, types:Ljava/lang/String;
    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    if-lez v3, :cond_68

    .line 572
    const/4 v3, 0x0

    aget-object v12, p5, v3

    .line 573
    const/4 v11, 0x1

    .local v11, i:I
    :goto_46
    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    if-ge v11, v3, :cond_68

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, p5, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 573
    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    .line 577
    .end local v11           #i:I
    :cond_68
    const-string v3, "apnType"

    invoke-virtual {v4, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v3, "iface"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const/4 v10, 0x0

    .line 580
    .local v10, gatewayAddr:I
    if-eqz p7, :cond_7d

    .line 581
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->v4StringToInt(Ljava/lang/String;)I

    move-result v10

    .line 583
    :cond_7d
    const-string v3, "gateway"

    invoke-virtual {v4, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mDataConnStateChangeIntentQueue:Ljava/util/Queue;

    .end local v10           #gatewayAddr:I
    monitor-enter v10

    .line 586
    :try_start_85
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnStateChangeIntentQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 587
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOrderedBroadcastCallback:Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 590
    :cond_98
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnStateChangeIntentQueue:Ljava/util/Queue;

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 591
    monitor-exit v10

    .line 592
    return-void

    .line 591
    :catchall_9f
    move-exception v3

    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_9f

    throw v3
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8
    .parameter "state"

    .prologue
    .line 496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 498
    .local v1, ident:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_32

    .line 502
    :goto_d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 509
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 510
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 511
    return-void

    .line 502
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_2d
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 499
    :catch_32
    move-exception v4

    goto :goto_d
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .registers 7
    .parameter "signalStrength"

    .prologue
    .line 514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 516
    .local v1, ident:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_2e

    .line 520
    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 528
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 529
    return-void

    .line 520
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_29
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 517
    :catch_2e
    move-exception v4

    goto :goto_9
.end method

.method private checkListenerPermission(I)V
    .registers 5
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 638
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    .line 639
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_c
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_17

    .line 645
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_17
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5
    .parameter "method"

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 629
    const/4 v1, 0x1

    .line 634
    :goto_b
    return v1

    .line 631
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6
    .parameter "binder"

    .prologue
    .line 231
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 232
    :try_start_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 233
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 234
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    .line 235
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    monitor-exit v3

    .line 240
    :goto_1e
    return-void

    .line 233
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 239
    :cond_22
    monitor-exit v3

    goto :goto_1e

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    .registers 6
    .parameter "r"
    .parameter "cellLocation"

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 449
    :goto_a
    return-void

    .line 446
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 447
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_a
.end method

.method private sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V
    .registers 6
    .parameter "r"
    .parameter "signalStrength"

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 457
    :goto_a
    return-void

    .line 454
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 455
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_a
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 461
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    :goto_32
    return-void

    .line 467
    :cond_33
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 468
    :try_start_36
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 469
    .local v2, recordCount:I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionInterfaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_190
    if-ge v0, v2, :cond_1c5

    .line 485
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 486
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_190

    .line 488
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_1c5
    monitor-exit v3

    goto/16 :goto_32

    .end local v0           #i:I
    .end local v2           #recordCount:I
    :catchall_1c8
    move-exception v4

    monitor-exit v3
    :try_end_1ca
    .catchall {:try_start_36 .. :try_end_1ca} :catchall_1c8

    throw v4
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 17
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 140
    if-eqz p3, :cond_ef

    .line 142
    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 144
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 146
    const/4 v5, 0x0

    .line 148
    .local v5, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_9
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 149
    .local v1, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_b2

    move-result v0

    .line 150
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    move-object v6, v5

    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_15
    if-ge v4, v0, :cond_9f

    .line 151
    :try_start_17
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_f7

    .line 152
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_1f
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v9, :cond_9a

    .line 162
    :goto_23
    iget v9, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int/2addr v9, p3

    and-int v7, p3, v9

    .line 163
    .local v7, send:I
    iput p3, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 164
    if-eqz p4, :cond_98

    .line 165
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_35

    .line 166
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v5, v9}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_b2

    .line 168
    :cond_35
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_49

    .line 170
    :try_start_39
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 171
    .local v3, gsmSignalStrength:I
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v10, 0x63

    if-ne v3, v10, :cond_b5

    const/4 v10, -0x1

    :goto_46
    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_49} :catch_b7

    .line 177
    .end local v3           #gsmSignalStrength:I
    :cond_49
    :goto_49
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_54

    .line 179
    :try_start_4d
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_bf

    .line 184
    :cond_54
    :goto_54
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_5f

    .line 186
    :try_start_58
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_c7

    .line 191
    :cond_5f
    :goto_5f
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_68

    .line 192
    :try_start_63
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {p0, v5, v9}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_b2

    .line 194
    :cond_68
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_75

    .line 196
    :try_start_6c
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_75} :catch_cf

    .line 201
    :cond_75
    :goto_75
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_82

    .line 203
    :try_start_79
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_82} :catch_d7

    .line 209
    :cond_82
    :goto_82
    and-int/lit16 v9, p3, 0x80

    if-eqz v9, :cond_8d

    .line 211
    :try_start_86
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8d} :catch_df

    .line 216
    :cond_8d
    :goto_8d
    and-int/lit16 v9, p3, 0x100

    if-eqz v9, :cond_98

    .line 218
    :try_start_91
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_98} :catch_e7

    .line 224
    :cond_98
    :goto_98
    :try_start_98
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_b2

    .line 228
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v4           #i:I
    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v7           #send:I
    :goto_99
    return-void

    .line 150
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_15

    .line 156
    :cond_9f
    :try_start_9f
    new-instance v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_f7

    .line 157
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_a5
    iput-object v1, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 158
    iput-object p2, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 159
    iput-object p1, v5, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 160
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 224
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v4           #i:I
    :catchall_b2
    move-exception v9

    :goto_b3
    monitor-exit v8
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_b2

    throw v9

    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #gsmSignalStrength:I
    .restart local v4       #i:I
    .restart local v7       #send:I
    :cond_b5
    move v10, v3

    .line 171
    goto :goto_46

    .line 173
    .end local v3           #gsmSignalStrength:I
    :catch_b7
    move-exception v9

    move-object v2, v9

    .line 174
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_b9
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_49

    .line 180
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_bf
    move-exception v9

    move-object v2, v9

    .line 181
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_54

    .line 187
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_c7
    move-exception v9

    move-object v2, v9

    .line 188
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_5f

    .line 197
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_cf
    move-exception v9

    move-object v2, v9

    .line 198
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_75

    .line 205
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_d7
    move-exception v9

    move-object v2, v9

    .line 206
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_82

    .line 212
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_df
    move-exception v9

    move-object v2, v9

    .line 213
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_8d

    .line 219
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_e7
    move-exception v9

    move-object v2, v9

    .line 220
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_ee
    .catchall {:try_start_b9 .. :try_end_ee} :catchall_b2

    goto :goto_98

    .line 226
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v4           #i:I
    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v7           #send:I
    :cond_ef
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_99

    .line 224
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_f7
    move-exception v9

    move-object v5, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_b3
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 8
    .parameter "cfi"

    .prologue
    .line 326
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 343
    :goto_8
    return-void

    .line 329
    :cond_9
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 331
    :try_start_24
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 332
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_2f
    if-ltz v1, :cond_52

    .line 333
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 334
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_4f

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_44

    .line 336
    :try_start_3f
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_47

    .line 332
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 337
    :catch_47
    move-exception v4

    move-object v0, v4

    .line 338
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_49
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_44

    .line 342
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4f
    move-exception v4

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    throw v4

    .restart local v1       #i:I
    :cond_52
    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    goto :goto_8
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 9
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 243
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 261
    :goto_8
    return-void

    .line 246
    :cond_9
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 247
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 248
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 249
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_19
    if-ltz v1, :cond_3c

    .line 250
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 251
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_39

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2e

    .line 253
    :try_start_29
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_39
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_31

    .line 249
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 254
    :catch_31
    move-exception v4

    move-object v0, v4

    .line 255
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_33
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2e

    .line 259
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_39

    throw v4

    .restart local v1       #i:I
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 7
    .parameter "cellLocation"

    .prologue
    .line 418
    const-string v2, "notifyCellLocation()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 430
    :goto_8
    return-void

    .line 421
    :cond_9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 422
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 423
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_17
    if-ltz v0, :cond_2d

    .line 424
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 425
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2a

    .line 426
    invoke-direct {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    .line 423
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 429
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_2d
    monitor-exit v2

    goto :goto_8

    .end local v0           #i:I
    :catchall_2f
    move-exception v3

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2f

    throw v3
.end method

.method public notifyDataActivity(I)V
    .registers 8
    .parameter "state"

    .prologue
    .line 346
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 362
    :goto_8
    return-void

    .line 349
    :cond_9
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 350
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 351
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_17
    if-ltz v1, :cond_3a

    .line 352
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 353
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_37

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2c

    .line 355
    :try_start_27
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2f

    .line 351
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 356
    :catch_2f
    move-exception v4

    move-object v0, v4

    .line 357
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_31
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2c

    .line 361
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_37
    move-exception v4

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_37

    throw v4

    .restart local v1       #i:I
    :cond_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    goto :goto_8
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 23
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "networkType"
    .parameter "gateway"

    .prologue
    .line 367
    const-string v3, "notifyDataConnection()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 394
    :goto_8
    return-void

    .line 370
    :cond_9
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnection: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isDataConnectivityPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " interfaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 374
    :try_start_58
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 375
    move/from16 v0, p2

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 376
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 378
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionApnTypes:[Ljava/lang/String;

    .line 379
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 380
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 381
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v12, v4, v5

    .local v12, i:I
    :goto_81
    if-ltz v12, :cond_a8

    .line 382
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 383
    .local v13, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_8d
    .catchall {:try_start_58 .. :try_end_8d} :catchall_a5

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_9a

    .line 385
    :try_start_91
    iget-object v4, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object v0, v4

    move v1, p1

    move/from16 v2, p7

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_a5
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9a} :catch_9d

    .line 381
    :cond_9a
    :goto_9a
    add-int/lit8 v12, v12, -0x1

    goto :goto_81

    .line 386
    :catch_9d
    move-exception v4

    move-object v11, v4

    .line 387
    .local v11, ex:Landroid/os/RemoteException;
    :try_start_9f
    iget-object v4, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_9a

    .line 391
    .end local v11           #ex:Landroid/os/RemoteException;
    .end local v12           #i:I
    .end local v13           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_a5
    move-exception v4

    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_a5

    throw v4

    .restart local v12       #i:I
    :cond_a8
    :try_start_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a5

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    .line 392
    invoke-direct/range {v3 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 397
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 415
    :goto_8
    return-void

    .line 414
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyMessageWaitingChanged(Z)V
    .registers 8
    .parameter "mwi"

    .prologue
    .line 306
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 323
    :goto_8
    return-void

    .line 309
    :cond_9
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 311
    :try_start_24
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 312
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_2f
    if-ltz v1, :cond_52

    .line 313
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 314
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_4f

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_44

    .line 316
    :try_start_3f
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_47

    .line 312
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 317
    :catch_47
    move-exception v4

    move-object v0, v4

    .line 318
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_49
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_44

    .line 322
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4f
    move-exception v4

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    throw v4

    .restart local v1       #i:I
    :cond_52
    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    goto :goto_8
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 264
    const-string v2, "notifyServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 278
    :goto_8
    return-void

    .line 267
    :cond_9
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 269
    :try_start_24
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 270
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_2f
    if-ltz v0, :cond_45

    .line 271
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 272
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    .line 273
    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    .line 270
    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 276
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_4a

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_8

    .line 276
    .end local v0           #i:I
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v3
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 9
    .parameter "signalStrength"

    .prologue
    .line 281
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 303
    :goto_8
    return-void

    .line 284
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 285
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 286
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_17
    if-ltz v2, :cond_4e

    .line 287
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 288
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2a

    .line 289
    invoke-direct {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V

    .line 291
    :cond_2a
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_4b

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3e

    .line 293
    :try_start_30
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 294
    .local v1, gsmSignalStrength:I
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_41

    const/4 v6, -0x1

    :goto_3b
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3e} :catch_43

    .line 286
    .end local v1           #gsmSignalStrength:I
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .restart local v1       #gsmSignalStrength:I
    :cond_41
    move v6, v1

    .line 294
    goto :goto_3b

    .line 296
    .end local v1           #gsmSignalStrength:I
    :catch_43
    move-exception v5

    move-object v0, v5

    .line 297
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_45
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3e

    .line 301
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4b
    move-exception v5

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4b

    throw v5

    .restart local v2       #i:I
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_8
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    .registers 6
    .parameter "r"
    .parameter "state"

    .prologue
    .line 437
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 441
    :goto_a
    return-void

    .line 438
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 439
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_a
.end method
