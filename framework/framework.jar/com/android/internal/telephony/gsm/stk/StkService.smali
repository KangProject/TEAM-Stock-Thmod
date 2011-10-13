.class public Lcom/android/internal/telephony/gsm/stk/StkService;
.super Landroid/os/Handler;
.source "StkService.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/stk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_ICC_REFRESH_RESET:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SIM_LOADED:I = 0x14

.field private static mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/gsm/SimCard;)V
    .locals 3
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 130
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 132
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 159
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 165
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {p0, p4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    sput-object p2, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForIccRefreshReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 186
    const-string v0, "StkService: is running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private eventDownload(IIIIZ)V
    .locals 8
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 471
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 474
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    .line 475
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 478
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 481
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 482
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 483
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 484
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 487
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 488
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 489
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 490
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 491
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->value()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 494
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 495
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 496
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 505
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 508
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 511
    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v7

    .line 512
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 514
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 517
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 559
    invoke-static {v0, v0, v0, v0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/gsm/SimCard;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/gsm/SimCard;)Lcom/android/internal/telephony/gsm/stk/StkService;
    .locals 7
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"

    .prologue
    const/4 v3, 0x0

    .line 531
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    if-nez v0, :cond_2

    .line 532
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v3

    .line 550
    :goto_0
    return-object v0

    .line 536
    :cond_1
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "Stk Telephony service"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 537
    .local v6, thread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 538
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/gsm/SimCard;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 539
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    .end local v6           #thread:Landroid/os/HandlerThread;
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    goto :goto_0

    .line 540
    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eq v0, p1, :cond_3

    .line 541
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "Reinitialize the Service with SIMRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    sput-object p1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 545
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 546
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 548
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 11
    .parameter "resMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 660
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v9, 0x0

    .line 664
    .local v9, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v7, 0x0

    .line 665
    .local v7, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v6

    .line 667
    .local v6, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 669
    :pswitch_0
    const/4 v7, 0x1

    .line 682
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v1, v6, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_2
    move-object v5, v9

    .line 734
    .end local v9           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .local v5, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :goto_2
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iget-boolean v3, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->includeAdditionalInfo:Z

    iget v4, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:I

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 735
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto :goto_0

    .line 684
    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v0, v1, :cond_2

    move v7, v2

    .line 685
    :goto_3
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v7, v5

    .line 684
    goto :goto_3

    .line 688
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;

    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;-><init>(I)V

    .line 689
    .end local v9           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_2

    .line 692
    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v8

    .line 693
    .local v8, input:Lcom/android/internal/telephony/gsm/stk/Input;
    iget-boolean v0, v8, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 696
    if-nez v7, :cond_1

    .line 697
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v1, v8, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    iget-boolean v2, v8, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .end local v9           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_2

    .line 701
    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    iget-boolean v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Z)V

    .line 704
    .end local v9           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_2

    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .end local v8           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    .restart local v9       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :pswitch_6
    move-object v5, v9

    .line 707
    .end local v9           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_2

    .line 709
    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 713
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto :goto_0

    .line 716
    :pswitch_8
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->eventValue:I

    const/16 v2, 0x82

    const/16 v3, 0x81

    iget v4, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->addedInfo:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(IIIIZ)V

    goto :goto_1

    .line 724
    :pswitch_9
    iput-boolean v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->includeAdditionalInfo:Z

    .line 725
    iput v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:I

    .line 729
    :pswitch_a
    const/4 v5, 0x0

    .line 730
    .end local v9           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_2

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 682
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private handleIccRefreshReset()V
    .locals 6

    .prologue
    .line 637
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .line 638
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 639
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V

    .line 640
    .local v2, cmdParams:Lcom/android/internal/telephony/gsm/stk/SelectItemParams;
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 643
    .local v1, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    const-string v4, "Sending NULL menu to uninstall STK menu"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.command"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "STK CMD"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 646
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 8
    .parameter "cmdParams"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 274
    .local v6, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 329
    const-string v0, "Unsupported command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 281
    :goto_1
    iget-boolean v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 332
    :cond_0
    :goto_2
    :pswitch_1
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 333
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.stk.command"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "STK CMD"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 279
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto :goto_1

    .line 285
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_2

    .line 292
    :pswitch_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_0

    .line 293
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_2

    .line 300
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    goto :goto_2

    .line 304
    :pswitch_4
    iget-boolean v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    if-eqz v0, :cond_3

    .line 305
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_2

    .line 308
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_2

    .line 313
    :pswitch_5
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_2

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 7
    .parameter "rilMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v6, 0x0

    .line 211
    .local v6, cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 256
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v0, v2, :cond_0

    .line 214
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 215
    .restart local v6       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v6, :cond_0

    .line 216
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 222
    .restart local v6       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v6, :cond_3

    .line 223
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v0, v2, :cond_2

    .line 224
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 240
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .line 241
    .local v1, lastCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    .line 242
    iput v3, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    .line 243
    iput v3, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 244
    iput v3, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    .line 245
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 250
    .end local v1           #lastCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_4
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 251
    .restart local v6       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v6, :cond_0

    .line 252
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 343
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 626
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    .line 633
    :goto_0
    return v1

    .line 629
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 630
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 631
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v4

    .line 633
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 428
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 432
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 439
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 440
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 441
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 446
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 447
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 448
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    if-eqz p2, :cond_0

    .line 452
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 453
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 454
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 460
    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .line 461
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 463
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 466
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 9
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v8, 0x2

    .line 354
    if-nez p1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 357
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 360
    .local v1, cmdInput:Lcom/android/internal/telephony/gsm/stk/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v6, :cond_1

    .line 361
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v1

    .line 365
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 366
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_2

    .line 367
    or-int/lit16 v5, v5, 0x80

    .line 369
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 370
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 372
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 373
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 377
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_3

    .line 378
    or-int/lit16 v5, v5, 0x80

    .line 380
    :cond_3
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 387
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    if-eqz p3, :cond_6

    move v3, v8

    .line 389
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 390
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 393
    if-eqz p3, :cond_4

    .line 394
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 398
    :cond_4
    if-eqz p5, :cond_7

    .line 399
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 416
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 417
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 388
    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_6
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .line 404
    .restart local v3       #length:I
    :cond_7
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v7

    if-ne v6, v7, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 406
    if-eqz v1, :cond_5

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    if-eqz v6, :cond_5

    .line 407
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 408
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 410
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method private validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z
    .locals 3
    .parameter "resMsg"

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, validResponse:Z
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x1

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z

    move-result v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 191
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForIccRefreshReset(Landroid/os/Handler;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSessionEnd(Landroid/os/Handler;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkProactiveCmd(Landroid/os/Handler;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvent(Landroid/os/Handler;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkCallSetUp(Landroid/os/Handler;)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 201
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 565
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 599
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized STK command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 570
    :sswitch_0
    const-string v3, "ril message arrived"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, data:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 573
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 574
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 576
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1           #data:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v1       #data:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {v4, v5, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 601
    .end local v1           #data:Ljava/lang/String;
    :goto_0
    :sswitch_1
    return-void

    .line 577
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 578
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 585
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #e:Ljava/lang/ClassCastException;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    new-instance v4, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    .line 590
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    .line 593
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto :goto_0

    .line 596
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleIccRefreshReset()V

    goto :goto_0

    .line 565
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0xa -> :sswitch_3
        0x14 -> :sswitch_1
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 604
    monitor-enter p0

    if-nez p1, :cond_0

    .line 610
    :goto_0
    monitor-exit p0

    return-void

    .line 608
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 604
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
