.class Lcom/sonyericsson/home/HomeActivity$13;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createTrashcan()V
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
    .line 1628
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1636
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->getTrashInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 1637
    .local v0, trashInfo:Lcom/sonyericsson/home/data/Info;
    if-eqz v0, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 1641
    .end local v0           #trashInfo:Lcom/sonyericsson/home/data/Info;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1000(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1642
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1643
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1644
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1648
    :cond_2
    return-void
.end method

.method public onDrop(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 2
    .parameter "info"
    .parameter "dropListener"

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onDeleteDrop(Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 1632
    return-void
.end method
