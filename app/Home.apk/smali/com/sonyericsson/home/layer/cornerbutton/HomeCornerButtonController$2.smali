.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;
.super Ljava/lang/Object;
.source "HomeCornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 9
    .parameter "view"
    .parameter "renderer"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 282
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2300(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2200(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->setActions(Ljava/util/ArrayList;)V

    .line 285
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 289
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 290
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2400(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 291
    .local v1, point:Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 292
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 293
    invoke-static {v2}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 296
    if-eqz p2, :cond_0

    .line 298
    const-string v3, "reset_closest_vertex"

    invoke-interface {p2, v3, v7, v7, v8}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 299
    const-string v3, "set_alpha"

    invoke-interface {p2, v3, v7, v7, v8}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    .line 306
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3, v8}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2102(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 307
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2202(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;I)I

    .line 311
    return-object p2
.end method

.method public onTransferCompleted()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;->onChanged(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2102(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$2;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2202(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;I)I

    .line 275
    return-void
.end method
