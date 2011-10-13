.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->createTransferTarget()Lcom/sonyericsson/home/transfer/TransferTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private latestPaneSwitchRight:Z

.field private mGridRect:Lcom/sonyericsson/grid/GridRect;

.field private mHinted:Z

.field private mPaneSwitcher:Ljava/lang/Runnable;

.field private mPreviousHintPosition:I

.field private mSwitchTime:J

.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V
    .locals 1
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->rect:Landroid/graphics/Rect;

    .line 338
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->latestPaneSwitchRight:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    iput-wide p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mSwitchTime:J

    return-wide p1
.end method

.method private switchPaneIfNeeded(I)Z
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, switchPane:Z
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 415
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->latestPaneSwitchRight:Z

    .line 416
    const/4 v0, 0x1

    .line 422
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 423
    iget-wide v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mSwitchTime:J

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move v1, v5

    .line 431
    :goto_1
    return v1

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    .line 418
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->latestPaneSwitchRight:Z

    .line 419
    const/4 v0, 0x1

    goto :goto_0

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v1, v3

    .line 431
    goto :goto_1
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mHinted:Z

    .line 410
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 2
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/animation/Renderer;)V

    .line 402
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mHinted:Z

    .line 405
    return-void
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 7
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v6, 0x1

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 397
    :goto_0
    return v2

    .line 355
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mHinted:Z

    if-nez v2, :cond_1

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mSwitchTime:J

    .line 357
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    iput-boolean v6, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mHinted:Z

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1100(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 364
    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->switchPaneIfNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V

    .line 372
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 374
    .local v0, hintPane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 377
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/grid/Grid;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/grid/Grid;->calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z

    .line 380
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 381
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v2, v2, Lcom/sonyericsson/grid/GridRect;->row:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/grid/Grid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v3, v3, Lcom/sonyericsson/grid/GridRect;->col:I

    add-int v1, v2, v3

    .line 387
    .local v1, hintPosition:I
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v2

    if-ne v0, v2, :cond_3

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPreviousHintPosition:I

    if-eq v1, v2, :cond_5

    .line 388
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->temporarilyMakeRoom(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonyericsson/home/layer/apptray/AppTrayRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1502(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;I)I

    .line 392
    iput v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPreviousHintPosition:I

    .line 393
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->setPickedUpLocation(II)V

    .line 394
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->notifyObservers()V

    :cond_5
    move v2, v6

    .line 397
    goto/16 :goto_0

    .line 368
    .end local v0           #hintPane:I
    .end local v1           #hintPosition:I
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 369
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)V

    goto/16 :goto_1

    .line 383
    .restart local v0       #hintPane:I
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v2, v2, Lcom/sonyericsson/grid/GridRect;->row:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/grid/Grid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/grid/Grid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget v4, v4, Lcom/sonyericsson/grid/GridRect;->col:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    add-int v1, v2, v3

    .restart local v1       #hintPosition:I
    goto :goto_2
.end method
