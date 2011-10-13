.class public final Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field private static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState; = null

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SIM"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field mHandlerThread:Landroid/os/HandlerThread;

.field mNetworkType:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field nextCallFailCause:I

.field pausedResponseCount:I

.field pausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    .line 89
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    .line 96
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SimulatedCommands"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 100
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 102
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 103
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 105
    const-string v1, "1234"

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 108
    const-string v1, "5678"

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 109
    return-void

    :cond_0
    move v1, v3

    .line 104
    goto :goto_0

    :cond_1
    move v1, v3

    .line 107
    goto :goto_1
.end method

.method private isSimLocked()Z
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v0, v1, :cond_0

    .line 1024
    const/4 v0, 0x1

    .line 1026
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "result"
    .parameter "tr"

    .prologue
    .line 1359
    if-eqz p1, :cond_0

    .line 1360
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1361
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .parameter "result"
    .parameter "ret"

    .prologue
    .line 1348
    if-eqz p1, :cond_0

    .line 1349
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1350
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private unimplemented(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1339
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 706
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 707
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1050
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1051
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1046
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1047
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1207
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 327
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 328
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 284
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 286
    if-eqz p3, :cond_0

    .line 287
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 288
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    if-eqz p3, :cond_0

    .line 295
    const-string v1, "SIM"

    const-string v2, "[SimCmd] changeIccPin: pin failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 299
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 300
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 305
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 307
    if-eqz p3, :cond_0

    .line 308
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 309
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-eqz p3, :cond_0

    .line 316
    const-string v1, "SIM"

    const-string v2, "[SimCmd] changeIccPin2: pin2 failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 320
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 321
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 650
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 651
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 973
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 978
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 950
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete RUIM message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 952
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 945
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 947
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 498
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 515
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 670
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 671
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1475
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1169
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1172
    const-string v0, "SimulatedCommands"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1173
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1378
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1380
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1466
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 463
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 480
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1372
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1374
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 874
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 876
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 877
    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 878
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 879
    const/4 v1, 0x3

    const-string v2, "2"

    aput-object v2, v0, v1

    .line 881
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 882
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1488
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1489
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 536
    const-string v0, "012345678901234"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 547
    const-string v0, "99"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 525
    const-string v0, "012345678901234"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 115
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 740
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 742
    .local v0, ret:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    aput v2, v0, v1

    .line 743
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 756
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 751
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x7

    .line 993
    new-array v1, v4, [I

    .line 995
    .local v1, ret:[I
    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 996
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 997
    aput v0, v1, v0

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1000
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1158
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1160
    .local v0, ret:[I
    aput v2, v0, v2

    .line 1161
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1162
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 891
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 893
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "El Telco Loco"

    aput-object v2, v0, v1

    .line 894
    const/4 v1, 0x1

    const-string v2, "Telco Loco"

    aput-object v2, v0, v1

    .line 895
    const/4 v1, 0x2

    const-string v2, "001001"

    aput-object v2, v0, v1

    .line 897
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    .line 470
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 986
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 988
    .local v0, ret:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    aput v2, v0, v1

    .line 989
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 990
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1404
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1406
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 836
    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/String;

    .line 838
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 839
    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 840
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 841
    const/4 v1, 0x3

    aput-object v3, v0, v1

    .line 842
    const/4 v1, 0x4

    aput-object v3, v0, v1

    .line 843
    const/4 v1, 0x5

    aput-object v3, v0, v1

    .line 844
    const/4 v1, 0x6

    aput-object v3, v0, v1

    .line 845
    const/4 v1, 0x7

    aput-object v3, v0, v1

    .line 846
    const/16 v1, 0x8

    aput-object v3, v0, v1

    .line 847
    const/16 v1, 0x9

    aput-object v3, v0, v1

    .line 848
    const/16 v1, 0xa

    aput-object v3, v0, v1

    .line 849
    const/16 v1, 0xb

    aput-object v3, v0, v1

    .line 850
    const/16 v1, 0xc

    aput-object v3, v0, v1

    .line 851
    const/16 v1, 0xd

    aput-object v3, v0, v1

    .line 853
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 854
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 770
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 772
    .local v0, ret:[I
    const/16 v1, 0x17

    aput v1, v0, v2

    .line 773
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 775
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 776
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1008
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 1
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 826
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 5
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    const-string v4, "GSM"

    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x31

    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 566
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 567
    const-string v1, "GSM"

    const-string v1, "[SimCmd] hangupConnection: resultFail"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 573
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v1, "GSM"

    const-string v1, "[SimCmd] hangupConnection: resultSuccess"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 607
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 609
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 610
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 588
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 589
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1060
    invoke-direct {p0, p9}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1061
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1216
    if-eqz p2, :cond_0

    .line 1217
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1218
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1220
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1224
    if-eqz p2, :cond_0

    .line 1225
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1226
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1228
    :cond_0
    return-void
.end method

.method public pauseResponses()V
    .locals 1

    .prologue
    .line 1315
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    .line 1316
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1244
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1251
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x4

    .line 796
    new-array v0, v2, [I

    .line 798
    .local v0, ret:[I
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 799
    const/4 v1, 0x1

    aput v3, v0, v1

    .line 800
    aput v4, v0, v3

    .line 801
    aput v2, v0, v4

    .line 803
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "result"

    .prologue
    .line 1138
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1107
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1108
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1389
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1391
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "pin"
    .parameter "serviceClass"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "SIM"

    .line 352
    if-eqz p1, :cond_3

    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    if-eqz p4, :cond_0

    .line 355
    new-array v0, v2, [I

    .line 356
    .local v0, r:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    aput v1, v0, v3

    .line 357
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] queryFacilityLock: SIM is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    if-nez v2, :cond_2

    const-string/jumbo v2, "unlocked"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 360
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 377
    .end local v0           #r:[I
    :cond_0
    :goto_2
    return-void

    .restart local v0       #r:[I
    :cond_1
    move v1, v3

    .line 356
    goto :goto_0

    .line 357
    :cond_2
    const-string v2, "locked"

    goto :goto_1

    .line 363
    .end local v0           #r:[I
    :cond_3
    if-eqz p1, :cond_6

    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    if-eqz p4, :cond_0

    .line 366
    new-array v0, v2, [I

    .line 367
    .restart local v0       #r:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    aput v1, v0, v3

    .line 368
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] queryFacilityLock: FDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    if-nez v2, :cond_5

    const-string v2, "disabled"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 371
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_4
    move v1, v3

    .line 367
    goto :goto_3

    .line 368
    :cond_5
    const-string v2, "enabled"

    goto :goto_4

    .line 376
    .end local v0           #r:[I
    :cond_6
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1439
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1441
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 724
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 725
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1015
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1016
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1019
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1020
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1212
    return-void
.end method

.method public resumeResponses()V
    .locals 4

    .prologue
    .line 1320
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    .line 1322
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-nez v2, :cond_1

    .line 1323
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1324
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1330
    .end local v0           #i:I
    .end local v1           #s:I
    :goto_1
    return-void

    .line 1328
    :cond_1
    const-string v2, "GSM"

    const-string v3, "SimulatedCommands.resumeResponses < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 933
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 934
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1447
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1449
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 2
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1455
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .parameter "c"
    .parameter "result"

    .prologue
    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 907
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 817
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 818
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 942
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 811
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "ussdString"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const-string v2, "0"

    .line 1192
    const-string v0, "#646#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1196
    const-string v0, "0"

    const-string v0, "You have NNN minutes remaining."

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1200
    const-string v0, "0"

    const-string v0, "All Done"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 4
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 685
    add-int/lit8 v2, p1, 0x30

    int-to-char v0, v2

    .line 686
    .local v0, ch:C
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v3, 0x32

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v1

    .line 688
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 689
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 1259
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "result"

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 786
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1096
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "result"

    .prologue
    .line 1127
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1118
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1119
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1459
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1461
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1469
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1471
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 2
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1394
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1396
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 2
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1384
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1386
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .parameter "facility"
    .parameter "lockEnabled"
    .parameter "pin"
    .parameter "serviceClass"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const-string v3, "SIM"

    .line 388
    if-eqz p1, :cond_2

    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin is valid"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 394
    if-eqz p5, :cond_0

    .line 395
    invoke-static {p5, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 396
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    if-eqz p5, :cond_0

    .line 403
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 407
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 408
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 412
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_2
    if-eqz p1, :cond_4

    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin2 is valid"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 418
    if-eqz p5, :cond_0

    .line 419
    invoke-static {p5, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 420
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 426
    :cond_3
    if-eqz p5, :cond_0

    .line 427
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin2 failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 431
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 432
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 438
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_4
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1479
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1480
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1484
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1485
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1003
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1004
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enableMute"
    .parameter "result"

    .prologue
    .line 758
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelection(Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$SelectionMode;Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "mode"
    .parameter "rat"
    .parameter "result"

    .prologue
    .line 1147
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "result"

    .prologue
    .line 1143
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .parameter "gsmCause"

    .prologue
    .line 1268
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    .line 1269
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 1264
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1400
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .parameter "networkType"
    .parameter "result"

    .prologue
    .line 981
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    .line 982
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 983
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1409
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1411
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .parameter "on"
    .parameter "result"

    .prologue
    .line 1030
    if-eqz p1, :cond_1

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] setRadioPower: SIM locked! state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1042
    :goto_0
    return-void

    .line 1037
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 1040
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1011
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1012
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 334
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "SIM"

    const-string v1, "Supp Service Notifications already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 339
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1424
    const-string v0, "SIM"

    const-string v1, "Not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1426
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    .line 970
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 971
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 965
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 966
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1293
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1294
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1295
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1298
    :cond_0
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 1
    .parameter "c"
    .parameter "result"

    .prologue
    .line 915
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 916
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 925
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_1

    .line 119
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 123
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 124
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 157
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 132
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 136
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 142
    :cond_2
    if-eqz p2, :cond_0

    .line 143
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 145
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 148
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 152
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 154
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 155
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_1

    .line 203
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 207
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 208
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 240
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin2: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 215
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 219
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 225
    :cond_2
    if-eqz p2, :cond_0

    .line 226
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 228
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 231
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 235
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 237
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 238
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_1

    .line 161
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 165
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 166
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 199
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "12345678"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 173
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 174
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 176
    if-eqz p3, :cond_0

    .line 177
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 178
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 184
    :cond_2
    if-eqz p3, :cond_0

    .line 185
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 187
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_3

    .line 190
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 194
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 196
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 197
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_1

    .line 244
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 248
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 249
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 281
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "87654321"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk2: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 258
    if-eqz p3, :cond_0

    .line 259
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 260
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 266
    :cond_2
    if-eqz p3, :cond_0

    .line 267
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 269
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_3

    .line 272
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 276
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 278
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 279
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 442
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 443
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 630
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 631
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public triggerHangupAll()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1306
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1282
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1275
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1311
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "message"

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 1183
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1184
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1186
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1238
    return-void
.end method

.method public triggerSsn(II)V
    .locals 4
    .parameter "type"
    .parameter "code"

    .prologue
    const/4 v3, 0x0

    .line 1285
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1286
    .local v0, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1287
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1289
    return-void
.end method

.method public validateAndStoreAuthenticationKey(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "akey"
    .parameter "response"

    .prologue
    .line 1492
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1493
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 960
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to RUIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 962
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 955
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to SIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 957
    return-void
.end method
