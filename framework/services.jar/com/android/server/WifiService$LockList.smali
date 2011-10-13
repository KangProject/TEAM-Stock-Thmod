.class Lcom/android/server/WifiService$LockList;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiService;)V
    .registers 3
    .parameter

    .prologue
    .line 2247
    iput-object p1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    .line 2249
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService$LockList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService$LockList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->hasLocks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService$LockList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2244
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private addLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 2272
    iget-object v0, p1, Lcom/android/server/WifiService$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_d

    .line 2273
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2275
    :cond_d
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "pw"

    .prologue
    .line 2297
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2298
    .local v1, l:Lcom/android/server/WifiService$WifiLock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 2301
    .end local v1           #l:Lcom/android/server/WifiService$WifiLock;
    :cond_1b
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .registers 5
    .parameter "binder"

    .prologue
    .line 2289
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2290
    .local v1, size:I
    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1c

    .line 2291
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WifiService$WifiLock;

    iget-object v2, v2, Lcom/android/server/WifiService$WifiLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_19

    move v2, v0

    .line 2293
    :goto_18
    return v2

    .line 2290
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2293
    :cond_1c
    const/4 v2, -0x1

    goto :goto_18
.end method

.method private declared-synchronized getStrongestLockMode()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2256
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2f

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    .line 2268
    :goto_b
    monitor-exit p0

    return v0

    .line 2260
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)I

    move-result v1

    if-le v0, v1, :cond_1d

    .line 2261
    const/4 v0, 0x3

    goto :goto_b

    .line 2264
    :cond_1d
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)I
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2f

    move-result v1

    if-le v0, v1, :cond_2d

    move v0, v2

    .line 2265
    goto :goto_b

    .line 2268
    :cond_2d
    const/4 v0, 0x2

    goto :goto_b

    .line 2256
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasLocks()Z
    .registers 2

    .prologue
    .line 2252
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .registers 5
    .parameter "binder"

    .prologue
    .line 2278
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 2279
    .local v0, index:I
    if-ltz v0, :cond_13

    .line 2280
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2281
    .local v1, ret:Lcom/android/server/WifiService$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/WifiService$WifiLock;->unlinkDeathRecipient()V

    move-object v2, v1

    .line 2284
    .end local v1           #ret:Lcom/android/server/WifiService$WifiLock;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method
