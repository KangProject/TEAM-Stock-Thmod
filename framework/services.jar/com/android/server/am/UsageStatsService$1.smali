.class Lcom/android/server/am/UsageStatsService$1;
.super Ljava/lang/Thread;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/UsageStatsService;->access$100(Lcom/android/server/am/UsageStatsService;Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 413
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 416
    return-void

    .line 413
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/am/UsageStatsService;->access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
