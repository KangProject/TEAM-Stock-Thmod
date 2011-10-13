.class Lcom/sonyericsson/home/layer/folder/FolderController$6;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mGridRect:Lcom/sonyericsson/grid/GridRect;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollVelocity:F

.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V
    .locals 1
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    .line 493
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$6$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController$6;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/layer/folder/FolderController$6;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 487
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollVelocity:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/layer/folder/FolderController$6;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isInfoTypeAllowed(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 504
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->stopHinting()V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->keepMaxScroll(Z)V

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollVelocity:F

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onCancelHint()V

    .line 602
    :cond_0
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 7
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 547
    const/4 v2, 0x1

    .line 550
    .local v2, successful:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    if-nez v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2902(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/home/layer/folder/FolderController$6;->isInfoTypeAllowed(Lcom/sonyericsson/home/data/Info;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 557
    const/4 v2, 0x0

    .line 560
    :cond_1
    if-eqz v2, :cond_3

    .line 561
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getHintPosition()I

    move-result v0

    .line 566
    .local v0, hintPosition:I
    if-eqz p2, :cond_2

    .line 567
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 568
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 569
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/paneview/PaneView;->getScrollOffset()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 571
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 572
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1800(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 575
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->add(ILcom/sonyericsson/home/data/Info;)V

    .line 578
    .end local v0           #hintPosition:I
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 579
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onItemDropped()V

    .line 583
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2902(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 584
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->stopHinting()V

    .line 585
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->keepMaxScroll(Z)V

    .line 586
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 587
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 588
    const/4 v3, 0x0

    iput v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollVelocity:F

    .line 590
    invoke-interface {p3, v2}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 591
    return-void
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 9
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v8, 0x1

    const v7, 0x3ca3d70a

    .line 508
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 510
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 511
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/paneview/PaneView;->getScrollOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 512
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    invoke-virtual {v3, v1, v4}, Lcom/sonyericsson/grid/Grid;->calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z

    .line 516
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1700(Lcom/sonyericsson/home/layer/folder/FolderController;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 517
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v4, v4, Lcom/sonyericsson/grid/GridRect;->row:I

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v5, v5, Lcom/sonyericsson/grid/GridRect;->col:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 524
    .local v0, hintPosition:I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->setHint(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 528
    :cond_0
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, newScrollVelocity:F
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 532
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v3

    sub-int/2addr v3, p3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-float v3, v3

    mul-float v2, v3, v7

    .line 537
    :cond_1
    :goto_1
    iput v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollVelocity:F

    .line 538
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 539
    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 543
    :cond_2
    return v8

    .line 520
    .end local v0           #hintPosition:I
    .end local v2           #newScrollVelocity:F
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v4, v4, Lcom/sonyericsson/grid/GridRect;->row:I

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1400(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v6, v6, Lcom/sonyericsson/grid/GridRect;->col:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0       #hintPosition:I
    goto/16 :goto_0

    .line 533
    .restart local v2       #newScrollVelocity:F
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le p3, v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v3

    sub-int v3, p3, v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderController$6;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1200(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    goto/16 :goto_1
.end method
