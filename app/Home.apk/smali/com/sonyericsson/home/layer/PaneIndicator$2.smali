.class Lcom/sonyericsson/home/layer/PaneIndicator$2;
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
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator$2;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x3dcccccd

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$2;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->access$100(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$2;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->access$100(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$2;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$2;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->invalidate()V

    .line 120
    return-void
.end method
