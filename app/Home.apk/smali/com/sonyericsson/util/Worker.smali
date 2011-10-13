.class public final Lcom/sonyericsson/util/Worker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/util/Worker$Task;
    }
.end annotation


# static fields
.field private static final ENABLE_LOGGING:Z = false

.field private static final THREAD_POSTFIX:Ljava/lang/String; = "]"

.field private static final THREAD_PREFIX:Ljava/lang/String; = "Worker ["

.field private static final mWorkers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/util/Worker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDebugTimeStamp:J

.field private final mExecuteRunnable:Ljava/lang/Runnable;

.field private mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

.field private final mExecutingTaskCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandlerBG:Landroid/os/Handler;

.field private final mHandlerMain:Landroid/os/Handler;

.field private final mPostExecuteRunnable:Ljava/lang/Runnable;

.field private final mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/util/Worker$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/util/Worker;->mWorkers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mTaskQueue:Ljava/util/LinkedList;

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mExecutingTaskCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    new-instance v1, Lcom/sonyericsson/util/Worker$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/util/Worker$1;-><init>(Lcom/sonyericsson/util/Worker;)V

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mExecuteRunnable:Ljava/lang/Runnable;

    .line 214
    new-instance v1, Lcom/sonyericsson/util/Worker$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/util/Worker$2;-><init>(Lcom/sonyericsson/util/Worker;)V

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mPostExecuteRunnable:Ljava/lang/Runnable;

    .line 178
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mHandlerMain:Landroid/os/Handler;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mWorkerName:Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sonyericsson/util/Worker;->mWorkerName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 182
    .local v0, backgroundThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker;->createHandlerBG(Landroid/os/HandlerThread;)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/util/Worker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mExecutingTaskCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/util/Worker;)Lcom/sonyericsson/util/Worker$Task;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/util/Worker;Lcom/sonyericsson/util/Worker$Task;)Lcom/sonyericsson/util/Worker$Task;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/util/Worker;->mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/util/Worker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mPostExecuteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/util/Worker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mHandlerMain:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/util/Worker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/util/Worker;->triggedTaskExecution()V

    return-void
.end method

.method private createHandlerBG(Landroid/os/HandlerThread;)V
    .locals 2
    .parameter "threadBG"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 258
    .local v0, looper:Landroid/os/Looper;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 259
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/util/Worker;->mHandlerBG:Landroid/os/Handler;

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/util/Worker;->triggedTaskExecution()V

    .line 261
    return-void
.end method

.method public static obtain(I)Lcom/sonyericsson/util/Worker;
    .locals 3
    .parameter "priority"

    .prologue
    .line 122
    sget-object v1, Lcom/sonyericsson/util/Worker;->mWorkers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/util/Worker;

    .line 124
    .local v0, worker:Lcom/sonyericsson/util/Worker;
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/sonyericsson/util/Worker;

    .end local v0           #worker:Lcom/sonyericsson/util/Worker;
    invoke-direct {v0, p0}, Lcom/sonyericsson/util/Worker;-><init>(I)V

    .line 126
    .restart local v0       #worker:Lcom/sonyericsson/util/Worker;
    sget-object v1, Lcom/sonyericsson/util/Worker;->mWorkers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-object v0
.end method

.method private triggedTaskExecution()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/util/Worker$Task;

    iput-object v0, p0, Lcom/sonyericsson/util/Worker;->mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

    invoke-virtual {v0}, Lcom/sonyericsson/util/Worker$Task;->preExecute()V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/util/Worker;->mHandlerBG:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/util/Worker;->mExecuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTask(Lcom/sonyericsson/util/Worker$Task;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/util/Worker;->mExecutingTask:Lcom/sonyericsson/util/Worker$Task;

    if-ne p1, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/util/Worker;->mExecutingTaskCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/util/Worker;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/util/Worker$Task;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/util/Worker$Task;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 168
    :cond_2
    return-void
.end method

.method public postTask(Lcom/sonyericsson/util/Worker$Task;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/sonyericsson/util/Worker;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/util/Worker$Task;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/util/Worker$Task;

    .line 141
    .local v1, oldTask:Lcom/sonyericsson/util/Worker$Task;
    invoke-virtual {p1, v1}, Lcom/sonyericsson/util/Worker$Task;->overrides(Lcom/sonyericsson/util/Worker$Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 145
    .end local v1           #oldTask:Lcom/sonyericsson/util/Worker$Task;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/util/Worker;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/util/Worker;->mHandlerBG:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/util/Worker;->triggedTaskExecution()V

    .line 149
    :cond_2
    return-void
.end method
