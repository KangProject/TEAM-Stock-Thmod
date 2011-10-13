.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 40
    .parameter "msg"

    .prologue
    .line 979
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_5ba

    .line 1233
    .end local p0
    .end local p1
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 981
    .restart local p0
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 982
    .local v22, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 983
    :try_start_17
    const-string v6, "app"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 984
    .local v31, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v31, :cond_4b

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_4b

    .line 985
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    monitor-exit v5

    goto :goto_8

    .line 998
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_48
    move-exception v6

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_48

    throw v6

    .line 988
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_4b
    :try_start_4b
    const-string v6, "result"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/AppErrorResult;

    .line 989
    .local v34, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_8f

    .line 990
    new-instance v21, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v34

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 991
    .local v21, d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 992
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 998
    .end local v21           #d:Landroid/app/Dialog;
    :goto_84
    monitor-exit v5
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_48

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 996
    :cond_8f
    const/4 v6, 0x0

    :try_start_90
    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_48

    goto :goto_84

    .line 1003
    .end local v22           #data:Ljava/util/HashMap;
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v34           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1004
    :try_start_9e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 1005
    .restart local v22       #data:Ljava/util/HashMap;
    const-string v5, "app"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 1006
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v31, :cond_db

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    move-object v5, v0

    if-eqz v5, :cond_db

    .line 1007
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has anr dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    monitor-exit v19

    goto/16 :goto_8

    .line 1023
    .end local v22           #data:Ljava/util/HashMap;
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .end local p1
    :catchall_d8
    move-exception v5

    monitor-exit v19
    :try_end_da
    .catchall {:try_start_9e .. :try_end_da} :catchall_d8

    throw v5

    .line 1011
    .restart local v22       #data:Ljava/util/HashMap;
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :cond_db
    :try_start_db
    new-instance v8, Landroid/content/Intent;

    const-string v5, "android.intent.action.ANR"

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_f0

    .line 1013
    const/high16 v5, 0x4000

    invoke-virtual {v8, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1015
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    invoke-static/range {v5 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1019
    new-instance v21, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v31

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1021
    .restart local v21       #d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 1022
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1023
    monitor-exit v19
    :try_end_135
    .catchall {:try_start_db .. :try_end_135} :catchall_d8

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1028
    .end local v8           #intent:Landroid/content/Intent;
    .end local v21           #d:Landroid/app/Dialog;
    .end local v22           #data:Ljava/util/HashMap;
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :pswitch_13f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/HashMap;

    .line 1029
    .local v23, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1030
    :try_start_14d
    const-string v6, "app"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 1031
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v31, :cond_167

    .line 1032
    const-string v6, "ActivityManager"

    const-string v7, "App not found when showing strict mode dialog."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    monitor-exit v5

    goto/16 :goto_8

    .line 1049
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_164
    move-exception v6

    monitor-exit v5
    :try_end_166
    .catchall {:try_start_14d .. :try_end_166} :catchall_164

    throw v6

    .line 1035
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_167
    :try_start_167
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_18c

    .line 1036
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    monitor-exit v5

    goto/16 :goto_8

    .line 1039
    :cond_18c
    const-string v6, "result"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/AppErrorResult;

    .line 1040
    .restart local v34       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_1d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_1d0

    .line 1041
    new-instance v21, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v34

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1042
    .restart local v21       #d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 1043
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1049
    .end local v21           #d:Landroid/app/Dialog;
    :goto_1c5
    monitor-exit v5
    :try_end_1c6
    .catchall {:try_start_167 .. :try_end_1c6} :catchall_164

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1047
    :cond_1d0
    const/4 v6, 0x0

    :try_start_1d1
    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1d7
    .catchall {:try_start_1d1 .. :try_end_1d7} :catchall_164

    goto :goto_1c5

    .line 1053
    .end local v23           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v34           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_1d8
    new-instance v21, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1055
    .restart local v21       #d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1059
    .end local v21           #d:Landroid/app/Dialog;
    :pswitch_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    .line 1060
    .local v35, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/content/res/Configuration;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_8

    .line 1063
    .end local v35           #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :pswitch_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1064
    :try_start_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1065
    monitor-exit v5

    goto/16 :goto_8

    :catchall_22c
    move-exception v6

    monitor-exit v5
    :try_end_22e
    .catchall {:try_start_221 .. :try_end_22e} :catchall_22c

    throw v6

    .line 1068
    :pswitch_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1069
    :try_start_235
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1070
    .local v19, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_277

    .line 1071
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    move v6, v0

    if-nez v6, :cond_271

    .line 1072
    new-instance v21, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1075
    .restart local v21       #d:Landroid/app/Dialog;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1076
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1077
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 1085
    .end local v21           #d:Landroid/app/Dialog;
    :cond_271
    :goto_271
    monitor-exit v5

    goto/16 :goto_8

    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_274
    move-exception v6

    monitor-exit v5
    :try_end_276
    .catchall {:try_start_235 .. :try_end_276} :catchall_274

    throw v6

    .line 1080
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    :cond_277
    :try_start_277
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_271

    .line 1081
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1082
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_28c
    .catchall {:try_start_277 .. :try_end_28c} :catchall_274

    goto :goto_271

    .line 1090
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_8

    .line 1093
    :pswitch_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1094
    :try_start_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1095
    monitor-exit v5

    goto/16 :goto_8

    :catchall_2aa
    move-exception v6

    monitor-exit v5
    :try_end_2ac
    .catchall {:try_start_29e .. :try_end_2ac} :catchall_2aa

    throw v6

    .line 1098
    :pswitch_2ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_2e7

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1101
    .local v28, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    move-object v0, v5

    move-object/from16 v1, v28

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1105
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_8

    .line 1108
    .restart local p0
    :pswitch_2fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1109
    :try_start_302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int v26, v5, v7

    .local v26, i:I
    :goto_310
    if-ltz v26, :cond_361

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    .line 1111
    .local v33, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v5, v0
    :try_end_327
    .catchall {:try_start_302 .. :try_end_327} :catchall_35e

    if-eqz v5, :cond_338

    .line 1113
    :try_start_329
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7, v5}, Landroid/app/IApplicationThread;->updateTimeZone(Ljava/lang/String;)V
    :try_end_338
    .catchall {:try_start_329 .. :try_end_338} :catchall_35e
    .catch Landroid/os/RemoteException; {:try_start_329 .. :try_end_338} :catch_33b

    .line 1109
    :cond_338
    :goto_338
    add-int/lit8 v26, v26, -0x1

    goto :goto_310

    .line 1114
    :catch_33b
    move-exception v5

    move-object/from16 v25, v5

    .line 1115
    .local v25, ex:Landroid/os/RemoteException;
    :try_start_33e
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_338

    .line 1119
    .end local v25           #ex:Landroid/os/RemoteException;
    .end local v26           #i:I
    .end local v33           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_35e
    move-exception v5

    monitor-exit v6
    :try_end_360
    .catchall {:try_start_33e .. :try_end_360} :catchall_35e

    throw v5

    .restart local v26       #i:I
    :cond_361
    :try_start_361
    monitor-exit v6
    :try_end_362
    .catchall {:try_start_361 .. :try_end_362} :catchall_35e

    goto/16 :goto_8

    .line 1123
    .end local v26           #i:I
    :pswitch_364
    new-instance v21, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1124
    .local v21, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1125
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1126
    const-string v5, "System UIDs Inconsistent"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1127
    const-string v5, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1128
    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1131
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 1134
    .end local v21           #d:Landroid/app/AlertDialog;
    :pswitch_3b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_8

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 1140
    :pswitch_3d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_40f

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1143
    .restart local v28       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    move-object v0, v5

    move-object/from16 v1, v28

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1147
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_40f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1148
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1149
    :try_start_41d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1150
    monitor-exit v5

    goto/16 :goto_8

    :catchall_42b
    move-exception v6

    monitor-exit v5
    :try_end_42d
    .catchall {:try_start_41d .. :try_end_42d} :catchall_42b

    throw v6

    .line 1153
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_42e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1154
    :try_start_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1155
    monitor-exit v5

    goto/16 :goto_8

    :catchall_440
    move-exception v6

    monitor-exit v5
    :try_end_442
    .catchall {:try_start_434 .. :try_end_442} :catchall_440

    throw v6

    .line 1158
    :pswitch_443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1159
    :try_start_449
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v11, v0

    .line 1160
    .local v11, uid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_46f

    const/4 v6, 0x1

    move v12, v6

    .line 1161
    .local v12, restart:Z
    :goto_458
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1162
    .local v10, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZ)Z

    .line 1163
    monitor-exit v5

    goto/16 :goto_8

    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #uid:I
    .end local v12           #restart:Z
    :catchall_46c
    move-exception v6

    monitor-exit v5
    :try_end_46e
    .catchall {:try_start_449 .. :try_end_46e} :catchall_46c

    throw v6

    .line 1160
    .restart local v11       #uid:I
    :cond_46f
    const/4 v6, 0x0

    move v12, v6

    goto :goto_458

    .line 1166
    .end local v11           #uid:I
    :pswitch_472
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_8

    .line 1169
    .restart local p0
    :pswitch_47f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v27

    .line 1170
    .local v27, inm:Landroid/app/INotificationManager;
    if-eqz v27, :cond_8

    .line 1174
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 1175
    .local v36, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    .line 1176
    .local v32, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v32, :cond_8

    .line 1181
    :try_start_495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v20

    .line 1182
    .local v20, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104032f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 1184
    .local v37, text:Ljava/lang/String;
    new-instance v29, Landroid/app/Notification;

    invoke-direct/range {v29 .. v29}, Landroid/app/Notification;-><init>()V

    .line 1185
    .local v29, notification:Landroid/app/Notification;
    const v5, 0x1080440

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 1186
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v29

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 1187
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1188
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1189
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1190
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1191
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040330

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    const/high16 v9, 0x1000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_526
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_495 .. :try_end_526} :catch_54e

    .line 1198
    const/4 v5, 0x1

    :try_start_527
    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 1199
    .local v30, outId:[I
    const-string v5, "android"

    const v6, 0x104032f

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_53c
    .catch Ljava/lang/RuntimeException; {:try_start_527 .. :try_end_53c} :catch_53e
    .catch Landroid/os/RemoteException; {:try_start_527 .. :try_end_53c} :catch_5b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_527 .. :try_end_53c} :catch_54e

    goto/16 :goto_8

    .line 1201
    .end local v30           #outId:[I
    :catch_53e
    move-exception v5

    move-object/from16 v24, v5

    .line 1202
    .local v24, e:Ljava/lang/RuntimeException;
    :try_start_541
    const-string v5, "ActivityManager"

    const-string v6, "Error showing notification for heavy-weight app"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_541 .. :try_end_54c} :catch_54e

    goto/16 :goto_8

    .line 1206
    .end local v20           #context:Landroid/content/Context;
    .end local v24           #e:Ljava/lang/RuntimeException;
    .end local v29           #notification:Landroid/app/Notification;
    .end local v37           #text:Ljava/lang/String;
    :catch_54e
    move-exception v5

    move-object/from16 v24, v5

    .line 1207
    .local v24, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    const-string v6, "Unable to create context for heavy notification"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1211
    .end local v24           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v27           #inm:Landroid/app/INotificationManager;
    .end local v32           #process:Lcom/android/server/am/ProcessRecord;
    .end local v36           #root:Lcom/android/server/am/ActivityRecord;
    :pswitch_55e
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v27

    .line 1212
    .restart local v27       #inm:Landroid/app/INotificationManager;
    if-eqz v27, :cond_8

    .line 1216
    :try_start_564
    const-string v5, "android"

    const v6, 0x104032f

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_570
    .catch Ljava/lang/RuntimeException; {:try_start_564 .. :try_end_570} :catch_572
    .catch Landroid/os/RemoteException; {:try_start_564 .. :try_end_570} :catch_5b3

    goto/16 :goto_8

    .line 1218
    :catch_572
    move-exception v5

    move-object/from16 v24, v5

    .line 1219
    .local v24, e:Ljava/lang/RuntimeException;
    const-string v5, "ActivityManager"

    const-string v6, "Error canceling notification for service"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1225
    .end local v24           #e:Ljava/lang/RuntimeException;
    .end local v27           #inm:Landroid/app/INotificationManager;
    :pswitch_582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1226
    :try_start_588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1227
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1228
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1229
    .restart local v28       #nmsg:Landroid/os/Message;
    const-wide/32 v6, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1230
    monitor-exit v5

    goto/16 :goto_8

    .end local v28           #nmsg:Landroid/os/Message;
    :catchall_5b0
    move-exception v6

    monitor-exit v5
    :try_end_5b2
    .catchall {:try_start_588 .. :try_end_5b2} :catchall_5b0

    throw v6

    .line 1221
    .restart local v27       #inm:Landroid/app/INotificationManager;
    :catch_5b3
    move-exception v5

    goto/16 :goto_8

    .line 1204
    .restart local v20       #context:Landroid/content/Context;
    .restart local v29       #notification:Landroid/app/Notification;
    .restart local v32       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v36       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #text:Ljava/lang/String;
    :catch_5b6
    move-exception v5

    goto/16 :goto_8

    .line 979
    nop

    :pswitch_data_5ba
    .packed-switch 0x1
        :pswitch_9
        :pswitch_97
        :pswitch_1d8
        :pswitch_1ff
        :pswitch_21b
        :pswitch_22f
        :pswitch_28d
        :pswitch_298
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2ad
        :pswitch_2fc
        :pswitch_364
        :pswitch_3b8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3d5
        :pswitch_42e
        :pswitch_443
        :pswitch_472
        :pswitch_47f
        :pswitch_55e
        :pswitch_13f
        :pswitch_582
    .end packed-switch
.end method
