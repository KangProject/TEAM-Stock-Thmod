.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, action:Ljava/lang/String;
    const/16 v17, 0x0

    .line 358
    .local v17, queryRestart:Z
    const-string v21, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10b

    .line 359
    const-string v21, "plugged"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_f9

    const/16 v21, 0x1

    move/from16 v8, v21

    .line 360
    .local v8, batteryCharging:Z
    :goto_25
    const-string v21, "level"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 361
    .local v14, level:I
    if-ltz v14, :cond_ff

    const/16 v21, 0xa

    move v0, v14

    move/from16 v1, v21

    if-gt v0, v1, :cond_ff

    const/16 v21, 0x1

    move/from16 v10, v21

    .line 362
    .local v10, batteryLow:Z
    :goto_40
    const-string v21, "status"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 363
    .local v18, status:I
    const/16 v21, 0x5

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_5d

    const/16 v21, 0x5a

    move v0, v14

    move/from16 v1, v21

    if-lt v0, v1, :cond_105

    :cond_5d
    const/16 v21, 0x1

    move/from16 v9, v21

    .line 366
    .local v9, batteryFull:Z
    :goto_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    if-eqz v21, :cond_9e

    .line 368
    if-eqz v8, :cond_71

    if-nez v9, :cond_7c

    .line 369
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 371
    :cond_7c
    if-eqz v8, :cond_91

    const/16 v21, 0x5

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_91

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 375
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    if-eqz v21, :cond_9e

    .line 376
    const/4 v8, 0x0

    .line 380
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_f8

    .line 383
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 431
    .end local v8           #batteryCharging:Z
    .end local v9           #batteryFull:Z
    .end local v10           #batteryLow:Z
    .end local v14           #level:I
    .end local v18           #status:I
    :cond_f8
    :goto_f8
    return-void

    .line 359
    :cond_f9
    const/16 v21, 0x0

    move/from16 v8, v21

    goto/16 :goto_25

    .line 361
    .restart local v8       #batteryCharging:Z
    .restart local v14       #level:I
    :cond_ff
    const/16 v21, 0x0

    move/from16 v10, v21

    goto/16 :goto_40

    .line 363
    .restart local v10       #batteryLow:Z
    .restart local v18       #status:I
    :cond_105
    const/16 v21, 0x0

    move/from16 v9, v21

    goto/16 :goto_61

    .line 388
    .end local v8           #batteryCharging:Z
    .end local v10           #batteryLow:Z
    .end local v14           #level:I
    .end local v18           #status:I
    :cond_10b
    const-string v21, "android.hardware.action.USB_STATE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_145

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 390
    .local v11, extras:Landroid/os/Bundle;
    const-string v21, "connected"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 391
    .local v20, usbConnected:Z
    const-string v21, "enabled"

    const-string v22, "adb"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 393
    .local v6, adbEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    if-eqz v20, :cond_142

    if-eqz v6, :cond_142

    const/16 v22, 0x1

    :goto_13e
    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;Z)V

    goto :goto_f8

    :cond_142
    const/16 v22, 0x0

    goto :goto_13e

    .line 394
    .end local v6           #adbEnabled:Z
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v20           #usbConnected:Z
    :cond_145
    const-string v21, "android.hardware.action.USB_DISCONNECTED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15c

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;Z)V

    goto :goto_f8

    .line 396
    :cond_15c
    const-string v21, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_188

    const-string v21, "android.intent.action.PACKAGE_RESTARTED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_188

    const-string v21, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_188

    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f3

    .line 400
    :cond_188
    const/4 v15, 0x0

    .line 401
    .local v15, pkgList:[Ljava/lang/String;
    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1cb

    .line 402
    const-string v21, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 416
    :goto_19e
    if-eqz v15, :cond_f8

    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_f8

    .line 417
    move-object v7, v15

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1a9
    if-ge v12, v13, :cond_f8

    aget-object v16, v7, v12

    .line 418
    .local v16, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-nez v17, :cond_1f0

    const/16 v24, 0x1

    :goto_1bb
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 417
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a9

    .line 403
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_1cb
    if-eqz v17, :cond_1d8

    .line 404
    const-string v21, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_19e

    .line 406
    :cond_1d8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 407
    .local v19, uri:Landroid/net/Uri;
    if-eqz v19, :cond_f8

    .line 410
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    .line 411
    .restart local v16       #pkgName:Ljava/lang/String;
    if-eqz v16, :cond_f8

    .line 414
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .end local v15           #pkgList:[Ljava/lang/String;
    const/16 v21, 0x0

    aput-object v16, v15, v21

    .restart local v15       #pkgList:[Ljava/lang/String;
    goto :goto_19e

    .line 418
    .end local v19           #uri:Landroid/net/Uri;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    :cond_1f0
    const/16 v24, 0x0

    goto :goto_1bb

    .line 421
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v15           #pkgList:[Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_1f3
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_214

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_f8

    .line 424
    :cond_214
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_235

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_f8

    .line 427
    :cond_235
    const-string v21, "android.intent.action.PHONE_STATE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f8

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_f8
.end method
