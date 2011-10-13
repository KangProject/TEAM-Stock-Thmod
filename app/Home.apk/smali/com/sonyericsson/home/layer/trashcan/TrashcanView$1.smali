.class Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;
.super Ljava/lang/Object;
.source "TrashcanView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/trashcan/TrashcanView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3c23d70a

    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->invalidate()V

    .line 127
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    const/high16 v1, 0x3f00

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;->onClosed()V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0, v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$202(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0, v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$302(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Landroid/view/View;)Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$400(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;->onOpened()V

    goto :goto_0
.end method
