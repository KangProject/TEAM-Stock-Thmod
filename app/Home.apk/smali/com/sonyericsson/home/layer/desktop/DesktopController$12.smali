.class Lcom/sonyericsson/home/layer/desktop/DesktopController$12;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final hintRect:Landroid/graphics/Rect;

.field private latestPaneSwitchForward:Z

.field private mPaneSwitcher:Ljava/lang/Runnable;

.field private mSwitchTime:J

.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 1
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->hintRect:Landroid/graphics/Rect;

    .line 1442
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->latestPaneSwitchForward:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1434
    iput-wide p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mSwitchTime:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1434
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    return-void
.end method

.method private finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 4
    .parameter "dropListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1681
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1682
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1683
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1684
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1686
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 1688
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1689
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1692
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4602(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1693
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object v3, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1694
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1695
    return-void
.end method

.method private finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 8
    .parameter "view"
    .parameter "dropListener"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1654
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1655
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1656
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1657
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

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

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1665
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onItemDropped()V

    .line 1668
    :cond_0
    invoke-interface {p2, v7}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 1670
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1671
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1674
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4602(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1675
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object v6, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1676
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1677
    return-void
.end method

.method private switchPaneIfNeeded(I)Z
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1506
    const/4 v0, 0x0

    .line 1507
    .local v0, switchPane:Z
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1508
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->latestPaneSwitchForward:Z

    .line 1509
    const/4 v0, 0x1

    .line 1515
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 1516
    iget-wide v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mSwitchTime:J

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1517
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1518
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1519
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move v1, v5

    .line 1524
    :goto_1
    return v1

    .line 1510
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    .line 1511
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->latestPaneSwitchForward:Z

    .line 1512
    const/4 v0, 0x1

    goto :goto_0

    .line 1523
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v1, v3

    .line 1524
    goto :goto_1
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1701
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1702
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1703
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4602(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1704
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1706
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1707
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1708
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 17
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 1528
    const/4 v12, 0x1

    .line 1530
    .local v12, successful:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getHintType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4602(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1535
    const/4 v12, 0x0

    .line 1538
    :cond_0
    if-eqz v12, :cond_2

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    iget-object v13, v13, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v13, :cond_2

    .line 1541
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    .line 1543
    .local v5, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v5, :cond_4

    .line 1548
    instance-of v13, v5, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v13, :cond_1

    .line 1549
    new-instance v6, Lcom/sonyericsson/home/data/ActivityInfo;

    check-cast v5, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v5           #info:Lcom/sonyericsson/home/data/Info;
    invoke-direct {v6, v5}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .local v6, info:Lcom/sonyericsson/home/data/Info;
    move-object v5, v6

    .line 1551
    .end local v6           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v5       #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    new-instance v14, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v15

    invoke-direct {v14, v5, v15}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    iput-object v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1558
    .end local v5           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    :goto_0
    if-eqz v12, :cond_3

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getHintType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getItemAtHint()Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5102(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v7

    .line 1563
    .local v7, infoAtHint:Lcom/sonyericsson/home/data/Info;
    instance-of v13, v7, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v13, :cond_5

    .line 1565
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v8, v0

    .line 1566
    .local v8, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    iget-object v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 1572
    invoke-virtual {v8}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    new-instance v14, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v14}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getPositionOfItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1645
    .end local v7           #infoAtHint:Lcom/sonyericsson/home/data/Info;
    .end local v8           #infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    :cond_3
    :goto_1
    if-eqz v12, :cond_9

    .line 1646
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 1650
    :goto_2
    return-void

    .line 1553
    .restart local v5       #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1579
    .end local v5           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v7       #infoAtHint:Lcom/sonyericsson/home/data/Info;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5202(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v13

    new-instance v14, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V

    goto :goto_2

    .line 1608
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 1613
    .end local v7           #infoAtHint:Lcom/sonyericsson/home/data/Info;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    iget-object v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItemAtHint(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v9

    .line 1616
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    iget-object v13, v13, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v13

    instance-of v13, v13, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v13, :cond_8

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    iget-object v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {v13, v5}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v11

    .line 1619
    .local v11, root:Landroid/view/View;
    if-eqz v11, :cond_8

    instance-of v13, v11, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v13, :cond_8

    check-cast v11, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    .end local v11           #root:Landroid/view/View;
    invoke-virtual {v11}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getWidgetType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1621
    const/16 p2, 0x0

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1628
    :cond_8
    if-eqz p2, :cond_3

    .line 1631
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1632
    .local v10, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v14

    iget v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    invoke-virtual {v13, v14}, Lcom/sonyericsson/paneview/PaneView;->getPaneAbsoluteOffset(I)I

    move-result v13

    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iget v14, v10, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p2

    move v1, v13

    move v2, v14

    move-wide v3, v15

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 1635
    invoke-static {v10}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->setLatestAddedPosition(I)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1648
    .end local v9           #position:I
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    goto/16 :goto_2
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 6
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v5, 0x0

    .line 1457
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4602(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mSwitchTime:J

    .line 1462
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1463
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1467
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4700(Lcom/sonyericsson/home/layer/desktop/DesktopController;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1468
    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->switchPaneIfNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1469
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1477
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 1480
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->hintRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1481
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->hintRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1485
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->hintRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/grid/Grid;->calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z

    .line 1486
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 1488
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1491
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addHint(Lcom/sonyericsson/home/data/Info;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1495
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->setHint(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1497
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1500
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1502
    const/4 v1, 0x1

    return v1

    .line 1472
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1473
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    goto/16 :goto_0
.end method
