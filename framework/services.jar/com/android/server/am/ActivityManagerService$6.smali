.class Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 3688
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3691
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3692
    .local v9, pkgs:[Ljava/lang/String;
    if-eqz v9, :cond_23

    .line 3693
    move-object v6, v9

    .local v6, arr$:[Ljava/lang/String;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_b
    if-ge v7, v8, :cond_23

    aget-object v1, v6, v7

    .line 3694
    .local v1, pkg:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 3695
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3696
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$6;->setResultCode(I)V

    .line 3697
    monitor-exit v10

    .line 3702
    .end local v1           #pkg:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_23
    return-void

    .line 3699
    .restart local v1       #pkg:Ljava/lang/String;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_24
    monitor-exit v10

    .line 3693
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 3699
    :catchall_28
    move-exception v0

    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v0
.end method
