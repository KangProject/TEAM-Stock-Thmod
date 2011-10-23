.class Lcom/sonyericsson/home/HomeActivity$10;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createDesktop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

.field private exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

.field private stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1410
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    .line 1412
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    .line 1414
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    return-void
.end method


# virtual methods
.method public isHintAllowed(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;Lcom/sonyericsson/grid/GridSize;)Z
    .locals 5
    .parameter "info"
    .parameter "hintRect"
    .parameter "gridSize"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1537
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    .line 1559
    :goto_0
    return v1

    .line 1540
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    .line 1542
    goto :goto_0

    .line 1544
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getCornerVisibility()[Z

    move-result-object v0

    .line 1546
    .local v0, visibleCorners:[Z
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    if-nez v1, :cond_3

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    if-nez v1, :cond_3

    aget-boolean v1, v0, v4

    if-eqz v1, :cond_3

    move v1, v4

    .line 1547
    goto :goto_0

    .line 1548
    :cond_3
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_4

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    if-nez v1, :cond_4

    aget-boolean v1, v0, v3

    if-eqz v1, :cond_4

    move v1, v4

    .line 1550
    goto :goto_0

    .line 1551
    :cond_4
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    if-nez v1, :cond_5

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_5

    move v1, v4

    .line 1553
    goto :goto_0

    .line 1554
    :cond_5
    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->col:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->cols:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    iget v1, p2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->row:I

    iget v2, p3, Lcom/sonyericsson/grid/GridSize;->rows:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_6

    move v1, v4

    .line 1556
    goto :goto_0

    :cond_6
    move v1, v3

    .line 1559
    goto :goto_0
.end method

.method public isOverviewAllowed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1563
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1567
    :goto_0
    return v0

    .line 1565
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1567
    goto :goto_0
.end method

.method public onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1493
    .local v0, text:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$10$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/HomeActivity$10$1;-><init>(Lcom/sonyericsson/home/HomeActivity$10;Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;)V

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V

    .line 1505
    return-void
.end method

.method public onDesktopHidden(Z)V
    .locals 3
    .parameter "animating"

    .prologue
    const/4 v2, 0x0

    .line 1508
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->pause()V

    .line 1509
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->stop()V

    .line 1511
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1512
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1513
    const/16 v1, -0x3c

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1514
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setOriginRect(Landroid/graphics/Rect;)V

    .line 1515
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1517
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToPane(I)V

    .line 1518
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->open(Z)V

    .line 1520
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1521
    return-void
.end method

.method public onDesktopShown()V
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focus()V

    .line 1525
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1526
    return-void
.end method

.method public onFreeCornersChanged([Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerVisibility([Z)V

    .line 1534
    :cond_0
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Ljava/lang/Object;)V
    .locals 2
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1421
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1425
    :cond_0
    return-void
.end method

.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 1429
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 1417
    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/grid/GridLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1702(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/grid/GridLocation;)Lcom/sonyericsson/grid/GridLocation;

    .line 1433
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 1434
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 1435
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1436
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1437
    return-void
.end method

.method public onOverviewActivated()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1440
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->hide()V

    .line 1441
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 1443
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    return-void
.end method

.method public onOverviewAnimationsStarted()V
    .locals 2

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    if-eq v0, v1, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    if-eq v0, v1, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1456
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    if-eq v0, v1, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1461
    :cond_2
    return-void
.end method

.method public onOverviewAnimationsStopped()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1468
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1469
    return-void
.end method

.method public onOverviewDeactivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1472
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->show()V

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1478
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    return-void
.end method

.method public onOverviewProgress(F)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 1482
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3800(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    move v0, v2

    .line 1483
    .local v0, dx:F
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    if-eqz v2, :cond_1

    move v1, v3

    .line 1484
    .local v1, dy:F
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setTranslation(FF)V

    .line 1485
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setTranslation(FF)V

    .line 1486
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->setAlpha(F)V

    .line 1487
    return-void

    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_0
    move v0, v3

    .line 1482
    goto :goto_0

    .line 1483
    .restart local v0       #dx:F
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3800(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    move v1, v2

    goto :goto_1
.end method
