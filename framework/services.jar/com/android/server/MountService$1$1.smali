.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-string v9, "MountService"

    .line 462
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, state:Ljava/lang/String;
    const-string v4, "unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 466
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 467
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .line 468
    .local v2, rc:I
    if-eqz v2, :cond_43

    .line 469
    const-string v4, "MountService"

    const-string v5, "Boot-time mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v2           #rc:I
    :cond_43
    :goto_43
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 501
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Z)V

    .line 502
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z

    .line 507
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 477
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #state:Ljava/lang/String;
    :cond_5e
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v5, "removed"

    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$902(Lcom/android/server/MountService;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_71} :catch_72

    goto :goto_43

    .line 504
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :catch_72
    move-exception v4

    move-object v0, v4

    .line 505
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v4, "Boot-time mount exception"

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 481
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #state:Ljava/lang/String;
    :cond_7c
    :try_start_7c
    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 486
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_43

    .line 487
    :cond_8f
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 492
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a1} :catch_72

    goto :goto_43
.end method
