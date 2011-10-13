.class Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService$WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WindowManagerService$WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 2
    .parameter

    .prologue
    .line 7025
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7025
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;-><init>(Lcom/android/server/WindowManagerService$WindowState;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 7028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_42

    .line 7029
    :try_start_7
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v2, v2, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 7030
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIN DEATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7031
    if-eqz v0, :cond_3d

    .line 7032
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v2, v2, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;->this$1:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 7034
    :cond_3d
    monitor-exit v1

    .line 7039
    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_3e
    return-void

    .line 7034
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v2
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_42} :catch_42

    .line 7035
    :catch_42
    move-exception v1

    goto :goto_3e
.end method
