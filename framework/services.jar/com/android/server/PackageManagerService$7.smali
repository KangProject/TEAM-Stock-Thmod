.class Lcom/android/server/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6021
    iput-object p1, p0, Lcom/android/server/PackageManagerService$7;->this$0:Lcom/android/server/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/PackageManagerService$7;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/PackageManagerService$7;->val$flags:I

    iput-object p4, p0, Lcom/android/server/PackageManagerService$7;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 6023
    iget-object v2, p0, Lcom/android/server/PackageManagerService$7;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6024
    iget-object v2, p0, Lcom/android/server/PackageManagerService$7;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$7;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/PackageManagerService$7;->val$flags:I

    invoke-static {v2, v3, v5, v5, v4}, Lcom/android/server/PackageManagerService;->access$3100(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZZI)Z

    move-result v1

    .line 6025
    .local v1, succeded:Z
    iget-object v2, p0, Lcom/android/server/PackageManagerService$7;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    if-eqz v2, :cond_1b

    .line 6027
    :try_start_16
    iget-object v2, p0, Lcom/android/server/PackageManagerService$7;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 6032
    :cond_1b
    :goto_1b
    return-void

    .line 6028
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 6029
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method
