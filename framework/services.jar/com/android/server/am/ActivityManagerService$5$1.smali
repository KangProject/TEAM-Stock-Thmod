.class Lcom/android/server/am/ActivityManagerService$5$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$5;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$5;Landroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2994
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 2998
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2999
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z

    .line 3000
    monitor-exit v0

    .line 3001
    return-void

    .line 3000
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method
