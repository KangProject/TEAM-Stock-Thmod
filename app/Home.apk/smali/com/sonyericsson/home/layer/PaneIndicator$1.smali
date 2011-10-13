.class Lcom/sonyericsson/home/layer/PaneIndicator$1;
.super Ljava/lang/Object;
.source "PaneIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/PaneIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/PaneIndicator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator$1;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$1;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->access$000(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$1;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->access$000(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    const v1, 0x3c23d70a

    const v2, 0x3a83126f

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$1;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$1;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 138
    return-void
.end method
