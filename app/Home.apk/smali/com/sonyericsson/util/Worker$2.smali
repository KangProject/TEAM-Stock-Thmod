.class Lcom/sonyericsson/util/Worker$2;
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
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/util/Worker$2;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/util/Worker$2;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->access$000(Lcom/sonyericsson/util/Worker;)Lcom/sonyericsson/util/Worker$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/util/Worker$Task;->postExecute()V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/util/Worker$2;->this$0:Lcom/sonyericsson/util/Worker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/util/Worker;->access$002(Lcom/sonyericsson/util/Worker;Lcom/sonyericsson/util/Worker$Task;)Lcom/sonyericsson/util/Worker$Task;

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/util/Worker$2;->this$0:Lcom/sonyericsson/util/Worker;

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->access$300(Lcom/sonyericsson/util/Worker;)V

    .line 200
    return-void
.end method
