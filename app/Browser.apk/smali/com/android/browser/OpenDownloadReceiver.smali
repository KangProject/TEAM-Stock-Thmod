.class public Lcom/android/browser/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkValidDrmRights(Landroid/content/Context;Landroid/drm/DrmManagerClient;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "drmManagerClient"
    .parameter "fileName"

    .prologue
    const-string v6, "browser"

    .line 144
    const/4 v2, 0x1

    .line 146
    .local v2, result:Z
    if-eqz p2, :cond_0

    .line 148
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2, p3, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {p2, p3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 150
    .local v3, rightsStatus:I
    if-eqz v3, :cond_0

    .line 152
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.drmdialogs.RENEW_LICENSE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.sonyericsson.drmdialogs.EXTRA_FILE_PATH"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 156
    const/4 v2, 0x0

    .line 169
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #rightsStatus:I
    :cond_0
    :goto_0
    return v2

    .line 157
    .restart local v3       #rightsStatus:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 158
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v4, "browser"

    const-string v5, "Renew License activity not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 162
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v3           #rightsStatus:I
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 163
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "browser"

    const-string v4, "can\'t get original mime type since path is null or empty string"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 165
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "browser"

    const-string v4, "Can\'t get original mime type since DrmManagerClient didn\'t initialize properly"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOriginalMimeType(Landroid/drm/DrmManagerClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "drmManagerClient"
    .parameter "path"
    .parameter "containingMime"

    .prologue
    const-string v3, "browser"

    .line 118
    move-object v1, p3

    .line 120
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 122
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p1, p2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 126
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "browser"

    const-string v2, "can\'t get original mime type since path is null or empty string"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "browser"

    const-string v2, "Can\'t get original mime type since DrmManagerClient didn\'t initialize properly"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 54
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 55
    .local v5, data:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 56
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 58
    .local v12, drmManagerClient:Landroid/drm/DrmManagerClient;
    const/4 v6, 0x4

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "mimetype"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 63
    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, filename:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 65
    .local v17, mimetype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, action:Ljava/lang/String;
    const-string v6, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 67
    const/4 v6, 0x3

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 68
    .local v20, status:I
    invoke-static/range {v20 .. v20}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static/range {v20 .. v20}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 70
    new-instance v16, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v16, launchIntent:Landroid/content/Intent;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 73
    .local v19, path:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 74
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    .line 77
    :cond_0
    new-instance v13, Landroid/drm/DrmManagerClient;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    .end local v12           #drmManagerClient:Landroid/drm/DrmManagerClient;
    .local v13, drmManagerClient:Landroid/drm/DrmManagerClient;
    :try_start_1
    invoke-virtual {v13}, Landroid/drm/DrmManagerClient;->loadPlugIns()V

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/OpenDownloadReceiver;->checkValidDrmRights(Landroid/content/Context;Landroid/drm/DrmManagerClient;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_4

    .line 105
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/drm/DrmManagerClient;->unloadPlugIns()V

    :cond_2
    move-object v12, v13

    .line 108
    .end local v10           #action:Ljava/lang/String;
    .end local v13           #drmManagerClient:Landroid/drm/DrmManagerClient;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #launchIntent:Landroid/content/Intent;
    .end local v17           #mimetype:Ljava/lang/String;
    .end local v19           #path:Landroid/net/Uri;
    .end local v20           #status:I
    .restart local v12       #drmManagerClient:Landroid/drm/DrmManagerClient;
    :cond_3
    :goto_0
    return-void

    .line 84
    .end local v12           #drmManagerClient:Landroid/drm/DrmManagerClient;
    .restart local v10       #action:Ljava/lang/String;
    .restart local v13       #drmManagerClient:Landroid/drm/DrmManagerClient;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #launchIntent:Landroid/content/Intent;
    .restart local v17       #mimetype:Ljava/lang/String;
    .restart local v19       #path:Landroid/net/Uri;
    .restart local v20       #status:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/OpenDownloadReceiver;->getOriginalMimeType(Landroid/drm/DrmManagerClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 85
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v6, 0x1000

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    move-object v12, v13

    .line 105
    .end local v10           #action:Ljava/lang/String;
    .end local v13           #drmManagerClient:Landroid/drm/DrmManagerClient;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #launchIntent:Landroid/content/Intent;
    .end local v17           #mimetype:Ljava/lang/String;
    .end local v19           #path:Landroid/net/Uri;
    .end local v20           #status:I
    .restart local v12       #drmManagerClient:Landroid/drm/DrmManagerClient;
    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_6
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/drm/DrmManagerClient;->unloadPlugIns()V

    goto :goto_0

    .line 89
    .end local v12           #drmManagerClient:Landroid/drm/DrmManagerClient;
    .restart local v10       #action:Ljava/lang/String;
    .restart local v13       #drmManagerClient:Landroid/drm/DrmManagerClient;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #launchIntent:Landroid/content/Intent;
    .restart local v17       #mimetype:Ljava/lang/String;
    .restart local v19       #path:Landroid/net/Uri;
    .restart local v20       #status:I
    :catch_0
    move-exception v14

    .line 90
    .local v14, ex:Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0800d4

    const/4 v7, 0x1

    :try_start_4
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 105
    .end local v14           #ex:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v6

    move-object v12, v13

    .end local v10           #action:Ljava/lang/String;
    .end local v13           #drmManagerClient:Landroid/drm/DrmManagerClient;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #launchIntent:Landroid/content/Intent;
    .end local v17           #mimetype:Ljava/lang/String;
    .end local v19           #path:Landroid/net/Uri;
    .end local v20           #status:I
    .restart local v12       #drmManagerClient:Landroid/drm/DrmManagerClient;
    :goto_3
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/drm/DrmManagerClient;->unloadPlugIns()V

    :cond_8
    throw v6

    .line 97
    .restart local v10       #action:Ljava/lang/String;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v17       #mimetype:Ljava/lang/String;
    .restart local v20       #status:I
    :cond_9
    :try_start_5
    new-instance v18, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v18, pageView:Landroid/content/Intent;
    const/high16 v6, 0x1000

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 105
    .end local v10           #action:Ljava/lang/String;
    .end local v15           #filename:Ljava/lang/String;
    .end local v17           #mimetype:Ljava/lang/String;
    .end local v18           #pageView:Landroid/content/Intent;
    .end local v20           #status:I
    :catchall_1
    move-exception v6

    goto :goto_3
.end method
