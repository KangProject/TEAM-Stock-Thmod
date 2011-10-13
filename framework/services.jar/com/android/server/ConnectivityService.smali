.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$ConnectivityThread;,
        Lcom/android/server/ConnectivityService$RadioAttributes;,
        Lcom/android/server/ConnectivityService$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final ALLOW_MMS_WHEN_DATA_OFF:Ljava/lang/String; = "allow_mms_when_data_off"

.field private static final DBG:Z = false

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_SET_BACKGROUND_DATA:I = 0x6a

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mContext:Landroid/content/Context;

.field private mDefaultConnectionSequence:I

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mFeatureUsers:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPriorityList:[I

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 32
    .parameter "context"

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 76
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 98
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 100
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 101
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 102
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 103
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "android_id"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, id:Ljava/lang/String;
    if-eqz v9, :cond_5c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_5c

    .line 266
    new-instance v26, Ljava/lang/String;

    const-string v27, "android_"

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 267
    .local v17, name:Ljava/lang/String;
    const-string v26, "net.hostname"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v17           #name:Ljava/lang/String;
    :cond_5c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 271
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [Landroid/net/NetworkStateTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 273
    new-instance v26, Lcom/android/server/ConnectivityService$MyHandler;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 277
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 278
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x107000b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 283
    .local v23, raStrings:[Ljava/lang/String;
    move-object/from16 v5, v23

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_b8
    if-ge v8, v12, :cond_12e

    aget-object v22, v5, v8

    .line 284
    .local v22, raString:Ljava/lang/String;
    new-instance v21, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v21 .. v22}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 285
    .local v21, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_f0

    .line 286
    const-string v26, "ConnectivityService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_ed
    add-int/lit8 v8, v8, 0x1

    goto :goto_b8

    .line 289
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    if-eqz v26, :cond_11f

    .line 290
    const-string v26, "ConnectivityService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 294
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v27, v0

    aput-object v21, v26, v27

    goto :goto_ed

    .line 297
    .end local v21           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v22           #raString:Ljava/lang/String;
    :cond_12e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x107000a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 299
    .local v16, naStrings:[Ljava/lang/String;
    move-object/from16 v5, v16

    array-length v12, v5

    const/4 v8, 0x0

    :goto_13d
    if-ge v8, v12, :cond_1fb

    aget-object v15, v5, v8

    .line 301
    .local v15, naString:Ljava/lang/String;
    :try_start_141
    new-instance v13, Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-direct {v13, v15}, Lcom/android/server/ConnectivityService$NetworkAttributes;-><init>(Ljava/lang/String;)V

    .line 302
    .local v13, n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_173

    .line 303
    const-string v26, "ConnectivityService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :goto_170
    add-int/lit8 v8, v8, 0x1

    goto :goto_13d

    .line 307
    .restart local v13       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v26, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    if-eqz v26, :cond_1a2

    .line 308
    const-string v26, "ConnectivityService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_170

    .line 319
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :catch_1a0
    move-exception v26

    goto :goto_170

    .line 312
    .restart local v13       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v26, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    if-nez v26, :cond_1de

    .line 313
    const-string v26, "ConnectivityService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " in network type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_170

    .line 317
    :cond_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v26, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v27, v0

    aput-object v13, v26, v27

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_1f9} :catch_1a0

    goto/16 :goto_170

    .line 325
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .end local v15           #naString:Ljava/lang/String;
    :cond_1fb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v26, v0

    const/16 v27, 0x1

    sub-int v10, v26, v27

    .line 328
    .local v10, insertionPoint:I
    const/4 v6, 0x0

    .line 329
    .local v6, currentLowest:I
    const/16 v19, 0x0

    .line 330
    .end local v5           #arr$:[Ljava/lang/String;
    .local v19, nextLowest:I
    :goto_21a
    const/16 v26, -0x1

    move v0, v10

    move/from16 v1, v26

    if-le v0, v1, :cond_274

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object v5, v0

    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    array-length v12, v5

    const/4 v8, 0x0

    move v11, v10

    .end local v10           #insertionPoint:I
    .local v11, insertionPoint:I
    :goto_229
    if-ge v8, v12, :cond_26e

    aget-object v14, v5, v8

    .line 332
    .local v14, na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    if-nez v14, :cond_234

    move v10, v11

    .line 331
    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    :goto_230
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto :goto_229

    .line 333
    :cond_234
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v6

    if-ge v0, v1, :cond_240

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_230

    .line 334
    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :cond_240
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v6

    if-le v0, v1, :cond_25e

    .line 335
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v19

    if-lt v0, v1, :cond_257

    if-nez v19, :cond_418

    .line 336
    :cond_257
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v19, v0

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_230

    .line 340
    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :cond_25e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v26, v0

    add-int/lit8 v10, v11, -0x1

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v27, v0

    aput v27, v26, v11

    goto :goto_230

    .line 342
    .end local v10           #insertionPoint:I
    .end local v14           #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v11       #insertionPoint:I
    :cond_26e
    move/from16 v6, v19

    .line 343
    const/16 v19, 0x0

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_21a

    .line 347
    .end local v5           #arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_274
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    .local v5, arr$:[I
    array-length v12, v5

    const/4 v8, 0x0

    :goto_289
    if-ge v8, v12, :cond_29d

    aget v7, v5, v8

    .line 349
    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    aput-object v27, v26, v7

    .line 348
    add-int/lit8 v8, v8, 0x1

    goto :goto_289

    .line 352
    .end local v7           #i:I
    :cond_29d
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 354
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 356
    const-string v26, "cm.test.mode"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "true"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_323

    const-string v26, "ro.build.type"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "eng"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_323

    const/16 v26, 0x1

    :goto_2ce
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v26

    if-nez v26, :cond_326

    const/16 v26, 0x1

    move/from16 v20, v26

    .line 366
    .local v20, noMobileData:Z
    :goto_2de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    array-length v12, v5

    const/4 v8, 0x0

    :goto_2e5
    if-ge v8, v12, :cond_3a6

    aget v18, v5, v8

    .line 367
    .local v18, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_41c

    .line 388
    const-string v26, "ConnectivityService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v28, v0

    aget-object v28, v28, v18

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_320
    :goto_320
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e5

    .line 356
    .end local v18           #netType:I
    .end local v20           #noMobileData:Z
    :cond_323
    const/16 v26, 0x0

    goto :goto_2ce

    .line 365
    :cond_326
    const/16 v26, 0x0

    move/from16 v20, v26

    goto :goto_2de

    .line 370
    .restart local v18       #netType:I
    .restart local v20       #noMobileData:Z
    :pswitch_32b
    new-instance v25, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 371
    .local v25, wst:Landroid/net/wifi/WifiStateTracker;
    new-instance v24, Lcom/android/server/WifiService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    .line 372
    .local v24, wifiService:Lcom/android/server/WifiService;
    const-string v26, "wifi"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 373
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WifiService;->startWifi()V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aput-object v25, v26, v27

    .line 375
    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiStateTracker;->startMonitoring()V

    goto :goto_320

    .line 379
    .end local v24           #wifiService:Lcom/android/server/WifiService;
    .end local v25           #wst:Landroid/net/wifi/WifiStateTracker;
    :pswitch_361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v26, v0

    new-instance v27, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v29, v0

    aget-object v29, v29, v18

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v18

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V

    aput-object v27, v26, v18

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 382
    if-eqz v20, :cond_320

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v26, v0

    aget-object v26, v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_320

    .line 394
    .end local v18           #netType:I
    :cond_3a6
    new-instance v26, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    aget-object v26, v26, v27

    if-nez v26, :cond_3d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering;->isDunRequired()Z

    move-result v26

    if-nez v26, :cond_415

    :cond_3d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_415

    :cond_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceRegexs()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_415

    const/16 v26, 0x1

    :goto_40e
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 404
    return-void

    .line 395
    :cond_415
    const/16 v26, 0x0

    goto :goto_40e

    .end local v10           #insertionPoint:I
    .end local v20           #noMobileData:Z
    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v11       #insertionPoint:I
    .restart local v14       #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_418
    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto/16 :goto_230

    .line 367
    nop

    :pswitch_data_41c
    .packed-switch 0x0
        :pswitch_361
        :pswitch_32b
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ConnectivityService;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetBackgroundData(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleScanResultsAvailable(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method private bumpDns()V
    .registers 6

    .prologue
    const-string v4, "net.dnschange"

    .line 1425
    const-string v2, "net.dnschange"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1426
    .local v1, propVal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1427
    .local v0, n:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    .line 1429
    :try_start_f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_2e

    move-result v0

    .line 1432
    :cond_13
    :goto_13
    const-string v2, "net.dnschange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    return-void

    .line 1430
    :catch_2e
    move-exception v2

    goto :goto_13
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method private enforcePreference()V
    .registers 4

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 478
    :cond_10
    return-void

    .line 464
    :cond_11
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 467
    const/4 v0, 0x0

    .local v0, t:I
    :goto_1e
    const/4 v1, 0x1

    if-gt v0, v1, :cond_10

    .line 468
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_40

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 475
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 467
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method private enforceTetherChangePermission()V
    .registers 4

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;
    .registers 2
    .parameter "context"

    .prologue
    .line 256
    invoke-static {p0}, Lcom/android/server/ConnectivityService$ConnectivityThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method private getNumConnectedNetworks()I
    .registers 7

    .prologue
    .line 959
    const/4 v4, 0x0

    .line 961
    .local v4, numConnectedNets:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v2, :cond_20

    aget-object v3, v0, v1

    .line 962
    .local v3, nt:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 964
    add-int/lit8 v4, v4, 0x1

    .line 961
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 967
    .end local v3           #nt:Landroid/net/NetworkStateTracker;
    :cond_20
    return v4
.end method

.method private getPersistedNetworkPreference()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 442
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 444
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 446
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_11

    move v2, v1

    .line 450
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x1

    goto :goto_10
.end method

.method private getPrio(I)I
    .registers 4
    .parameter "networkType"

    .prologue
    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 827
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_e

    move v1, v0

    .line 833
    :goto_d
    return v1

    .line 826
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 833
    :cond_11
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v1, v1

    goto :goto_d
.end method

.method private getRestoreDefaultNetworkDelay()I
    .registers 3

    .prologue
    .line 1469
    const-string v1, "android.telephony.apn-restore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 1474
    :try_start_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_15} :catch_17

    move-result v1

    .line 1478
    :goto_16
    return v1

    .line 1475
    :catch_17
    move-exception v1

    .line 1478
    :cond_18
    const v1, 0xea60

    goto :goto_16
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .registers 9
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 1257
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1260
    .local v3, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 1261
    .local v0, isFailover:Z
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v4, v3

    .line 1265
    .local v2, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1266
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v4, v3, :cond_57

    .line 1267
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v3, v4, :cond_34

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    if-gt v4, v5, :cond_3a

    :cond_34
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, v5, :cond_3e

    .line 1274
    :cond_3a
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1306
    :goto_3d
    return-void

    .line 1278
    :cond_3e
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v4, v5

    .line 1283
    .local v1, otherNet:Landroid/net/NetworkStateTracker;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1284
    const-string v4, "ConnectivityService"

    const-string v5, "Network declined teardown request"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1287
    :cond_52
    if-eqz v0, :cond_57

    .line 1288
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->releaseWakeLock()V

    .line 1292
    .end local v1           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_57
    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1296
    iput v6, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1297
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 1298
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1302
    :cond_63
    invoke-virtual {v2, v6}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1303
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    .line 1304
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_3d
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .registers 14
    .parameter "info"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "noConnectivity"

    .line 1178
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1180
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v3, :cond_bc

    .line 1185
    const-string v4, "."

    .line 1189
    .local v4, reasonText:Ljava/lang/String;
    :goto_1b
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_58

    .line 1194
    const-string v6, "noConnectivity"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1196
    :cond_58
    if-eqz v3, :cond_5f

    .line 1197
    const-string v6, "reason"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    :cond_5f
    if-eqz v0, :cond_66

    .line 1200
    const-string v6, "extraInfo"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    :cond_66
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1203
    const-string v6, "isFailover"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1204
    invoke-virtual {p1, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1207
    :cond_74
    const/4 v2, 0x0

    .line 1208
    .local v2, newNet:Landroid/net/NetworkStateTracker;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 1209
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->tryFailover(I)Landroid/net/NetworkStateTracker;

    move-result-object v2

    .line 1210
    if-eqz v2, :cond_d7

    .line 1211
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1212
    .local v5, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_99

    .line 1216
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1218
    :cond_99
    const-string v6, "otherNetwork"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1225
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_9e
    :goto_9e
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1226
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1231
    if-eqz v2, :cond_bb

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 1232
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1234
    :cond_bb
    return-void

    .line 1187
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #newNet:Landroid/net/NetworkStateTracker;
    .end local v4           #reasonText:Ljava/lang/String;
    :cond_bc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #reasonText:Ljava/lang/String;
    goto/16 :goto_1b

    .line 1220
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #newNet:Landroid/net/NetworkStateTracker;
    :cond_d7
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1221
    const-string v6, "noConnectivity"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9e
.end method

.method private handleConnectivityChange(I)V
    .registers 3
    .parameter "netType"

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    if-nez v0, :cond_16

    .line 1367
    :goto_15
    return-void

    .line 1354
    :cond_16
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1355
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1356
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    goto :goto_15

    .line 1358
    :cond_36
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes()V

    goto :goto_15

    .line 1361
    :cond_3e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1362
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    goto :goto_15

    .line 1364
    :cond_50
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes()V

    goto :goto_15
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .registers 14
    .parameter "info"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "noConnectivity"

    .line 1004
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 1006
    .local v5, prevNetType:I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-virtual {v7, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1013
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v7

    if-nez v7, :cond_34

    .line 1014
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v4, v7, v5

    .line 1015
    .local v4, pids:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_34

    .line 1016
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1020
    .local v3, pid:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v9}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1024
    .end local v0           #i:I
    .end local v3           #pid:Ljava/lang/Integer;
    .end local v4           #pids:Ljava/util/List;
    :cond_34
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "networkInfo"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1026
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1027
    const-string v7, "isFailover"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p1, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1030
    :cond_4e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5d

    .line 1031
    const-string v7, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    :cond_5d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6c

    .line 1034
    const-string v7, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    :cond_6c
    const/4 v2, 0x0

    .line 1039
    .local v2, newNet:Landroid/net/NetworkStateTracker;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 1040
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->tryFailover(I)Landroid/net/NetworkStateTracker;

    move-result-object v2

    .line 1041
    if-eqz v2, :cond_b4

    .line 1042
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1043
    .local v6, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_8e

    .line 1047
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1048
    const-string v7, "noConnectivity"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    :cond_8e
    const-string v7, "otherNetwork"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1056
    .end local v6           #switchTo:Landroid/net/NetworkInfo;
    :cond_93
    :goto_93
    const-string v7, "inetCondition"

    iget v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1060
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1065
    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 1066
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1068
    :cond_b3
    return-void

    .line 1052
    :cond_b4
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1053
    const-string v7, "noConnectivity"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_93
.end method

.method private handleDnsConfigurationChange(I)V
    .registers 16
    .parameter "netType"

    .prologue
    .line 1437
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, p1

    .line 1438
    .local v8, nt:Landroid/net/NetworkStateTracker;
    if-eqz v8, :cond_75

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_75

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v12

    if-nez v12, :cond_75

    .line 1439
    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .line 1440
    .local v2, dnsList:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_79

    .line 1441
    const/4 v4, 0x1

    .line 1442
    .local v4, j:I
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_29
    if-ge v3, v7, :cond_53

    aget-object v1, v0, v3

    .line 1443
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_94

    const-string v12, "0.0.0.0"

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_94

    .line 1448
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "net.dns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_29

    .line 1451
    .end local v1           #dns:Ljava/lang/String;
    :cond_53
    move v6, v5

    .local v6, k:I
    :goto_54
    iget v12, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-ge v6, v12, :cond_73

    .line 1453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "net.dns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 1455
    :cond_73
    iput v5, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 1465
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dnsList:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len$:I
    :cond_75
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1466
    return-void

    .line 1458
    .restart local v2       #dnsList:[Ljava/lang/String;
    :cond_79
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v12, p1

    .line 1459
    .local v10, pids:Ljava/util/List;
    const/4 v11, 0x0

    .local v11, y:I
    :goto_7e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_75

    .line 1460
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1461
    .local v9, pid:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v2, v12}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1459
    add-int/lit8 v11, v11, 0x1

    goto :goto_7e

    .end local v9           #pid:Ljava/lang/Integer;
    .end local v10           #pids:Ljava/util/List;
    .end local v11           #y:I
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #j:I
    .restart local v7       #len$:I
    :cond_94
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_4f
.end method

.method private handleInetConditionChange(II)V
    .registers 9
    .parameter "netType"
    .parameter "condition"

    .prologue
    .line 1768
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 1796
    :cond_5
    :goto_5
    return-void

    .line 1772
    :cond_6
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v1, p1, :cond_5

    .line 1776
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 1778
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_5

    .line 1781
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3a

    .line 1782
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1788
    .local v0, delay:I
    :goto_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1789
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1785
    .end local v0           #delay:I
    :cond_3a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_24
.end method

.method private handleInetConditionHoldEnd(II)V
    .registers 6
    .parameter "netType"
    .parameter "sequence"

    .prologue
    .line 1804
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1806
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 1825
    :cond_8
    :goto_8
    return-void

    .line 1810
    :cond_9
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-ne v1, p2, :cond_8

    .line 1814
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    if-eq v1, v2, :cond_8

    .line 1818
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1819
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1823
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1824
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_8
.end method

.method private handleNotificationChange(ZILandroid/app/Notification;)V
    .registers 7
    .parameter "visible"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1323
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_10

    .line 1324
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1328
    :goto_f
    return-void

    .line 1326
    :cond_10
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_f
.end method

.method private handleScanResultsAvailable(Landroid/net/NetworkInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 1309
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1310
    .local v0, networkType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1315
    :cond_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->interpretScanResultsAvailable()V

    .line 1316
    return-void
.end method

.method private handleSetBackgroundData(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getBackgroundDataSetting()Z

    move-result v1

    if-eq p1, v1, :cond_20

    .line 900
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data"

    if-eqz p1, :cond_21

    const/4 v3, 0x1

    :goto_11
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_20
    return-void

    .line 900
    :cond_21
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private handleSetMobileData(Z)V
    .registers 12
    .parameter "enabled"

    .prologue
    const/4 v9, 0x0

    .line 931
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v6

    if-ne v6, p1, :cond_8

    .line 956
    :goto_7
    return-void

    .line 933
    :cond_8
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    if-eqz p1, :cond_32

    const/4 v8, 0x1

    :goto_13
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 936
    if-eqz p1, :cond_34

    .line 937
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    if-eqz v6, :cond_25

    .line 941
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 953
    :cond_25
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, broadcast:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    .end local v1           #broadcast:Landroid/content/Intent;
    :cond_32
    move v8, v9

    .line 933
    goto :goto_13

    .line 944
    :cond_34
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_38
    if-ge v2, v3, :cond_25

    aget-object v5, v0, v2

    .line 945
    .local v5, nt:Landroid/net/NetworkStateTracker;
    if-nez v5, :cond_41

    .line 944
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 946
    :cond_41
    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 947
    .local v4, netType:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v6, :cond_3e

    .line 949
    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto :goto_3e
.end method

.method private handleSetNetworkPreference(I)V
    .registers 4
    .parameter "preference"

    .prologue
    .line 427
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 430
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_2c

    .line 431
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    monitor-enter p0

    .line 434
    :try_start_26
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 435
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 436
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 439
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2c
    return-void

    .line 435
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private isApnActivationAllowed(I)Z
    .registers 9
    .parameter "networkType"

    .prologue
    .line 837
    const/4 v4, 0x0

    .line 838
    .local v4, nwInfo:Landroid/net/NetworkInfo;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v2, :cond_2e

    aget-object v3, v0, v1

    .line 841
    .local v3, network:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 842
    if-eqz v4, :cond_2b

    .line 843
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getPrio(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->getPrio(I)I

    move-result v6

    if-le v5, v6, :cond_2b

    .line 845
    const/4 v5, 0x0

    .line 849
    .end local v3           #network:Landroid/net/NetworkStateTracker;
    :goto_2a
    return v5

    .line 838
    .restart local v3       #network:Landroid/net/NetworkStateTracker;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 849
    .end local v3           #network:Landroid/net/NetworkStateTracker;
    :cond_2e
    const/4 v5, 0x1

    goto :goto_2a
.end method

.method private reassessPidDns(IZ)V
    .registers 15
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v5, :cond_50

    aget v2, v0, v3

    .line 1378
    .local v2, i:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1377
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1381
    :cond_15
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v2

    .line 1382
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_12

    .line 1384
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v10, v2

    .line 1385
    .local v8, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_12

    .line 1386
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1387
    .local v7, pid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_4d

    .line 1388
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, dnsList:[Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1390
    if-eqz p2, :cond_4c

    .line 1391
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1405
    .end local v1           #dnsList:[Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_4c
    :goto_4c
    return-void

    .line 1385
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #pid:Ljava/lang/Integer;
    .restart local v8       #pids:Ljava/util/List;
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1399
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_50
    const/4 v2, 0x1

    .line 1400
    .restart local v2       #i:I
    :goto_51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net.dns"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1401
    .local v9, prop:Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7e

    .line 1402
    if-eqz p2, :cond_4c

    .line 1403
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_4c

    .line 1407
    :cond_7e
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    add-int/lit8 v2, v2, 0x1

    goto :goto_51
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1148
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 6
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1158
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1159
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1160
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1162
    :cond_1a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1163
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    :cond_29
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1166
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    :cond_38
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1170
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1171
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1152
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1237
    monitor-enter p0

    .line 1238
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 1239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1241
    :cond_c
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1242
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1243
    monitor-exit p0

    .line 1244
    return-void

    .line 1243
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .registers 15
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 739
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 740
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 741
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 742
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 744
    .local v7, uid:I
    const/4 v6, 0x0

    .line 745
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 752
    .local v0, callTeardown:Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_12

    .line 753
    const/4 v10, -0x1

    .line 821
    :goto_11
    return v10

    .line 758
    :cond_12
    monitor-enter p0

    .line 760
    :try_start_13
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 762
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_11

    .line 814
    :catchall_1e
    move-exception v10

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v10

    .line 764
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 765
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 773
    if-nez p2, :cond_64

    .line 774
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_64

    .line 775
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 776
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v10, v11, :cond_61

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v10, v11, :cond_61

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v10, v11, :cond_61

    iget-object v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 780
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_11

    .line 774
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 786
    .end local v3           #i:I
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_64
    move v8, v4

    .line 787
    .local v8, usedNetworkType:I
    if-nez v4, :cond_70

    .line 788
    const-string v10, "enableMMS"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 789
    const/4 v8, 0x2

    .line 798
    :cond_70
    :goto_70
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    .line 799
    if-nez v6, :cond_97

    .line 801
    const/4 v10, -0x1

    monitor-exit p0

    goto :goto_11

    .line 790
    :cond_79
    const-string v10, "enableSUPL"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 791
    const/4 v8, 0x3

    goto :goto_70

    .line 792
    :cond_83
    const-string v10, "enableDUN"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 793
    const/4 v8, 0x4

    goto :goto_70

    .line 794
    :cond_8d
    const-string v10, "enableHIPRI"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 795
    const/4 v8, 0x5

    goto :goto_70

    .line 803
    :cond_97
    if-eq v8, v4, :cond_b8

    .line 804
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 805
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 806
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 807
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_b7

    .line 810
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_11

    .line 812
    :cond_b7
    const/4 v0, 0x1

    .line 814
    .end local v1           #currentPid:Ljava/lang/Integer;
    :cond_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_21 .. :try_end_b9} :catchall_1e

    .line 816
    if-eqz v0, :cond_c1

    .line 817
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 818
    const/4 v10, 0x1

    goto/16 :goto_11

    .line 821
    :cond_c1
    invoke-virtual {v6, v2, v5, v7}, Landroid/net/NetworkStateTracker;->stopUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v10

    goto/16 :goto_11
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .registers 4
    .parameter "netTracker"

    .prologue
    const/4 v1, 0x1

    .line 481
    invoke-virtual {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    invoke-virtual {p1, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    move v0, v1

    .line 485
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private tryFailover(I)Landroid/net/NetworkStateTracker;
    .registers 13
    .parameter "prevNetType"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const-string v10, "ConnectivityService"

    .line 1076
    const/4 v1, 0x0

    .line 1077
    .local v1, newNet:Landroid/net/NetworkStateTracker;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 1078
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v6, p1, :cond_15

    .line 1079
    iput v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1082
    :cond_15
    const/4 v3, -0x1

    .line 1083
    .local v3, newType:I
    const/4 v2, -0x1

    .line 1084
    .local v2, newPriority:I
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v6

    if-nez v6, :cond_27

    move v4, v9

    .line 1085
    .local v4, noMobileData:Z
    :goto_1e
    const/4 v0, 0x0

    .local v0, checkType:I
    :goto_1f
    const/4 v6, 0x5

    if-gt v0, v6, :cond_68

    .line 1086
    if-ne v0, p1, :cond_2a

    .line 1085
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1084
    .end local v0           #checkType:I
    .end local v4           #noMobileData:Z
    :cond_27
    const/4 v6, 0x0

    move v4, v6

    goto :goto_1e

    .line 1087
    .restart local v0       #checkType:I
    .restart local v4       #noMobileData:Z
    :cond_2a
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v0

    if-eqz v6, :cond_24

    .line 1088
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v6, :cond_59

    if-eqz v4, :cond_59

    .line 1090
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not failing over to mobile type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because Mobile Data Disabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1094
    :cond_59
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1098
    iget v6, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-ne v0, v6, :cond_8b

    .line 1099
    move v3, v0

    .line 1109
    :cond_68
    if-eq v3, v8, :cond_a0

    .line 1110
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v6, v3

    .line 1118
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 1119
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1120
    .local v5, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual {v5, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1121
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 1123
    :cond_87
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1144
    .end local v0           #checkType:I
    .end local v2           #newPriority:I
    .end local v3           #newType:I
    .end local v4           #noMobileData:Z
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_8a
    :goto_8a
    return-object v1

    .line 1102
    .restart local v0       #checkType:I
    .restart local v2       #newPriority:I
    .restart local v3       #newType:I
    .restart local v4       #noMobileData:Z
    :cond_8b
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    if-le v6, v2, :cond_24

    .line 1103
    move v3, v0

    .line 1104
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v3

    iget v2, v6, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    goto :goto_24

    .line 1135
    :cond_9b
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1136
    const/4 v1, 0x0

    goto :goto_8a

    .line 1140
    :cond_a0
    const-string v6, "ConnectivityService"

    const-string v6, "Network failover failing."

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method private writePidDns([Ljava/lang/String;I)V
    .registers 11
    .parameter "dnsList"
    .parameter "pid"

    .prologue
    .line 1412
    const/4 v3, 0x1

    .line 1413
    .local v3, j:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_5
    if-ge v2, v5, :cond_39

    aget-object v1, v0, v2

    .line 1414
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_3a

    const-string v6, "0.0.0.0"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 1415
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :goto_35
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_5

    .line 1418
    .end local v1           #dns:Ljava/lang/String;
    :cond_39
    return-void

    .restart local v1       #dns:Ljava/lang/String;
    :cond_3a
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_35
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1483
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    .line 1486
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    :cond_32
    return-void

    .line 1491
    :cond_33
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1492
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3a
    if-ge v2, v4, :cond_78

    aget-object v6, v0, v2

    .line 1493
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_75

    .line 1494
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_68

    .line 1495
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    :cond_68
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1499
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1500
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1492
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1504
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_78
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_82
    if-ge v3, v4, :cond_ce

    aget v5, v0, v3

    .line 1506
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1507
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1508
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a1

    .line 1510
    .end local v7           #pid:Ljava/lang/Object;
    :cond_c7
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_82

    .line 1512
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_ce
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1514
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_dc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1516
    .local v9, requester:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_dc

    .line 1518
    .end local v9           #requester:Ljava/lang/Object;
    :cond_ee
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1520
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1522
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_32

    .line 1523
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1524
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    const/4 v1, 0x0

    .local v1, i:I
    :goto_103
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_32

    .line 1526
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1525
    add-int/lit8 v1, v1, 0x1

    goto :goto_103
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 5

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 498
    const/4 v2, 0x0

    .local v2, type:I
    :goto_4
    const/4 v3, 0x5

    if-gt v2, v3, :cond_2a

    .line 499
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v3, v3, v2

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 498
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 502
    :cond_1a
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 503
    .local v1, t:Landroid/net/NetworkStateTracker;
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 504
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v3, v0

    .line 511
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #t:Landroid/net/NetworkStateTracker;
    :goto_29
    return-object v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 9

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 526
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v5, v7, [Landroid/net/NetworkInfo;

    .line 527
    .local v5, result:[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 528
    .local v1, i:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_d
    if-ge v3, v4, :cond_1f

    aget-object v6, v0, v3

    .line 529
    .local v6, t:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_20

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    aput-object v7, v5, v2

    .line 528
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_d

    .line 531
    .end local v6           #t:Landroid/net/NetworkStateTracker;
    :cond_1f
    return-object v5

    .restart local v6       #t:Landroid/net/NetworkStateTracker;
    :cond_20
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1b
.end method

.method public getBackgroundDataSetting()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 882
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_11

    move v0, v2

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .parameter "iface"

    .prologue
    .line 1684
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1687
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 1689
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public getMobileDataEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 912
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 913
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_14

    move v0, v3

    .line 916
    .local v0, retVal:Z
    :goto_13
    return v0

    .line 913
    .end local v0           #retVal:Z
    :cond_14
    const/4 v1, 0x0

    move v0, v1

    goto :goto_13
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 516
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 517
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 518
    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_14

    .line 519
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 521
    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 420
    monitor-enter p0

    .line 421
    :try_start_4
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 422
    .local v0, preference:I
    monitor-exit p0

    .line 423
    return v0

    .line 422
    .end local v0           #preference:I
    :catchall_8
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1716
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1697
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1699
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1706
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1708
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1720
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1721
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1725
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1726
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTetheringSupported()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1733
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1734
    const-string v2, "ro.tether.denied"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v0, v4

    .line 1735
    .local v0, defaultVal:I
    :goto_14
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2d

    move v1, v5

    .line 1737
    .local v1, tetherEnabledInSettings:Z
    :goto_23
    if-eqz v1, :cond_2f

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v2, :cond_2f

    move v2, v5

    :goto_2a
    return v2

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_2b
    move v0, v5

    .line 1734
    goto :goto_14

    .restart local v0       #defaultVal:I
    :cond_2d
    move v1, v4

    .line 1735
    goto :goto_23

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2f
    move v2, v4

    .line 1737
    goto :goto_2a
.end method

.method public reportInetCondition(II)V
    .registers 6
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1760
    return-void
.end method

.method public requestRouteToHost(II)Z
    .registers 6
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 863
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 875
    :goto_b
    return v1

    .line 866
    :cond_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 868
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_22
    move v1, v2

    .line 873
    goto :goto_b

    .line 875
    :cond_24
    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->requestRouteToHost(I)Z

    move-result v1

    goto :goto_b
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 7
    .parameter "allowBackgroundDataUsage"

    .prologue
    const/4 v4, 0x0

    .line 890
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    if-eqz p1, :cond_1b

    const/4 v3, 0x1

    :goto_13
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 896
    return-void

    :cond_1b
    move v3, v4

    .line 894
    goto :goto_13
.end method

.method public setMobileDataEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 923
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 926
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    if-eqz p1, :cond_15

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 928
    return-void

    :cond_15
    move v3, v4

    .line 926
    goto :goto_d
.end method

.method public setNetworkPreference(I)V
    .registers 6
    .parameter "preference"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 414
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method public setRadio(IZ)Z
    .registers 6
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 545
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 549
    :goto_b
    return v1

    .line 548
    :cond_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 549
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_b

    :cond_1a
    move v1, v2

    goto :goto_b
.end method

.method public setRadios(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    .line 535
    const/4 v3, 0x1

    .line 536
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 537
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_1e

    aget-object v4, v0, v1

    .line 538
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_18

    invoke-virtual {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v3, :cond_1b

    const/4 v5, 0x1

    move v3, v5

    .line 537
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 538
    :cond_1b
    const/4 v5, 0x0

    move v3, v5

    goto :goto_18

    .line 540
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_1e
    return v3
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .registers 15
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 615
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v7, v7, p1

    if-nez v7, :cond_11

    .line 617
    :cond_f
    const/4 v7, 0x3

    .line 704
    :goto_10
    return v7

    .line 620
    :cond_11
    new-instance v1, Lcom/android/server/ConnectivityService$FeatureUser;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 623
    .local v1, f:Lcom/android/server/ConnectivityService$FeatureUser;
    move v6, p1

    .line 624
    .local v6, usedNetworkType:I
    if-nez p1, :cond_49

    .line 625
    const-string v7, "allow_mms_when_data_off"

    const-string v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const-string v7, "enableMMS"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, 0x1

    move v2, v7

    .line 627
    .local v2, isMMSAllowed:Z
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_40

    if-nez v2, :cond_40

    .line 629
    const/4 v7, 0x2

    goto :goto_10

    .line 625
    .end local v2           #isMMSAllowed:Z
    :cond_3d
    const/4 v7, 0x0

    move v2, v7

    goto :goto_33

    .line 631
    .restart local v2       #isMMSAllowed:Z
    :cond_40
    const-string v7, "enableMMS"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 632
    const/4 v6, 0x2

    .line 641
    .end local v2           #isMMSAllowed:Z
    :cond_49
    :goto_49
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v7, v6

    .line 642
    .local v3, network:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_118

    .line 643
    if-eq v6, p1, :cond_ee

    .line 644
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 646
    .local v0, currentPid:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, p1

    .line 647
    .local v5, radio:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 649
    .local v4, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_8b

    .line 652
    const/4 v7, 0x4

    if-eq v6, v7, :cond_8b

    .line 653
    const/4 v7, 0x2

    goto :goto_10

    .line 633
    .end local v0           #currentPid:Ljava/lang/Integer;
    .end local v3           #network:Landroid/net/NetworkStateTracker;
    .end local v4           #ni:Landroid/net/NetworkInfo;
    .end local v5           #radio:Landroid/net/NetworkStateTracker;
    .restart local v2       #isMMSAllowed:Z
    :cond_6d
    const-string v7, "enableSUPL"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 634
    const/4 v6, 0x3

    goto :goto_49

    .line 635
    :cond_77
    const-string v7, "enableDUN"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 636
    const/4 v6, 0x4

    goto :goto_49

    .line 637
    :cond_81
    const-string v7, "enableHIPRI"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 638
    const/4 v6, 0x5

    goto :goto_49

    .line 658
    .end local v2           #isMMSAllowed:Z
    .restart local v0       #currentPid:Ljava/lang/Integer;
    .restart local v3       #network:Landroid/net/NetworkStateTracker;
    .restart local v4       #ni:Landroid/net/NetworkInfo;
    .restart local v5       #radio:Landroid/net/NetworkStateTracker;
    :cond_8b
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->isApnActivationAllowed(I)Z

    move-result v7

    if-nez v7, :cond_9b

    .line 659
    const-string v7, "ConnectivityService"

    const-string v8, "Aborting connect attempt -> A higher prioritized APN is active"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v7, 0x2

    goto/16 :goto_10

    .line 663
    :cond_9b
    monitor-enter p0

    .line 664
    :try_start_9c
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v7, v7, v6

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b2

    .line 667
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v7, v7, v6

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_9c .. :try_end_b3} :catchall_df

    .line 670
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 674
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e5

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v7

    if-nez v7, :cond_e5

    .line 676
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e2

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 680
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 669
    :catchall_df
    move-exception v7

    :try_start_e0
    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v7

    .line 683
    :cond_e2
    const/4 v7, 0x1

    goto/16 :goto_10

    .line 690
    :cond_e5
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v7

    if-eqz v7, :cond_118

    .line 691
    const/4 v7, 0x1

    goto/16 :goto_10

    .line 694
    .end local v0           #currentPid:Ljava/lang/Integer;
    .end local v4           #ni:Landroid/net/NetworkInfo;
    .end local v5           #radio:Landroid/net/NetworkStateTracker;
    :cond_ee
    monitor-enter p0

    .line 695
    :try_start_ef
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_115

    .line 697
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 700
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v8

    invoke-virtual {v3, p2, v7, v8}, Landroid/net/NetworkStateTracker;->startUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v7

    goto/16 :goto_10

    .line 696
    :catchall_115
    move-exception v7

    :try_start_116
    monitor-exit p0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v7

    .line 704
    :cond_118
    const/4 v7, 0x2

    goto/16 :goto_10
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 11
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v7, 0x1

    .line 709
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 711
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    .line 712
    .local v3, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v5

    .line 714
    .local v5, uid:I
    const/4 v4, 0x0

    .line 715
    .local v4, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v1, 0x0

    .line 717
    .local v1, found:Z
    monitor-enter p0

    .line 718
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    :try_start_10
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_37

    .line 719
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object v4, v0

    .line 720
    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v5, v6, :cond_41

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v3, v6, :cond_41

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne p1, v6, :cond_41

    iget-object v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 723
    const/4 v1, 0x1

    .line 727
    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_44

    .line 728
    if-eqz v1, :cond_47

    if-eqz v4, :cond_47

    .line 730
    invoke-direct {p0, v4, v7}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 734
    :goto_40
    return v6

    .line 718
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 727
    :catchall_44
    move-exception v6

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v6

    :cond_47
    move v6, v7

    .line 734
    goto :goto_40
.end method

.method systemReady()V
    .registers 3

    .prologue
    .line 1247
    monitor-enter p0

    .line 1248
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1249
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 1250
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1253
    :cond_12
    monitor-exit p0

    .line 1254
    return-void

    .line 1253
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3
    .parameter "iface"

    .prologue
    .line 1662
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1665
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 1667
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public untether(Ljava/lang/String;)I
    .registers 3
    .parameter "iface"

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1676
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 1678
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method
