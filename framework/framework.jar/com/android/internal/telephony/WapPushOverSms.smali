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
    .locals 1
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 51
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 14
    .parameter "pdu"

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, index:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-byte v12, p1, v4

    and-int/lit16 v11, v12, 0xff

    .line 68
    .local v11, transactionId:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-byte v12, p1, v5

    and-int/lit16 v9, v12, 0xff

    .line 69
    .local v9, pduType:I
    const/4 v2, 0x0

    .line 71
    .local v2, headerLength:I
    const/4 v12, 0x6

    if-eq v9, v12, :cond_0

    const/4 v12, 0x7

    if-eq v9, v12, :cond_0

    .line 74
    const/4 v12, 0x1

    .line 144
    :goto_0
    return v12

    .line 77
    :cond_0
    new-instance v12, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v12, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    iput-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 85
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 87
    const/4 v12, 0x2

    goto :goto_0

    .line 89
    :cond_1
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v12

    long-to-int v2, v12

    .line 90
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v12

    add-int/lit8 v4, v12, 0x2

    .line 92
    move v3, v4

    .line 106
    .local v3, headerStartIndex:I
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 108
    const/4 v12, 0x2

    goto :goto_0

    .line 111
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, mimeType:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v12

    add-int/2addr v4, v12

    .line 115
    new-array v1, v2, [B

    .line 116
    .local v1, header:[B
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {p1, v3, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    const-string v12, "application/vnd.wap.coc"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 122
    move-object v7, p1

    .line 129
    .local v7, intentData:[B
    :goto_1
    const-string v12, "application/vnd.wap.mms-message"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 130
    const-string v10, "android.permission.RECEIVE_MMS"

    .line 134
    .local v10, permission:Ljava/lang/String;
    :goto_2
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v12, "transactionId"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v12, "pduType"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v12, "header"

    invoke-virtual {v6, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 139
    const-string v12, "data"

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 140
    const-string v12, "contentTypeParameters"

    iget-object v13, p0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    iget-object v12, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v12, v6, v10}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 144
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 124
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #intentData:[B
    .end local v10           #permission:Ljava/lang/String;
    :cond_3
    add-int v0, v3, v2

    .line 125
    .local v0, dataIndex:I
    array-length v12, p1

    sub-int/2addr v12, v0

    new-array v7, v12, [B

    .line 126
    .restart local v7       #intentData:[B
    const/4 v12, 0x0

    array-length v13, v7

    invoke-static {p1, v0, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 132
    .end local v0           #dataIndex:I
    :cond_4
    const-string v10, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v10       #permission:Ljava/lang/String;
    goto :goto_2
.end method
