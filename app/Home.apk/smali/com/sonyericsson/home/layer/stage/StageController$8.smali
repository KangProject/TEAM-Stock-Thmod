.class Lcom/sonyericsson/home/layer/stage/StageController$8;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/stage/StageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/stage/StageController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 7
    .parameter "view"
    .parameter "renderer"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 624
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->isHinting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2700(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addHint(Lcom/sonyericsson/home/layer/HintInfo;)I

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setHint(Lcom/sonyericsson/home/data/Info;I)Z

    .line 628
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItemAtHint(Lcom/sonyericsson/home/data/Info;)I

    .line 629
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->removeHint()V

    .line 630
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 633
    if-eqz p2, :cond_1

    .line 635
    const-string v1, "reset_closest_vertex"

    invoke-interface {p2, v1, v5, v5, v6}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 637
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 638
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 639
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 640
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 641
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->positionOf(Lcom/sonyericsson/home/data/Info;)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 646
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iput-object v6, v1, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 647
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 649
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1, v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2602(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 651
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onItemDropped()V

    .line 654
    :cond_2
    return-object v6
.end method

.method public onTransferCompleted()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$8;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 660
    return-void
.end method
