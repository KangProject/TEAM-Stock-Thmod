.class Lcom/sonyericsson/home/layer/stage/StageController$5;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 400
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$5;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$5;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 405
    .local v1, sourceBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 406
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 407
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$5;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 408
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 409
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 410
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$5;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$5;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 412
    .end local v0           #rect:Landroid/graphics/Rect;
    .end local v1           #sourceBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
