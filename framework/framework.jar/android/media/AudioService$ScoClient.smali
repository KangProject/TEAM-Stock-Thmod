.class Landroid/media/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "cb"

    .prologue
    .line 1034
    iput-object p1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 1036
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1037
    return-void
.end method

.method private requestScoState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1121
    invoke-virtual {p0}, Landroid/media/AudioService$ScoClient;->totalCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1125
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition()Z

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition()Z

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const-string v1, "AudioService"

    .line 1040
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1041
    :try_start_0
    const-string v2, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1043
    .local v0, index:I
    if-gez v0, :cond_0

    .line 1044
    const-string v2, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_0
    monitor-exit v1

    .line 1050
    return-void

    .line 1046
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1047
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1049
    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearCount(Z)V
    .locals 5
    .parameter "stopSco"

    .prologue
    .line 1086
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1087
    :try_start_0
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1089
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1094
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1095
    if-eqz p1, :cond_1

    .line 1096
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 1098
    :cond_1
    monitor-exit v1

    .line 1099
    return-void

    .line 1090
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1091
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public decCount()V
    .locals 4

    .prologue
    const-string v1, "AudioService"

    .line 1068
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1069
    :try_start_0
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    if-nez v2, :cond_0

    .line 1070
    const-string v2, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :goto_0
    monitor-exit v1

    .line 1083
    return-void

    .line 1072
    :cond_0
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1073
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1075
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    :cond_1
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v2}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1076
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1077
    .local v0, e:Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v2, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public incCount()V
    .locals 5

    .prologue
    .line 1053
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1054
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 1055
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1057
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1063
    :cond_0
    :goto_0
    :try_start_2
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1064
    monitor-exit v1

    .line 1065
    return-void

    .line 1058
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1064
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public totalCount()I
    .locals 5

    .prologue
    .line 1110
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1113
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1114
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, Landroid/media/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 1113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1116
    :cond_0
    monitor-exit v4

    return v0

    .line 1117
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
