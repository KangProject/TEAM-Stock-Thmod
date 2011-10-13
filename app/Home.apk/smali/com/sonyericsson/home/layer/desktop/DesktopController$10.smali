.class Lcom/sonyericsson/home/layer/desktop/DesktopController$10;
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
    .line 1390
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

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
    .line 1393
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1394
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1395
    .local v1, sourceBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1396
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 1397
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v2, :cond_2

    .line 1401
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1402
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 1407
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1409
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    .end local v1           #sourceBounds:Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 1405
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    .restart local v1       #sourceBounds:Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
