.class Lcom/sonyericsson/home/layer/desktop/DesktopController$10;
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

.field private mSwitchHintTime:J

.field private mSwitchTime:J

.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 1
    .parameter

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->hintRect:Landroid/graphics/Rect;

    .line 1590
    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4600(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->latestPaneSwitchForward:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1580
    iput-wide p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchTime:J

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1580
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1580
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    return-void
.end method

.method private finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 4
    .parameter "dropListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1865
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1866
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1867
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1870
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 1872
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1873
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1876
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1877
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object v3, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1878
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1879
    return-void
.end method

.method private finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 8
    .parameter "view"
    .parameter "dropListener"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1841
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1842
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)V

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1848
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

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

    .line 1852
    invoke-interface {p2, v7}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 1854
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1855
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1858
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object v6, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1860
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1861
    return-void
.end method

.method private switchPaneIfNeeded(I)Z
    .locals 9
    .parameter "x"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1675
    const/4 v2, 0x0

    .line 1676
    .local v2, switchPane:Z
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 1677
    iput-boolean v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->latestPaneSwitchForward:Z

    .line 1678
    const/4 v2, 0x1

    .line 1686
    :goto_0
    if-eqz v2, :cond_6

    .line 1687
    iget-wide v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchHintTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchHintTime:J

    .line 1691
    :cond_0
    iget-wide v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchHintTime:J

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v1, v8

    .line 1693
    .local v1, hasHintedSwitchLongEnough:Z
    :goto_1
    iget-wide v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchTime:J

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    move v0, v8

    .line 1698
    .local v0, hasEnoughTimePassedSinceLastSwitch:Z
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1699
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    move v3, v8

    .line 1709
    .end local v0           #hasEnoughTimePassedSinceLastSwitch:Z
    .end local v1           #hasHintedSwitchLongEnough:Z
    :goto_3
    return v3

    .line 1679
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_2

    .line 1680
    iput-boolean v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->latestPaneSwitchForward:Z

    .line 1681
    const/4 v2, 0x1

    goto :goto_0

    .line 1683
    :cond_2
    iput-wide v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchHintTime:J

    goto :goto_0

    :cond_3
    move v1, v7

    .line 1691
    goto :goto_1

    .restart local v1       #hasHintedSwitchLongEnough:Z
    :cond_4
    move v0, v7

    .line 1693
    goto :goto_2

    .line 1703
    .restart local v0       #hasEnoughTimePassedSinceLastSwitch:Z
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1704
    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v7

    .line 1705
    goto :goto_3

    .end local v0           #hasEnoughTimePassedSinceLastSwitch:Z
    .end local v1           #hasHintedSwitchLongEnough:Z
    :cond_6
    move v3, v7

    .line 1709
    goto :goto_3
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    .line 1883
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->removeHint()V

    .line 1884
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1885
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1887
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1888
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1890
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1891
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1892
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 17
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1715
    const/4 v12, 0x1

    .line 1717
    .local v12, successful:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getHintType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1722
    const/4 v12, 0x0

    .line 1725
    :cond_0
    if-eqz v12, :cond_2

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    iget-object v13, v13, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-nez v13, :cond_2

    .line 1728
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    .line 1730
    .local v5, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v5, :cond_4

    .line 1735
    instance-of v13, v5, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v13, :cond_1

    .line 1736
    new-instance v6, Lcom/sonyericsson/home/data/ActivityInfo;

    check-cast v5, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v5           #info:Lcom/sonyericsson/home/data/Info;
    invoke-direct {v6, v5}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .local v6, info:Lcom/sonyericsson/home/data/Info;
    move-object v5, v6

    .line 1738
    .end local v6           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v5       #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    new-instance v14, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v15

    invoke-direct {v14, v5, v15}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    iput-object v14, v13, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1745
    .end local v5           #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    :goto_0
    if-eqz v12, :cond_3

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getHintType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getItemAtHint()Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5702(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v7

    .line 1750
    .local v7, infoAtHint:Lcom/sonyericsson/home/data/Info;
    instance-of v13, v7, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v13, :cond_5

    .line 1752
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v8, v0

    .line 1753
    .local v8, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    iget-object v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 1759
    invoke-virtual {v8}, Lcom/sonyericsson/home/data/InfoGroup;->setNewUniqueID()V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    new-instance v14, Lcom/sonyericsson/animation/JumpRenderer;

    invoke-direct {v14}, Lcom/sonyericsson/animation/JumpRenderer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v15, v0

    invoke-static {v15}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getPositionOfItem(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1832
    .end local v7           #infoAtHint:Lcom/sonyericsson/home/data/Info;
    .end local v8           #infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    :cond_3
    :goto_1
    if-eqz v12, :cond_9

    .line 1833
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->finishDropSuccessful(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 1837
    :goto_2
    return-void

    .line 1740
    .restart local v5       #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1766
    .end local v5           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v7       #infoAtHint:Lcom/sonyericsson/home/data/Info;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v13

    new-instance v14, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$10;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V

    goto :goto_2

    .line 1795
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 1800
    .end local v7           #infoAtHint:Lcom/sonyericsson/home/data/Info;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    iget-object v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addItemAtHint(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)I

    move-result v9

    .line 1803
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    iget-object v13, v13, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v13

    instance-of v13, v13, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v13, :cond_8

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    iget-object v14, v14, Lcom/sonyericsson/home/layer/desktop/DesktopController;->mPickedUpItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {v13, v5}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v11

    .line 1806
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

    .line 1808
    const/16 p2, 0x0

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1815
    :cond_8
    if-eqz p2, :cond_3

    .line 1818
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1819
    .local v10, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v14, v0

    invoke-static {v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

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

    .line 1822
    invoke-static {v10}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->setLatestAddedPosition(I)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    invoke-static {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1835
    .end local v9           #position:I
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->finishDropFailure(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

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

    .line 1613
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-direct {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopRect;-><init>()V

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 1617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchTime:J

    .line 1618
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mSwitchHintTime:J

    .line 1621
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->mPaneSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1622
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4502(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/view/View;)Landroid/view/View;

    .line 1625
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5100(Lcom/sonyericsson/home/layer/desktop/DesktopController;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1626
    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->switchPaneIfNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1627
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1634
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 1637
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->hintRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1638
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->hintRect:Landroid/graphics/Rect;

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

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/paneview/PaneView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1643
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->hintRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/grid/Grid;->calculateGridRect(Landroid/graphics/Rect;Lcom/sonyericsson/grid/GridRect;)Z

    .line 1644
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 1646
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/GridSize;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->isHintAllowed(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;Lcom/sonyericsson/grid/GridSize;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1648
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1651
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sonyericsson/paneview/PaneView;->setSrcBlit(Z)V

    .line 1652
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/LayerRendererFactory;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/HintInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->addHint(Lcom/sonyericsson/home/data/Info;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 1657
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->setHint(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1659
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 1660
    instance-of v1, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_6

    .line 1662
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v2

    invoke-static {v1, v2, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;IZ)V

    .line 1666
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4902(Lcom/sonyericsson/home/layer/desktop/DesktopController;Z)Z

    .line 1668
    const/4 v1, 0x1

    .line 1671
    :goto_1
    return v1

    .line 1630
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$10;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    goto/16 :goto_0

    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_8
    move v1, v5

    .line 1671
    goto :goto_1
.end method
