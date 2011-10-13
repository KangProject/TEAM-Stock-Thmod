.class public Lcom/sonyericsson/util/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/util/DeferredHandler$1;,
        Lcom/sonyericsson/util/DeferredHandler$IdleRunnable;,
        Lcom/sonyericsson/util/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/sonyericsson/util/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 50
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 51
    new-instance v0, Lcom/sonyericsson/util/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/util/DeferredHandler$Impl;-><init>(Lcom/sonyericsson/util/DeferredHandler;Lcom/sonyericsson/util/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mHandler:Lcom/sonyericsson/util/DeferredHandler$Impl;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/util/DeferredHandler;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 106
    return-void
.end method

.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/util/DeferredHandler;->scheduleNextLocked()V

    .line 93
    :cond_0
    return-void
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 97
    new-instance v0, Lcom/sonyericsson/util/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p1}, Lcom/sonyericsson/util/DeferredHandler$IdleRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/util/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method scheduleNextLocked()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 111
    .local v0, peek:Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/sonyericsson/util/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lcom/sonyericsson/util/DeferredHandler;->mHandler:Lcom/sonyericsson/util/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 117
    .end local v0           #peek:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0       #peek:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler;->mHandler:Lcom/sonyericsson/util/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/util/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
