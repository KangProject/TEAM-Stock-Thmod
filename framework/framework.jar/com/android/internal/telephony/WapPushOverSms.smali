.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 4
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 54
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private dispatchWapPdu_DoCoMo_PF([BIILjava/lang/String;III)V
    .registers 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "appId"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 313
    new-array v1, p7, [B

    .line 314
    .local v1, header:[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, p6, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v0, contentTypeParaMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "unassigned/0x2f"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string v3, "contentTypeParameters"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    const-string v3, "header"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private dispatchWapPdu_MailPush([BIILjava/lang/String;I[BLjava/util/HashMap;III)V
    .registers 26
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "dataIndex"
    .parameter "sms"
    .parameter
    .parameter "appId"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p7, contentTypeParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    sub-int v12, v12, p5

    new-array v5, v12, [B

    .line 262
    .local v5, data:[B
    const/4 v12, 0x0

    array-length v13, v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v5

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v8, intent:Landroid/content/Intent;
    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v12, "transactionId"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v12, "pduType"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v12, "data"

    invoke-virtual {v8, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 270
    const v12, 0x905c

    move/from16 v0, p8

    move v1, v12

    if-ne v0, v1, :cond_96

    .line 271
    move/from16 v0, p10

    new-array v0, v0, [B

    move-object v7, v0

    .line 272
    .local v7, header:[B
    const/4 v12, 0x0

    array-length v13, v7

    move-object/from16 v0, p1

    move/from16 v1, p9

    move-object v2, v7

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    const-string v12, "header"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 275
    const-string v12, "applicationId"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v12, "jp.co.nttdocomo.carriermail"

    const-string v13, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v6, dummyIntent:Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v13, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v12, v6, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 283
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_95

    .line 284
    const-string v12, "WAP PUSH"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "call startService : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 307
    .end local v6           #dummyIntent:Landroid/content/Intent;
    .end local v7           #header:[B
    :cond_95
    :goto_95
    return-void

    .line 288
    :cond_96
    const-string v12, "contentTypeParameters"

    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    const/16 v12, 0x9

    move/from16 v0, p8

    move v1, v12

    if-ne v0, v1, :cond_d0

    .line 290
    if-eqz p6, :cond_be

    .line 291
    invoke-static/range {p6 .. p6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 292
    .local v9, smsMessage:Landroid/telephony/SmsMessage;
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v10

    .line 293
    .local v10, srcMps:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, strPpg:Ljava/lang/String;
    const-string v12, "mps"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v12, "ppg"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    .end local v9           #smsMessage:Landroid/telephony/SmsMessage;
    .end local v10           #srcMps:Ljava/lang/String;
    .end local v11           #strPpg:Ljava/lang/String;
    :cond_be
    const-string/jumbo v12, "wapAppID"

    move-object v0, v8

    move-object v1, v12

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    :goto_c8
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v13, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v12, v8, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_95

    .line 299
    :cond_d0
    move/from16 v0, p10

    new-array v0, v0, [B

    move-object v7, v0

    .line 300
    .restart local v7       #header:[B
    const/4 v12, 0x0

    array-length v13, v7

    move-object/from16 v0, p1

    move/from16 v1, p9

    move-object v2, v7

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    const-string v12, "header"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_c8
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 3
    .parameter "pdu"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B[B)I

    move-result v0

    return v0
.end method

.method public dispatchWapPdu([B[B)I
    .registers 36
    .parameter "pdu"
    .parameter "smsPdu"

    .prologue
    .line 84
    const/16 v27, 0x0

    .line 85
    .local v27, index:I
    add-int/lit8 v28, v27, 0x1

    .end local v27           #index:I
    .local v28, index:I
    aget-byte v5, p1, v27

    and-int/lit16 v7, v5, 0xff

    .line 86
    .local v7, transactionId:I
    add-int/lit8 v27, v28, 0x1

    .end local v28           #index:I
    .restart local v27       #index:I
    aget-byte v5, p1, v28

    and-int/lit16 v8, v5, 0xff

    .line 87
    .local v8, pduType:I
    const/4 v15, 0x0

    .line 89
    .local v15, headerLength:I
    const/4 v5, 0x6

    if-eq v8, v5, :cond_17

    const/4 v5, 0x7

    if-eq v8, v5, :cond_17

    .line 92
    const/4 v5, 0x1

    .line 253
    :goto_16
    return v5

    .line 95
    :cond_17
    new-instance v5, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 105
    const/4 v5, 0x2

    goto :goto_16

    .line 107
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v15, v5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/lit8 v27, v5, 0x2

    .line 110
    move/from16 v14, v27

    .line 124
    .local v14, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 126
    const/4 v5, 0x2

    goto :goto_16

    .line 129
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v27, v27, v5

    .line 133
    move v0, v15

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 134
    .local v26, header:[B
    const/4 v5, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v14

    move-object/from16 v2, v26

    move v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v10, 0x0

    .line 140
    .local v10, dataIndex:I
    const-string v5, "application/vnd.wap.coc"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 141
    move-object/from16 v30, p1

    .line 148
    .local v30, intentData:[B
    :goto_8e
    const-string v5, "application/vnd.wap.mms-message"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_128

    .line 149
    const-string v31, "android.permission.RECEIVE_MMS"

    .line 154
    .local v31, permission:Ljava/lang/String;
    :goto_98
    const-string v5, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 155
    move/from16 v25, v27

    .line 156
    .local v25, appIdIndex:I
    const/4 v13, 0x0

    .line 158
    .local v13, binaryAppId:I
    move/from16 v0, v25

    move v1, v10

    if-ge v0, v1, :cond_f6

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeWellKnownFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    const-wide/16 v11, 0x2f

    cmp-long v5, v5, v11

    if-nez v5, :cond_f6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v25, v25, v5

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    .line 167
    .local v24, appID:Ljava/lang/String;
    if-eqz v24, :cond_13c

    .line 168
    const-string v5, "X-Wap-Application-ID:x-wap-application:emn.ua"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 169
    const/16 v13, 0x9

    .line 197
    .end local v24           #appID:Ljava/lang/String;
    :cond_f6
    :goto_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MailPush([BIILjava/lang/String;I[BLjava/util/HashMap;III)V

    .line 253
    .end local v10           #dataIndex:I
    .end local v13           #binaryAppId:I
    .end local v25           #appIdIndex:I
    :goto_108
    const/4 v5, -0x1

    goto/16 :goto_16

    .line 143
    .end local v30           #intentData:[B
    .end local v31           #permission:Ljava/lang/String;
    .restart local v10       #dataIndex:I
    :cond_10b
    add-int v10, v14, v15

    .line 144
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int/2addr v5, v10

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 145
    .restart local v30       #intentData:[B
    const/4 v5, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v10

    move-object/from16 v2, v30

    move v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8e

    .line 151
    :cond_128
    const-string v31, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v31       #permission:Ljava/lang/String;
    goto/16 :goto_98

    .line 170
    .restart local v13       #binaryAppId:I
    .restart local v24       #appID:Ljava/lang/String;
    .restart local v25       #appIdIndex:I
    :cond_12c
    const-string/jumbo v5, "x-oma-docomo:xmd.mail.ua"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 171
    const v13, 0x905c

    goto :goto_f6

    .line 174
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v13, v5

    goto :goto_f6

    .line 178
    .end local v24           #appID:Ljava/lang/String;
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenTextFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-Wap-Application-Id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v25, v25, v5

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    .line 185
    .restart local v24       #appID:Ljava/lang/String;
    if-eqz v24, :cond_f6

    .line 186
    const-string v5, "X-Wap-Application-ID:x-wap-application:emn.ua"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_199

    .line 187
    const/16 v13, 0x9

    goto/16 :goto_f6

    .line 188
    :cond_199
    const-string/jumbo v5, "x-oma-docomo:xmd.mail.ua"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 189
    const v13, 0x905c

    goto/16 :goto_f6

    .line 200
    .end local v13           #binaryAppId:I
    .end local v24           #appID:Ljava/lang/String;
    .end local v25           #appIdIndex:I
    :cond_1aa
    const-string v5, "application/vnd.docomo.pf"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_280

    .line 201
    move/from16 v25, v27

    .line 202
    .restart local v25       #appIdIndex:I
    const/4 v13, 0x0

    .line 204
    .restart local v13       #binaryAppId:I
    move/from16 v0, v25

    move v1, v10

    if-ge v0, v1, :cond_20a

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeWellKnownFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_22a

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    const-wide/16 v10, 0x2f

    cmp-long v5, v5, v10

    if-nez v5, :cond_20a

    .line 210
    .end local v10           #dataIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v25, v25, v5

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    .line 213
    .restart local v24       #appID:Ljava/lang/String;
    if-eqz v24, :cond_21f

    .line 214
    const-string/jumbo v5, "x-oma-docomo:sp.mail.ua"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 215
    const v13, 0x9056

    .end local v24           #appID:Ljava/lang/String;
    :cond_20a
    :goto_20a
    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v15

    .line 240
    invoke-direct/range {v16 .. v23}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DoCoMo_PF([BIILjava/lang/String;III)V

    goto/16 :goto_108

    .line 218
    .restart local v24       #appID:Ljava/lang/String;
    :cond_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v13, v5

    goto :goto_20a

    .line 222
    .end local v24           #appID:Ljava/lang/String;
    .restart local v10       #dataIndex:I
    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenTextFieldName(I)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v32

    .line 225
    .local v32, tokenTextFieldName:Ljava/lang/String;
    const-string v5, "X-Wap-Application-Id"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int v25, v25, v5

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    .line 230
    .restart local v24       #appID:Ljava/lang/String;
    if-eqz v24, :cond_20a

    .line 231
    const-string/jumbo v5, "x-oma-docomo:sp.mail.ua"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 232
    const v13, 0x9056

    goto :goto_20a

    .line 242
    .end local v13           #binaryAppId:I
    .end local v24           #appID:Ljava/lang/String;
    .end local v25           #appIdIndex:I
    .end local v32           #tokenTextFieldName:Ljava/lang/String;
    :cond_280
    new-instance v29, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v29, intent:Landroid/content/Intent;
    move-object/from16 v0, v29

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v5, "transactionId"

    move-object/from16 v0, v29

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v5, "pduType"

    move-object/from16 v0, v29

    move-object v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v5, "header"

    move-object/from16 v0, v29

    move-object v1, v5

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 247
    const-string v5, "data"

    move-object/from16 v0, v29

    move-object v1, v5

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 248
    const-string v5, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_108
.end method
