.class Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1622
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/transfer/TransferHandler;->isInTransferMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/transfer/TransferHandler;->isThisViewInTransfer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 1626
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToNextPane()Z

    .line 1631
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->access$4702(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;J)J

    .line 1632
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1634
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1639
    :cond_1
    return-void

    .line 1627
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$10;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPreviousPane()Z

    goto :goto_0
.end method
