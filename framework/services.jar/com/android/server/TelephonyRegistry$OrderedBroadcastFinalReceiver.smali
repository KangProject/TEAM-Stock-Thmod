.class Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderedBroadcastFinalReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method private constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;-><init>(Lcom/android/server/TelephonyRegistry;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;)Ljava/util/Queue;

    move-result-object v7

    monitor-enter v7

    .line 610
    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 613
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 615
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 616
    .local v1, nextIntent:Landroid/content/Intent;
    if-eqz v1, :cond_3b

    .line 617
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$OrderedBroadcastFinalReceiver;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 622
    .end local v1           #nextIntent:Landroid/content/Intent;
    :cond_3b
    monitor-exit v7

    .line 623
    return-void

    .line 622
    :catchall_3d
    move-exception v0

    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v0
.end method
