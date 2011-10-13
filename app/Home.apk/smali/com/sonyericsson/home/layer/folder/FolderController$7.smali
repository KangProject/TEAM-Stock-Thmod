.class Lcom/sonyericsson/home/layer/folder/FolderController$7;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

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

    .line 607
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$3000(Lcom/sonyericsson/home/layer/folder/FolderController;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->add(ILcom/sonyericsson/home/data/Info;)V

    .line 608
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$1500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->stopHinting()V

    .line 611
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1, v6}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2902(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 612
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1, v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$3002(Lcom/sonyericsson/home/layer/folder/FolderController;I)I

    .line 613
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 615
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$3500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onItemDropFailed(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 619
    :cond_0
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 620
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 621
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 623
    if-eqz p2, :cond_1

    .line 625
    const-string v1, "reset_closest_vertex"

    invoke-interface {p2, v1, v5, v5, v6}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 627
    const-string v1, "set_alpha"

    invoke-interface {p2, v1, v5, v5, v6}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 630
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 632
    return-object p2
.end method

.method public onTransferCompleted()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$7;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2902(Lcom/sonyericsson/home/layer/folder/FolderController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 637
    return-void
.end method
