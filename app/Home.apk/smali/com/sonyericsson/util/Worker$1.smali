.class Lcom/sonyericsson/util/Worker$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/util/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/util/Worker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/util/Worker;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/util/Worker$1;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/util/Worker$1;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->access$000(Lcom/sonyericsson/util/Worker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/util/Worker$1;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->access$100(Lcom/sonyericsson/util/Worker;)Lcom/sonyericsson/util/Worker$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/util/Worker$Task;->execute()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/util/Worker$1;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->access$300(Lcom/sonyericsson/util/Worker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/util/Worker$1;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-static {v1}, Lcom/sonyericsson/util/Worker;->access$200(Lcom/sonyericsson/util/Worker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method
