.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .registers 4
    .parameter
    .parameter "obbState"
    .parameter "force"

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    .line 2048
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 2049
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    .line 2050
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 2107
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 2108
    return-void
.end method

.method public handleExecute()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const-string v11, "MountService"

    .line 2053
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)V

    .line 2054
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)V

    .line 2056
    invoke-virtual {p0}, Lcom/android/server/MountService$UnmountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v3

    .line 2059
    .local v3, obbInfo:Landroid/content/res/ObbInfo;
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 2060
    :try_start_18
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v7}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 2061
    .local v4, obbState:Lcom/android/server/MountService$ObbState;
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_2f

    .line 2063
    if-nez v4, :cond_32

    .line 2064
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 2104
    :goto_2e
    return-void

    .line 2061
    .end local v4           #obbState:Lcom/android/server/MountService$ObbState;
    :catchall_2f
    move-exception v7

    :try_start_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v7

    .line 2068
    .restart local v4       #obbState:Lcom/android/server/MountService$ObbState;
    :cond_32
    iget v6, v4, Lcom/android/server/MountService$ObbState;->callerUid:I

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v7, v7, Lcom/android/server/MountService$ObbState;->callerUid:I

    if-eq v6, v7, :cond_6c

    .line 2069
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied attempting to unmount OBB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (owned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const/16 v6, 0x19

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_2e

    .line 2075
    :cond_6c
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    .line 2077
    const/4 v5, 0x0

    .line 2078
    .local v5, rc:I
    const-string v6, "obb unmount %s%s"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v9, v9, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v9, :cond_a7

    const-string v9, " force"

    :goto_85
    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    .local v0, cmd:Ljava/lang/String;
    :try_start_8b
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_94
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_8b .. :try_end_94} :catch_aa

    .line 2094
    :goto_94
    if-nez v5, :cond_c1

    .line 2095
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 2096
    :try_start_9d
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v7, v4}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 2097
    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_be

    .line 2099
    invoke-virtual {p0, v10}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_2e

    .line 2078
    .end local v0           #cmd:Ljava/lang/String;
    :cond_a7
    const-string v9, ""

    goto :goto_85

    .line 2082
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_aa
    move-exception v6

    move-object v2, v6

    .line 2083
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2084
    .local v1, code:I
    const/16 v6, 0x195

    if-ne v1, v6, :cond_b6

    .line 2085
    const/4 v5, -0x7

    goto :goto_94

    .line 2086
    :cond_b6
    const/16 v6, 0x196

    if-ne v1, v6, :cond_bc

    .line 2088
    const/4 v5, 0x0

    goto :goto_94

    .line 2090
    :cond_bc
    const/4 v5, -0x1

    goto :goto_94

    .line 2097
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_be
    move-exception v7

    :try_start_bf
    monitor-exit v6
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v7

    .line 2101
    :cond_c1
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not mount OBB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "null"

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2113
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    const-string v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2118
    const-string v1, ",callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v1, v1, Lcom/android/server/MountService$ObbState;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2120
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2115
    :cond_6c
    const-string v1, "null"

    move-object v1, v2

    goto :goto_1b

    .line 2121
    :cond_70
    const-string v1, "null"

    move-object v1, v2

    goto :goto_47

    .line 2123
    :cond_74
    const-string v1, "null"

    move-object v1, v2

    goto :goto_5f
.end method
