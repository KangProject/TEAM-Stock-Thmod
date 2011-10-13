.class Lcom/android/server/ThrottleService$3;
.super Ljava/lang/Thread;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ThrottleService;->getBestTime()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method constructor <init>(Lcom/android/server/ThrottleService;)V
    .registers 2
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 756
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 757
    .local v0, client:Landroid/net/SntpClient;
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 758
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/ThrottleService;->access$2402(Lcom/android/server/ThrottleService;J)J

    .line 759
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/ThrottleService;->access$2502(Lcom/android/server/ThrottleService;J)J

    .line 760
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 761
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/ThrottleService;->access$1802(Lcom/android/server/ThrottleService;Z)Z

    .line 763
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 766
    :cond_41
    iget-object v1, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$2600(Lcom/android/server/ThrottleService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 767
    :try_start_48
    iget-object v2, p0, Lcom/android/server/ThrottleService$3;->this$0:Lcom/android/server/ThrottleService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/ThrottleService;->access$2702(Lcom/android/server/ThrottleService;Z)Z

    .line 768
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_50
    move-exception v2

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_50

    throw v2
.end method
