.class Lcom/sonyericsson/home/layer/stage/StageController$6;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 415
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromPosition(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2302(Lcom/sonyericsson/home/layer/stage/StageController;I)I

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->remove(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2400(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/transfer/TransferSource;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$6;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onItemPickedUp()V

    .line 429
    :cond_0
    return v3
.end method
