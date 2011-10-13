.class Lcom/sonyericsson/home/layer/desktop/DesktopController$8;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1538
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

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
    .line 1541
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1542
    new-instance v1, Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/grid/GridRect;-><init>(Lcom/sonyericsson/grid/GridRect;)V

    .line 1543
    .local v1, sourceRect:Lcom/sonyericsson/grid/GridRect;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 1544
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v2, :cond_1

    .line 1548
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1549
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Ljava/lang/Object;)V

    .line 1555
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    .end local v1           #sourceRect:Lcom/sonyericsson/grid/GridRect;
    :cond_0
    :goto_0
    return-void

    .line 1552
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    .restart local v1       #sourceRect:Lcom/sonyericsson/grid/GridRect;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Ljava/lang/Object;)V

    goto :goto_0
.end method
