.class public Lcom/android/server/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StatusBarManagerService$NotificationCallbacks;,
        Lcom/android/server/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field mHandler:Landroid/os/Handler;

.field mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 450
    new-instance v1, Lcom/android/server/StatusBarManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/StatusBarManagerService$2;-><init>(Lcom/android/server/StatusBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v2, 0x1070009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;
    .registers 5
    .parameter "notification"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    .line 315
    :try_start_3
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 316
    .local v0, key:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    if-eqz v2, :cond_16

    .line 319
    :try_start_11
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_1b

    .line 323
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v1

    return-object v0

    .line 324
    .end local v0           #key:Landroid/os/IBinder;
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v2

    .line 320
    .restart local v0       #key:Landroid/os/IBinder;
    :catch_1b
    move-exception v2

    goto :goto_16
.end method

.method public collapse()V
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 139
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 141
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapse()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 145
    :cond_c
    :goto_c
    return-void

    .line 142
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 154
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 155
    :try_start_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked()I

    move-result v0

    .line 157
    .local v0, net:I
    iget v2, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    if-eq v0, v2, :cond_26

    .line 158
    iput v0, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 159
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/StatusBarManagerService$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/StatusBarManagerService$1;-><init>(Lcom/android/server/StatusBarManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    if-eqz v2, :cond_26

    .line 166
    :try_start_21
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBar;->disable(I)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_2b

    .line 171
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v1

    .line 172
    return-void

    .line 171
    .end local v0           #net:I
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw v2

    .line 167
    .restart local v0       #net:I
    :catch_2b
    move-exception v2

    goto :goto_26
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 417
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    :goto_32
    return-void

    .line 425
    :cond_33
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v5

    .line 426
    :try_start_36
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v6, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 427
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_7a

    .line 429
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v6

    .line 430
    const/4 v2, 0x0

    .line 431
    .local v2, i:I
    :try_start_40
    const-string v5, "Notification list:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 433
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    const-string v7, "  %2d: %s\n"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v5}, Lcom/android/internal/statusbar/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_77
    .catchall {:try_start_40 .. :try_end_77} :catchall_f9

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 427
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_7a
    move-exception v6

    :try_start_7b
    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v6

    .line 436
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_7d
    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_f9

    .line 438
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 439
    :try_start_81
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 440
    .local v0, N:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDisabled=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    const/4 v2, 0x0

    :goto_ae
    if-ge v2, v0, :cond_fc

    .line 443
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 444
    .local v4, tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] what=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_81 .. :try_end_f6} :catchall_ff

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 436
    .end local v0           #N:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_f9
    move-exception v5

    :try_start_fa
    monitor-exit v6
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v5

    .line 447
    .restart local v0       #N:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_fc
    :try_start_fc
    monitor-exit v5

    goto/16 :goto_32

    .end local v0           #N:I
    :catchall_ff
    move-exception v6

    monitor-exit v5
    :try_end_101
    .catchall {:try_start_fc .. :try_end_101} :catchall_ff

    throw v6
.end method

.method public expand()V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 128
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 130
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpand()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 134
    :cond_c
    :goto_c
    return-void

    .line 131
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method gatherDisableActionsLocked()I
    .registers 5

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 405
    .local v0, N:I
    const/4 v2, 0x0

    .line 406
    .local v2, net:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 407
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StatusBarManagerService$DisableRecord;

    iget v3, v3, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    or-int/2addr v2, v3

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 409
    :cond_18
    return v2
.end method

.method manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 367
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 368
    :try_start_3
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 369
    .local v0, N:I
    const/4 v4, 0x0

    .line 371
    .local v4, tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_1a

    .line 372
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 373
    .local v3, t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget-object v6, v3, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p2, :cond_31

    .line 374
    move-object v4, v3

    .line 378
    .end local v3           #t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_1a
    if-eqz p1, :cond_22

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_34

    .line 379
    :cond_22
    if-eqz v4, :cond_2f

    .line 380
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    iget-object v6, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 398
    :cond_2f
    :goto_2f
    monitor-exit v5

    .line 399
    :goto_30
    return-void

    .line 371
    .restart local v3       #t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 384
    .end local v3           #t:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_34
    if-nez v4, :cond_45

    .line 385
    new-instance v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .end local v4           #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_4c

    .line 387
    .restart local v4       #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    :try_start_3d
    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_4f

    .line 392
    :try_start_40
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_45
    iput p1, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    .line 395
    iput-object p2, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 396
    iput-object p3, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_2f

    .line 398
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_4c
    move-exception v6

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_4c

    throw v6

    .line 389
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #tok:Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catch_4f
    move-exception v1

    .line 390
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_50
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4c

    goto :goto_30
.end method

.method public onClearAllNotifications()V
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 307
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onClearAll()V

    .line 308
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 293
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 14
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "uid"
    .parameter "initialPid"
    .parameter "message"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 301
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 302
    return-void
.end method

.method public onPanelRevealed()V
    .registers 2

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 287
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onPanelRevealed()V

    .line 288
    return-void
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .parameter "bar"
    .parameter "iconList"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, notificationKeys:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .local p4, notifications:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 266
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 268
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 269
    :try_start_20
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 270
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_51

    .line 271
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 272
    :try_start_29
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 276
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_29 .. :try_end_50} :catchall_4e

    throw v3

    .line 270
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v3

    .line 276
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_54
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_4e

    .line 277
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 7
    .parameter "slot"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 226
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 227
    :try_start_6
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, index:I
    if-gez v0, :cond_2a

    .line 229
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v0           #index:I
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v2

    .line 232
    .restart local v0       #index:I
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 234
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    if-eqz v2, :cond_38

    .line 236
    :try_start_33
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a

    .line 240
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_27

    .line 241
    return-void

    .line 237
    :catch_3a
    move-exception v2

    goto :goto_38
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    .line 344
    :try_start_3
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 345
    .local v0, n:Lcom/android/internal/statusbar/StatusBarNotification;
    if-nez v0, :cond_29

    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification key not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    .end local v0           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2

    .line 348
    .restart local v0       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_26

    if-eqz v2, :cond_32

    .line 350
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeNotification(Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    .line 354
    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_26

    .line 355
    return-void

    .line 351
    :catch_34
    move-exception v2

    goto :goto_32
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 177
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 178
    :try_start_6
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, index:I
    if-gez v1, :cond_2a

    .line 180
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    .end local v1           #index:I
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v3

    .line 183
    .restart local v1       #index:I
    :cond_2a
    :try_start_2a
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    .line 185
    .local v0, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 187
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_27

    if-eqz v3, :cond_3d

    .line 189
    :try_start_38
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3f

    .line 193
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_27

    .line 194
    return-void

    .line 190
    :catch_3f
    move-exception v3

    goto :goto_3d
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 9
    .parameter "slot"
    .parameter "visible"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 199
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 200
    :try_start_6
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 201
    .local v1, index:I
    if-gez v1, :cond_2a

    .line 202
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v1           #index:I
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v3

    .line 205
    .restart local v1       #index:I
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 206
    .local v0, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_34

    .line 207
    monitor-exit v2

    .line 221
    :goto_33
    return-void

    .line 210
    :cond_34
    iget-boolean v3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v3, p2, :cond_43

    .line 211
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 213
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_27

    if-eqz v3, :cond_43

    .line 215
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_45

    .line 220
    :cond_43
    :goto_43
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_27

    goto :goto_33

    .line 216
    :catch_45
    move-exception v3

    goto :goto_43
.end method

.method public setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 104
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public systemReady2()V
    .registers 6

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 116
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 7
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotification key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1

    .line 332
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    if-eqz v1, :cond_35

    .line 335
    :try_start_30
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_37

    .line 339
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_24

    .line 340
    return-void

    .line 336
    :catch_37
    move-exception v1

    goto :goto_35
.end method
