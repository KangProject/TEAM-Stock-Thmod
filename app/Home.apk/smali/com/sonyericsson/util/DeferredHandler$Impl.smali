.class Lcom/sonyericsson/util/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/util/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/util/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/util/DeferredHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/util/DeferredHandler$Impl;->this$0:Lcom/sonyericsson/util/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/util/DeferredHandler;Lcom/sonyericsson/util/DeferredHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/util/DeferredHandler$Impl;-><init>(Lcom/sonyericsson/util/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler$Impl;->this$0:Lcom/sonyericsson/util/DeferredHandler;

    invoke-static {v1}, Lcom/sonyericsson/util/DeferredHandler;->access$100(Lcom/sonyericsson/util/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler$Impl;->this$0:Lcom/sonyericsson/util/DeferredHandler;

    invoke-static {v1}, Lcom/sonyericsson/util/DeferredHandler;->access$100(Lcom/sonyericsson/util/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 62
    .local v0, r:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/util/DeferredHandler$Impl;->this$0:Lcom/sonyericsson/util/DeferredHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/util/DeferredHandler;->scheduleNextLocked()V

    goto :goto_0
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/util/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 68
    const/4 v0, 0x0

    return v0
.end method
