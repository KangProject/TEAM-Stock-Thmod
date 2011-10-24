.class Lcom/sonyericsson/home/HomeActivity$15;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createCornerButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTransferMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->show()V

    .line 1834
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1835
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1836
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->show()V

    .line 1838
    :cond_0
    return-void
.end method

.method public onHintCancelled(I)V
    .locals 1
    .parameter "corner"

    .prologue
    .line 1856
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->show()V

    .line 1860
    :cond_1
    return-void
.end method

.method public onHinted(I)V
    .locals 1
    .parameter "corner"

    .prologue
    .line 1849
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 1853
    :cond_1
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "sourceBounds"

    .prologue
    const/4 v1, 0x4

    .line 1824
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1825
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1829
    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTransferMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$15;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 1846
    :cond_0
    return-void
.end method
