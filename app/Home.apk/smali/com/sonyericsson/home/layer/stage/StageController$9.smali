.class Lcom/sonyericsson/home/layer/stage/StageController$9;
.super Ljava/lang/Object;
.source "StageController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


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
    .line 495
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/layer/stage/StageController$9;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageController$9;->finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/layer/stage/StageController$9;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageController$9;->finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    return-void
.end method

.method private finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 3
    .parameter "dropListener"

    .prologue
    const/4 v2, 0x0

    .line 650
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->removeHint()V

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 656
    :cond_0
    invoke-interface {p1, v2}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(I)V

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 661
    return-void
.end method

.method private finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 8
    .parameter "view"
    .parameter "dropListener"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->removeHint()V

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$300(Lcom/sonyericsson/home/layer/stage/StageController;)V

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$500(Lcom/sonyericsson/home/layer/stage/StageController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 641
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(I)V

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iput-object v6, v0, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0, v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 646
    return-void
.end method

.method private isInfoTypeAllowed(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 498
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->removeHint()V

    .line 666
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 671
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 9
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    const/4 v7, 0x1

    .line 527
    const/4 v4, 0x1

    .line 529
    .local v4, successful:Z
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 531
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintType()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 533
    :cond_0
    const/4 v4, 0x0

    .line 536
    :cond_1
    if-eqz v4, :cond_4

    .line 537
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v5, v5, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    if-nez v5, :cond_3

    .line 539
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 541
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v0, :cond_3

    .line 546
    instance-of v5, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v5, :cond_2

    .line 547
    new-instance v1, Lcom/sonyericsson/home/data/ActivityInfo;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-direct {v1, v0}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .local v1, info:Lcom/sonyericsson/home/data/Info;
    move-object v0, v1

    .line 549
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iput-object v0, v5, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 553
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getHintType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 554
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getItemAtHint()Lcom/sonyericsson/home/data/Info;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2302(Lcom/sonyericsson/home/layer/stage/StageController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 556
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    instance-of v5, v5, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v5, :cond_5

    .line 558
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/InfoGroup;

    .line 559
    .local v2, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v6, v6, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v5, v2, v6}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 565
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 566
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 567
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v6}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    iget-object v7, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v8}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2300(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->positionOf(Lcom/sonyericsson/home/data/Info;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 569
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 622
    .end local v2           #infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    :cond_4
    :goto_0
    if-eqz v4, :cond_8

    .line 623
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/home/layer/stage/StageController$9;->finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 627
    :goto_1
    return-void

    .line 572
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 573
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5, v7}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2402(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    .line 574
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/home/layer/stage/StageController$9$1;

    invoke-direct {v6, p0, p1, p3}, Lcom/sonyericsson/home/layer/stage/StageController$9$1;-><init>(Lcom/sonyericsson/home/layer/stage/StageController$9;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V

    goto :goto_1

    .line 599
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 604
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v6, v6, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addItemAtHint(Lcom/sonyericsson/home/data/Info;)V

    .line 606
    if-eqz p2, :cond_4

    .line 609
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 610
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 611
    iget v5, v3, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 612
    invoke-static {v3}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 613
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v7, v7, Lcom/sonyericsson/home/layer/stage/StageController;->mPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->positionOf(Lcom/sonyericsson/home/data/Info;)I

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 617
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 625
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_8
    invoke-direct {p0, p3}, Lcom/sonyericsson/home/layer/stage/StageController$9;->finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    goto :goto_1
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 503
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v2

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1100(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v2

    if-ge p3, v2, :cond_1

    :cond_0
    move v2, v3

    .line 523
    :goto_0
    return v2

    .line 507
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 509
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/layer/stage/StageController$9;->isInfoTypeAllowed(Lcom/sonyericsson/home/data/Info;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1900(Lcom/sonyericsson/home/layer/stage/StageController;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->addHint(Lcom/sonyericsson/home/layer/HintInfo;)I

    move-result v0

    .line 512
    .local v0, hintPosition:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1600(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 514
    .end local v0           #hintPosition:I
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getIndexFromCoordinate(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2102(Lcom/sonyericsson/home/layer/stage/StageController;I)I

    .line 515
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$000(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageModelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2100(Lcom/sonyericsson/home/layer/stage/StageController;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->setHint(Lcom/sonyericsson/home/data/Info;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/stage/StageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->notifyDataSetChanged()V

    .line 518
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2, v4}, Lcom/sonyericsson/home/layer/stage/StageController;->access$1902(Lcom/sonyericsson/home/layer/stage/StageController;Z)Z

    :goto_1
    move v2, v4

    .line 523
    goto :goto_0

    .line 520
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageController$9;->this$0:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->access$2200(Lcom/sonyericsson/home/layer/stage/StageController;)Lcom/sonyericsson/home/layer/HintView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    goto :goto_1
.end method
