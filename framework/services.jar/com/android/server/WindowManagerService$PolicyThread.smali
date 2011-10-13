.class Lcom/android/server/WindowManagerService$PolicyThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/PowerManagerService;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mRunning:Z

.field private final mService:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .registers 6
    .parameter "policy"
    .parameter "service"
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 576
    const-string v0, "WindowManagerPolicy"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z

    .line 577
    iput-object p1, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 578
    iput-object p2, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mService:Lcom/android/server/WindowManagerService;

    .line 579
    iput-object p3, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    .line 580
    iput-object p4, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 581
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 584
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 585
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/view/WindowManagerPolicyThread;->set(Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 589
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mService:Lcom/android/server/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V

    .line 594
    monitor-enter p0

    .line 595
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z

    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 597
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_29

    .line 599
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 600
    return-void

    .line 597
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
