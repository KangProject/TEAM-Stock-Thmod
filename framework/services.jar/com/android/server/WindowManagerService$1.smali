.class Lcom/android/server/WindowManagerService$1;
.super Landroid/os/TokenWatcher;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->access$000(Lcom/android/server/WindowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 238
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/WindowManagerService;->access$102(Lcom/android/server/WindowManagerService;Z)Z

    .line 243
    :goto_16
    return-void

    .line 241
    :cond_17
    const-string v0, "WindowManager"

    const-string v1, "Not disabling keyguard since device policy is enforced"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public released()V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 247
    :try_start_d
    iget-object v1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/WindowManagerService;->access$102(Lcom/android/server/WindowManagerService;Z)Z

    .line 248
    iget-object v1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1
.end method
