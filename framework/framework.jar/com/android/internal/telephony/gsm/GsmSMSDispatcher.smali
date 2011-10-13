.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 432
    packed-switch p1, :pswitch_data_0

    .line 441
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 436
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v21

    .line 302
    .local v21, ss:I
    if-eqz v21, :cond_1

    .line 303
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, count:I
    :goto_0
    if-ge v14, v11, :cond_7

    .line 304
    const/16 v20, 0x0

    .line 305
    .local v20, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_0

    .line 306
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    check-cast v20, Landroid/app/PendingIntent;

    .line 308
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v20

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v22

    .line 309
    .local v22, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 303
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 314
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 316
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    move v0, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 317
    .local v18, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 318
    .local v16, msgCount:I
    const/4 v9, 0x0

    .line 320
    .local v9, encoding:I
    sput v16, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 325
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v19, sb:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 327
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->getExtensionLanguage(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v13

    .line 330
    .local v13, extensionLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    if-eqz v13, :cond_5

    .line 331
    iput-object v13, v8, Lcom/android/internal/telephony/SmsHeader;->singleShiftLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .line 336
    :goto_2
    const/4 v14, 0x0

    :goto_3
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 337
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 338
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 339
    add-int/lit8 v4, v14, 0x1

    iput v4, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 340
    move/from16 v0, v16

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 341
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 342
    iput-object v10, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 344
    const/16 v20, 0x0

    .line 345
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_3

    .line 346
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    check-cast v20, Landroid/app/PendingIntent;

    .line 349
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v12, 0x0

    .line 350
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_4

    .line 351
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 354
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v12, :cond_6

    const/4 v4, 0x1

    move v7, v4

    :goto_4
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 357
    .local v17, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v15, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v4, "pdu"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v5, v0

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v20

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v22

    .line 362
    .restart local v22       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 336
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 333
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 354
    .restart local v10       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v4, 0x0

    move v7, v4

    goto :goto_4

    .line 364
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #encoding:I
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v13           #extensionLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .end local v16           #msgCount:I
    .end local v18           #refNumber:I
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 408
    :cond_0
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 413
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 415
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .parameter "smsb"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "GSM"

    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v5, 0x2

    .line 167
    :goto_0
    return v5

    .line 111
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v3, v0

    .line 112
    .local v3, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .line 114
    .local v1, handled:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    const-string v5, "GSM"

    const-string v5, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 118
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumberOfVoiceMessages()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(I)V

    .line 124
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 126
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    move v5, v7

    .line 137
    goto :goto_0

    :cond_3
    move v6, v8

    .line 126
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(I)V

    .line 130
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 132
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v6, v8

    goto :goto_3

    .line 140
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageAvailable:Z

    if-nez v5, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v5, v6, :cond_7

    .line 143
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 146
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 148
    .local v4, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v5, :cond_b

    .line 150
    :cond_8
    new-array v2, v7, [[B

    .line 151
    .local v2, pdus:[[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v5

    aput-object v5, v2, v8

    .line 153
    if-eqz v4, :cond_a

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v5, :cond_a

    .line 154
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-ne v5, v6, :cond_9

    .line 155
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v5

    goto/16 :goto_0

    .line 158
    :cond_9
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 164
    :goto_4
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 162
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4

    .line 167
    .end local v2           #pdus:[[B
    :cond_b
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v5

    goto/16 :goto_0
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 420
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 422
    return-void
.end method

.method protected handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 526
    const/4 v14, 0x0

    :try_start_0
    check-cast v14, [[B

    .line 527
    .local v14, pdus:[[B
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 530
    .local v16, receivedPdu:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 531
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "SMS CB pdu data: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .local v17, sb:Ljava/lang/StringBuilder;
    move v12, v9

    .local v12, j:I
    :goto_1
    add-int/lit8 v18, v9, 0x8

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 533
    aget-byte v18, v16, v12

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .line 534
    .local v3, b:I
    const/16 v18, 0x10

    move v0, v3

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 535
    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 539
    .end local v3           #b:I
    :cond_1
    const-string v18, "GSM"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    add-int/lit8 v9, v9, 0x8

    goto :goto_0

    .line 543
    .end local v12           #j:I
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 544
    .local v8, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v18, "gsm.operator.numeric"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 545
    .local v15, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 546
    .local v4, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v13

    .line 547
    .local v13, lac:I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 549
    .local v5, cid:I
    move-object v0, v8

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 551
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v6, v8, v15, v13, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 554
    .local v6, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #pdus:[[B
    check-cast v14, [[B

    .line 556
    .restart local v14       #pdus:[[B
    if-nez v14, :cond_3

    .line 559
    move-object v0, v8

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object v14, v0

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_3
    move-object v0, v8

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    aput-object v16, v14, v18

    .line 567
    const/4 v9, 0x0

    :goto_2
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 568
    aget-object v18, v14, v9

    if-nez v18, :cond_5

    .line 599
    .end local v4           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v5           #cid:I
    .end local v6           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9           #i:I
    .end local v13           #lac:I
    .end local v14           #pdus:[[B
    .end local v15           #plmn:Ljava/lang/String;
    .end local v16           #receivedPdu:[B
    :cond_4
    :goto_3
    return-void

    .line 567
    .restart local v4       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v5       #cid:I
    .restart local v6       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v8       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v9       #i:I
    .restart local v13       #lac:I
    .restart local v14       #pdus:[[B
    .restart local v15       #plmn:Ljava/lang/String;
    .restart local v16       #receivedPdu:[B
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 575
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .end local v6           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[B)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 589
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_7
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 590
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 592
    .local v10, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    invoke-virtual {v10, v15, v13, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_7

    .line 593
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 596
    .end local v4           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v5           #cid:I
    .end local v8           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9           #i:I
    .end local v10           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v13           #lac:I
    .end local v14           #pdus:[[B
    .end local v15           #plmn:Ljava/lang/String;
    .end local v16           #receivedPdu:[B
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 597
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v18, "GSM"

    const-string v19, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 578
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v4       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v5       #cid:I
    .restart local v8       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v9       #i:I
    .restart local v13       #lac:I
    .restart local v14       #pdus:[[B
    .restart local v15       #plmn:Ljava/lang/String;
    .restart local v16       #receivedPdu:[B
    :cond_8
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object v14, v0

    .line 579
    const/16 v18, 0x0

    aput-object v16, v14, v18
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 74
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 77
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 79
    .local v7, tpStatus:I
    if-eqz v6, :cond_2

    .line 80
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 81
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 82
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 83
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 85
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 86
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 89
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, fillIn:Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 92
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 101
    return-void

    .line 81
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 180
    if-eqz p7, :cond_0

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 182
    .local v6, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v1, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p6, p7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 183
    return-void

    .line 180
    .end local v6           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 174
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 175
    return-void
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    .line 388
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 390
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 394
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 395
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 397
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 400
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 219
    .local v9, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 220
    .local v17, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 221
    .local v15, msgCount:I
    const/4 v10, 0x0

    .line 223
    .local v10, encoding:I
    sput v15, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 228
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v18, sb:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v15, :cond_0

    .line 230
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->getExtensionLanguage(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v13

    .line 233
    .local v13, extensionLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    if-eqz v13, :cond_3

    .line 234
    iput-object v13, v9, Lcom/android/internal/telephony/SmsHeader;->singleShiftLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .line 235
    const/4 v10, 0x1

    .line 240
    :goto_1
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_5

    .line 241
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 242
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 243
    add-int/lit8 v5, v14, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 244
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 251
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 252
    iput-object v11, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 254
    const/16 v19, 0x0

    .line 255
    .local v19, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_1

    .line 256
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #sentIntent:Landroid/app/PendingIntent;
    check-cast v19, Landroid/app/PendingIntent;

    .line 259
    .restart local v19       #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v12, 0x0

    .line 260
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_2

    .line 261
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 264
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_2
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v12, :cond_4

    const/4 v5, 0x1

    move v8, v5

    :goto_3
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 267
    .local v16, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v19

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 237
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v19           #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v10, 0x3

    goto :goto_1

    .line 264
    .restart local v11       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v19       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v5, 0x0

    move v8, v5

    goto :goto_3

    .line 269
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v19           #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 368
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 370
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 371
    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 373
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 374
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 376
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->getExtensionLanguage(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v0

    .line 192
    .local v0, extensionLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    if-eq v0, v3, :cond_0

    .line 194
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    .end local v2           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 195
    .restart local v2       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    iput-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->lockingShiftLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .line 196
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->singleShiftLanguage:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .line 199
    :cond_0
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 202
    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v3, v4, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 203
    return-void

    .line 199
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "priority"

    .prologue
    .line 209
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 210
    return-void
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 427
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 429
    return-void
.end method
