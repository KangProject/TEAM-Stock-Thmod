.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2035
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 2038
    if-ne p1, v0, :cond_1

    .line 2040
    invoke-static {}, Landroid/media/AudioService;->access$5100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2041
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2042
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v6

    .line 2044
    .local v6, ringVolume:I
    if-lez v6, :cond_0

    .line 2045
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    .line 2066
    .end local v6           #ringVolume:I
    :cond_0
    :goto_0
    return-void

    .line 2042
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2050
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2052
    invoke-static {}, Landroid/media/AudioService;->access$5100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2053
    :try_start_2
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2054
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2055
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_0

    .line 2054
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 2059
    :cond_2
    if-nez p1, :cond_0

    .line 2061
    invoke-static {}, Landroid/media/AudioService;->access$5100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2062
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2063
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2064
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_0

    .line 2063
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
