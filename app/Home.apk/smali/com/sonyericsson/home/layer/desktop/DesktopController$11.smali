.class Lcom/sonyericsson/home/layer/desktop/DesktopController$11;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

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

    .line 1415
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ItemViewListener;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Lcom/sonyericsson/paneview/PaneView$ItemViewListener;->onViewRemoved(ILandroid/view/View;)V

    .line 1416
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1418
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1419
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferSource;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$11;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onItemPickedUp()V

    .line 1425
    :cond_0
    return v3
.end method
