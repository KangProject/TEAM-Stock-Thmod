.class Lcom/sonyericsson/home/layer/stage/StageGlowView$2;
.super Ljava/lang/Object;
.source "StageGlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/stage/StageGlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageGlowView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$000(Lcom/sonyericsson/home/layer/stage/StageGlowView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$002(Lcom/sonyericsson/home/layer/stage/StageGlowView;Z)Z

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$102(Lcom/sonyericsson/home/layer/stage/StageGlowView;J)J

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->invalidate()V

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$100(Lcom/sonyericsson/home/layer/stage/StageGlowView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x4496

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$300(Lcom/sonyericsson/home/layer/stage/StageGlowView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$200(Lcom/sonyericsson/home/layer/stage/StageGlowView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageGlowView$2;->this$0:Lcom/sonyericsson/home/layer/stage/StageGlowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageGlowView;->access$002(Lcom/sonyericsson/home/layer/stage/StageGlowView;Z)Z

    goto :goto_0
.end method
