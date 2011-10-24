.class Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;
.super Ljava/lang/Object;
.source "CornerButtonsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

.field final synthetic val$root:Lcom/sonyericsson/storage/Root;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;Lcom/sonyericsson/storage/Root;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->val$root:Lcom/sonyericsson/storage/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, childNodes:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/storage/Node;>;"
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->val$root:Lcom/sonyericsson/storage/Root;

    if-eqz v5, :cond_0

    .line 512
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->val$root:Lcom/sonyericsson/storage/Root;

    const-class v6, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/storage/Root;->getChildren(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 515
    :cond_0
    const/4 v4, 0x0

    .line 517
    .local v4, modelChanged:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 518
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v5, v0, v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$1000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 519
    .local v3, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-nez v3, :cond_1

    .line 521
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v5, v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$1100(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 522
    const/4 v4, 0x1

    .line 525
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$000(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .line 526
    .local v1, controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    invoke-virtual {v1, v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->setModel(Ljava/util/ArrayList;)V

    .line 528
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getModel()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v7, v7, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$100(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sonyericsson/home/data/SyncHelper;->sync(Lcom/sonyericsson/home/data/SyncHelper$Syncable;Ljava/util/Collection;Lcom/sonyericsson/home/resourceload/PackageLoader;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 531
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getModel()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->preCacheShortcuts(Ljava/util/Collection;)V

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v1           #controller:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
    .end local v3           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$1202(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Z)Z

    .line 535
    if-eqz v4, :cond_3

    .line 536
    iget-object v5, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$200(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    .line 538
    :cond_3
    return-void
.end method
