.class Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z
    .locals 10
    .parameter "detector"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 391
    .local v1, now:J
    invoke-virtual {p1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    invoke-virtual {p1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getPreviousSpan()F

    move-result v5

    sub-float/2addr v4, v5

    neg-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v5

    mul-float v0, v4, v5

    .line 395
    .local v0, dProgress:F
    cmpl-float v4, v0, v8

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 396
    const/high16 v4, 0x3fc0

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v0, v4

    .line 399
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    const/high16 v5, 0x447a

    mul-float/2addr v5, v0

    invoke-virtual {p1}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, v9

    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v6

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$802(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F

    .line 400
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v4

    add-float/2addr v4, v0

    const v5, 0x7f7fffff

    invoke-static {v4, v8, v5}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v3

    .line 402
    .local v3, progress:F
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v4

    invoke-virtual {v4, v3, v8, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 403
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v4, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)V

    .line 405
    const/4 v4, 0x1

    return v4
.end method

.method public onScaleBegin(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$600(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$802(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$900(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1000(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$900(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    .line 386
    :cond_1
    return v2
.end method

.method public onScaleEnd(Lremove/me/when/froyo/comes/ScaleGestureDetector;)V
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 413
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v3

    .line 419
    .local v0, snap:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;FF)V

    .line 420
    return-void

    .end local v0           #snap:I
    :cond_0
    move v0, v4

    .line 414
    goto :goto_0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move v0, v3

    .restart local v0       #snap:I
    :goto_1
    goto :goto_0

    .end local v0           #snap:I
    :cond_2
    move v0, v4

    goto :goto_1
.end method
