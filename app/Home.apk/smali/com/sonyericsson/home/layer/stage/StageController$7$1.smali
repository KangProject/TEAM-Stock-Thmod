.class Lcom/sonyericsson/home/layer/stage/StageController$7$1;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/stage/StageController$7;->drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

.field final synthetic val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/stage/StageController$7;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController$7;->access$3200(Lcom/sonyericsson/home/layer/stage/StageController$7;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$3002(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 534
    return-void
.end method

.method public onConfirmed(Ljava/lang/String;I)V
    .locals 4
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 519
    new-instance v0, Lcom/sonyericsson/home/data/InfoGroup;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    .line 521
    .local v0, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2900(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Z

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2900(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItemAtHint(Lcom/sonyericsson/home/data/Info;)I

    .line 527
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/layer/stage/StageController$7;->access$3100(Lcom/sonyericsson/home/layer/stage/StageController$7;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$7$1;->this$1:Lcom/sonyericsson/home/layer/stage/StageController$7;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/stage/StageController$7;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$3002(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 529
    return-void
.end method
