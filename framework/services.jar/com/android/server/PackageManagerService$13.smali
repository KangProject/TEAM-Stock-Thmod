.class Lcom/android/server/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$MoveParams;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10069
    iput-object p1, p0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    iput p2, p0, Lcom/android/server/PackageManagerService$13;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 10071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$13;->val$currentStatus:I

    move v15, v0

    .line 10073
    .local v15, returnCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$13;->val$currentStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11c

    .line 10074
    const/16 v16, 0x0

    .line 10075
    .local v16, uidArr:[I
    const/4 v12, 0x0

    .line 10076
    .local v12, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 10077
    :try_start_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Package;

    .line 10078
    .local v11, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v11, :cond_19f

    .line 10079
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " Package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " doesn\'t exist. Aborting move"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10081
    const/4 v15, -0x2

    .line 10092
    :goto_81
    monitor-exit v18
    :try_end_82
    .catchall {:try_start_36 .. :try_end_82} :catchall_24f

    .line 10093
    const/16 v18, 0x1

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_11c

    .line 10095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$4000(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 10097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 10098
    :try_start_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_b9
    .catchall {:try_start_ac .. :try_end_b9} :catchall_43a

    .line 10099
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    check-cast v11, Landroid/content/pm/PackageParser$Package;

    .line 10101
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v11, :cond_252

    .line 10102
    const-string v20, "PackageManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " doesn\'t exist. Aborting move"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10104
    const/4 v15, -0x2

    .line 10166
    :cond_104
    :goto_104
    monitor-exit v19
    :try_end_105
    .catchall {:try_start_b9 .. :try_end_105} :catchall_437

    .line 10167
    :try_start_105
    monitor-exit v18
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_43a

    .line 10169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$4000(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 10172
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v12           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #uidArr:[I
    :cond_11c
    const/16 v18, 0x1

    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_48f

    .line 10174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v18, v0

    if-eqz v18, :cond_142

    .line 10175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v18, v0

    const/16 v19, -0x6e

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostInstall(I)I

    .line 10188
    :cond_142
    :goto_142
    const/16 v18, -0x7

    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_17e

    .line 10189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 10190
    :try_start_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Package;

    .line 10191
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_17d

    .line 10192
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object v1, v11

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 10194
    :cond_17d
    monitor-exit v18
    :try_end_17e
    .catchall {:try_start_156 .. :try_end_17e} :catchall_4ba

    .line 10197
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    move-object v9, v0

    .line 10198
    .local v9, observer:Landroid/content/pm/IPackageMoveObserver;
    if-eqz v9, :cond_19e

    .line 10200
    :try_start_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v1, v18

    move v2, v15

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_19e
    .catch Landroid/os/RemoteException; {:try_start_18b .. :try_end_19e} :catch_4bd

    .line 10205
    :cond_19e
    :goto_19e
    return-void

    .line 10082
    .end local v9           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v12       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #uidArr:[I
    :cond_19f
    :try_start_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_21c

    .line 10083
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " code path changed from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Aborting move and returning error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10086
    const/4 v15, -0x6

    goto/16 :goto_81

    .line 10088
    :cond_21c
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    aput v20, v17, v19
    :try_end_233
    .catchall {:try_start_19f .. :try_end_233} :catchall_24f

    .line 10089
    .end local v16           #uidArr:[I
    .local v17, uidArr:[I
    :try_start_233
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_238
    .catchall {:try_start_233 .. :try_end_238} :catchall_4c9

    .line 10090
    .end local v12           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v13, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24a
    .catchall {:try_start_238 .. :try_end_24a} :catchall_4ce

    move-object v12, v13

    .end local v13           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17           #uidArr:[I
    .restart local v16       #uidArr:[I
    goto/16 :goto_81

    .line 10092
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_24f
    move-exception v19

    :goto_250
    :try_start_250
    monitor-exit v18
    :try_end_251
    .catchall {:try_start_250 .. :try_end_251} :catchall_24f

    throw v19

    .line 10105
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_252
    :try_start_252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2cf

    .line 10106
    const-string v20, "PackageManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " code path changed from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Aborting move and returning error"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10109
    const/4 v15, -0x6

    goto/16 :goto_104

    .line 10111
    :cond_2cf
    iget-object v10, v11, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 10112
    .local v10, oldCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 10113
    .local v6, newCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v8

    .line 10114
    .local v8, newResPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v7

    .line 10116
    .local v7, newNativePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_452

    .line 10117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v20, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/Installer;->unlinkNativeLibraryDirectory(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_43d

    .line 10119
    const/4 v15, -0x1

    .line 10131
    :cond_32f
    :goto_32f
    const/16 v20, 0x1

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_358

    .line 10132
    iput-object v6, v11, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 10134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$4100(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_358

    .line 10137
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v11

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 10138
    const/4 v15, -0x1

    .line 10142
    :cond_358
    const/16 v20, 0x1

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_104

    .line 10143
    iput-object v6, v11, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 10144
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 10145
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object v0, v8

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 10146
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object v0, v7

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 10147
    iget-object v14, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 10148
    .local v14, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    new-instance v20, Ljava/io/File;

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    .line 10149
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    .line 10150
    new-instance v20, Ljava/io/File;

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .line 10151
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 10152
    iput-object v7, v14, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 10154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_477

    .line 10155
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x4

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10159
    :goto_3f0
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->setFlags(I)V

    .line 10160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    goto/16 :goto_104

    .line 10166
    .end local v6           #newCodePath:Ljava/lang/String;
    .end local v7           #newNativePath:Ljava/lang/String;
    .end local v8           #newResPath:Ljava/lang/String;
    .end local v10           #oldCodePath:Ljava/lang/String;
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v14           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_437
    move-exception v20

    monitor-exit v19
    :try_end_439
    .catchall {:try_start_252 .. :try_end_439} :catchall_437

    :try_start_439
    throw v20

    .line 10167
    :catchall_43a
    move-exception v19

    monitor-exit v18
    :try_end_43c
    .catchall {:try_start_439 .. :try_end_43c} :catchall_43a

    throw v19

    .line 10121
    .restart local v6       #newCodePath:Ljava/lang/String;
    .restart local v7       #newNativePath:Ljava/lang/String;
    .restart local v8       #newResPath:Ljava/lang/String;
    .restart local v10       #oldCodePath:Ljava/lang/String;
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_43d
    :try_start_43d
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v21}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesLI(Ljava/io/File;Ljava/io/File;)I

    goto/16 :goto_32f

    .line 10125
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v20, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_32f

    .line 10127
    const/4 v15, -0x1

    goto/16 :goto_32f

    .line 10157
    .restart local v14       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_477
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const v22, -0x40001

    and-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_48d
    .catchall {:try_start_43d .. :try_end_48d} :catchall_437

    goto/16 :goto_3f0

    .line 10179
    .end local v6           #newCodePath:Ljava/lang/String;
    .end local v7           #newNativePath:Ljava/lang/String;
    .end local v8           #newResPath:Ljava/lang/String;
    .end local v10           #oldCodePath:Ljava/lang/String;
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v12           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v16           #uidArr:[I
    :cond_48f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->gc()V

    .line 10181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 10182
    :try_start_4a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 10183
    monitor-exit v18

    goto/16 :goto_142

    :catchall_4b7
    move-exception v19

    monitor-exit v18
    :try_end_4b9
    .catchall {:try_start_4a3 .. :try_end_4b9} :catchall_4b7

    throw v19

    .line 10194
    :catchall_4ba
    move-exception v19

    :try_start_4bb
    monitor-exit v18
    :try_end_4bc
    .catchall {:try_start_4bb .. :try_end_4bc} :catchall_4ba

    throw v19

    .line 10201
    .restart local v9       #observer:Landroid/content/pm/IPackageMoveObserver;
    :catch_4bd
    move-exception v18

    move-object/from16 v5, v18

    .line 10202
    .local v5, e:Landroid/os/RemoteException;
    const-string v18, "PackageManager"

    const-string v19, "Observer no longer exists."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19e

    .line 10092
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v9           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v12       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #uidArr:[I
    :catchall_4c9
    move-exception v19

    move-object/from16 v16, v17

    .end local v17           #uidArr:[I
    .restart local v16       #uidArr:[I
    goto/16 :goto_250

    .end local v12           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #uidArr:[I
    .restart local v13       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #uidArr:[I
    :catchall_4ce
    move-exception v19

    move-object v12, v13

    .end local v13           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17           #uidArr:[I
    .restart local v16       #uidArr:[I
    goto/16 :goto_250
.end method
