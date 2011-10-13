.class Lcom/sonyericsson/home/layer/desktop/DesktopController$13;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


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
    .line 1711
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 7
    .parameter "view"
    .parameter "renderer"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1714
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->isHinting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addHint(Lcom/sonyericsson/home/data/Info;)I

    .line 1717
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->setHint(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    .line 1718
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItemAtHint(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    .line 1719
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1720
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1721
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1722
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->indexOf(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v0

    .line 1723
    .local v0, position:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->setLatestAddedPosition(I)V

    .line 1726
    if-eqz p2, :cond_1

    .line 1728
    const-string v1, "reset_closest_vertex"

    invoke-interface {p2, v1, v5, v5, v4}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1730
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->getPaneAbsoluteOffset(I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {p2, v1, v5, v2, v3}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 1732
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->indexOf(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1736
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object v4, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1737
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1739
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1741
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1743
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1744
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onItemDropped()V

    .line 1746
    :cond_2
    return-object v4
.end method

.method public onTransferCompleted()V
    .locals 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1751
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$13;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1752
    return-void
.end method
