.class Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


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
    .line 418
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 12
    .parameter "detector"

    .prologue
    const/high16 v11, 0x3f00

    const/4 v10, 0x0

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 441
    .local v2, now:J
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v5

    cmpl-float v5, v5, v10

    if-nez v5, :cond_0

    .line 445
    const/high16 v0, 0x4000

    .line 446
    .local v0, PROGRESS_RATIO:F
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    const/high16 v6, 0x4000

    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v7, v7, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v8, v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v8, v8, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v9, v9, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v9}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1302(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F

    .line 451
    .end local v0           #PROGRESS_RATIO:F
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v6

    mul-float v1, v5, v6

    .line 455
    .local v1, dProgress:F
    cmpl-float v5, v1, v10

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 456
    const/high16 v5, 0x3fc0

    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v1, v5

    .line 459
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    const/high16 v6, 0x447a

    mul-float/2addr v6, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v7

    long-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v11

    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v7

    mul-float/2addr v7, v11

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$802(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F

    .line 460
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v5

    add-float/2addr v5, v1

    const v6, 0x7f7fffff

    invoke-static {v5, v10, v6}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v4

    .line 462
    .local v4, progress:F
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5, v4, v10, v2, v3}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 463
    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v5, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)V

    .line 465
    const/4 v5, 0x1

    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$600(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$802(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$900(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1000(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/PaneIndicator;->hide(Z)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$900(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    .line 435
    :cond_1
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 473
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v3

    .line 479
    .local v0, snap:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;FF)V

    .line 480
    return-void

    .end local v0           #snap:I
    :cond_0
    move v0, v4

    .line 474
    goto :goto_0

    .line 476
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
